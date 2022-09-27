using AppDoctorBackend.ApplicationCore.Extensions;
using AppDoctorBackend.ApplicationCore.Features.ExaminationReservation.Queries;
using AppDoctorBackend.ApplicationCore.Mapper;
using AppDoctorBackend.Infrastructure;
using AppDoctorBackend.Infrastructure.DomainModels;
using AppDoctorBackend.Infrastructure.Extensions;
using AppDoctorBackend.Infrastructure.Repositories;
using AppDoctorBackend.Infrastructure.Repositories.Implementation;
using AppDoctorBackend.Infrastructure.Repositories.Interfaces;
using AppDoctorBackend.Infrastructure.Repositories.UOW;
using AppDoctorBackend.Web.Extensions;
using Autofac;
using Autofac.Core;
using Autofac.Extensions.DependencyInjection;
using FluentValidation.AspNetCore;
using Hellang.Middleware.ProblemDetails;
using IdentityServer4.Configuration;
using MediatR;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using NSwag;
using NSwag.AspNetCore;
using NSwag.Generation.Processors.Security;
using System.IdentityModel.Tokens.Jwt;
using System.Reflection;

namespace AppDoctorBackend.Web
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            #region CORS policy
            builder.Services.AddCors(options =>
            {
                options.AddPolicy("CorsPolicy", builder =>
                    builder
                        .AllowAnyMethod()
                        .AllowAnyOrigin()
                        .AllowAnyHeader());
            });
            #endregion

            #region DatabaseConfiguration
            // Add services to the container.
            builder.Services.AddDbContext<AppDoctorDbContext>(options =>
                {
                    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"));
                    options.UseTriggers(triggerOptions => triggerOptions.AddTrigger<SoftDeleteTrigger>());
                }
            );

            builder.Services.AddDefaultIdentity<User>(options => options.SignIn.RequireConfirmedAccount = true)
                .AddRoles<IdentityRole>()
                .AddEntityFrameworkStores<AppDoctorDbContext>()
                .AddDefaultTokenProviders();

            builder.Services.Configure<IdentityOptions>(opts =>
            {
                opts.User.RequireUniqueEmail = true;
                opts.Password.RequiredLength = 8;

                opts.SignIn.RequireConfirmedEmail = true;
            });
            #endregion

            #region Repositories
            builder.Services.AddTransient(typeof(IBaseRepository<,>), typeof(BaseRepository<,>));
            builder.Services.AddTransient<IExaminationReservationRepository, ExaminationReservationRepository>();
            builder.Services.AddTransient<IMedicineRepository, MedicineRepository>();
            builder.Services.AddTransient<IReceiptRepository, ReceiptRepository>();
            builder.Services.AddTransient<IReferralRepository, ReferralRepository>();
            builder.Services.AddTransient<IUserRepository, UserRepository>();

            builder.Services.AddTransient<IUnitOfWork, UnitOfWork>();
            #endregion

            #region Automapper
            builder.Services.AddAutoMapper(typeof(AutoMapperProfile));
            #endregion

            #region Business logic services (CQRS)
            builder.Services.AddMediatR(typeof(GetAllExaminationReservationByDoctorIdQuery));
            builder.Services.AddTransient(typeof(IPipelineBehavior<,>), typeof(TransactionBehavior<,>));

            builder.Services.AddHttpContextAccessor();
            builder.Services.AddScoped<IIdentityService, IdentityService>();
            #endregion

            #region Autofac
            builder.Host.UseServiceProviderFactory(new AutofacServiceProviderFactory());
            builder.Host.ConfigureContainer<ContainerBuilder>(builder =>
            {
                builder.RegisterAssemblyTypes(Assembly.Load("AppDoctorBackend.ApplicationCore"))
                    .Where(x => x.Name.EndsWith("Validator"))
                    .AsImplementedInterfaces()
                    .InstancePerDependency();

            });

            #endregion

            #region IdentityServer
            builder.Services.AddIdentityServer(options =>
            {
                options.UserInteraction = new UserInteractionOptions()
                {
                    LogoutUrl = "/logout",
                    LoginUrl = "/login"
                };
                options.Authentication.CookieAuthenticationScheme = IdentityConstants.ApplicationScheme;
            })
            .AddInMemoryClients(IdentityConfiguration.Clients)
            .AddInMemoryIdentityResources(IdentityConfiguration.IdentityResources)
            .AddInMemoryApiResources(IdentityConfiguration.ApiResources)
            .AddInMemoryApiScopes(IdentityConfiguration.ApiScopes)
            .AddAspNetIdentity<User>()
            .AddDeveloperSigningCredential();

            JwtSecurityTokenHandler.DefaultInboundClaimTypeMap.Clear();
            builder.Services.AddAuthentication(options =>
                {
                    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                }
            ).AddJwtBearer(options =>
                {
                    options.Authority = builder.Configuration.GetValue<string>("Authentication:Authority");
                    options.Audience = builder.Configuration.GetValue<string>("Authentication:Audience");
                    options.RequireHttpsMetadata = false;
                }
            );

            builder.Services.AddAuthorization(options =>
                {
                    options.AddPolicy("api-openid", policy => policy
                        .RequireAuthenticatedUser()
                        .RequireClaim("scope", "AppDoctorBackend.all")
                        .AddAuthenticationSchemes(JwtBearerDefaults.AuthenticationScheme));

                    options.DefaultPolicy = options.GetPolicy("api-openid");
                }
            );
            #endregion

            #region Swagger
            builder.Services.AddSwaggerDocument(config =>
            {
                config.DocumentProcessors.Add(new SecurityDefinitionAppender("Basic",
                    new OpenApiSecurityScheme
                    {
                        Type = OpenApiSecuritySchemeType.Basic,
                        Name = "Authorization",
                        Description = "Copy 'Bearer ' + valid JWT token into field",
                        In = OpenApiSecurityApiKeyLocation.Header
                    }));
                config.PostProcess = document =>
                {
                    document.Info.Version = "AppDoctorBackend API v1";
                    document.Info.Title = "AppDoctorBackend API";
                    document.Info.Description = "BME MSc Önálló laboratórium 2 - Surmann Roland";
                    document.Info.TermsOfService = "None";
                    document.Info.Contact = new NSwag.OpenApiContact
                    {
                        Name = "Surmann Roland",
                        Email = "surmannroland@gmail.com",
                        Url = "https://www.linkedin.com/in/rolandsurmann/"
                    };
                    document.Info.License = new NSwag.OpenApiLicense
                    {
                        Name = "Use under LICX",
                        Url = "https://example.com/license"
                    };
                };
            });
            #endregion

            #region ProblemDetails
            builder.Services.AddProblemDetails(ConfigureProblemDetails);
            #endregion

            builder.Services.AddControllers();

            #region FluentValidation
            builder.Services.AddFluentValidationAutoValidation();
            builder.Services.AddFluentValidationClientsideAdapters();
            #endregion

            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            var app = builder.Build();

            app.UseCors("CorsPolicy");


            app.UseHttpsRedirection();

            app.UseOpenApi();
            app.UseSwaggerUi3(options =>
            {
                options.OAuth2Client = new OAuth2ClientSettings
                {
                    ClientId = "swagger",
                    ClientSecret = null,
                    AppName = "",
                    UsePkceWithAuthorizationCodeGrant = true
                };
            });

            app.UseRouting();

            app.UseIdentityServer();
            app.UseAuthentication();
            app.UseAuthorization();

            app.UseProblemDetails();

            app.MapControllers();

            app.MigrateDatabase<AppDoctorDbContext>().Run();
        }

        private static void ConfigureProblemDetails(ProblemDetailsOptions options)
        {
            options.IncludeExceptionDetails = (ctx, ex) => false;

            options.Map<NullReferenceException>(
              (ctx, ex) =>
              {
                  var pd = StatusCodeProblemDetails.Create(StatusCodes.Status404NotFound);
                  pd.Title = ex.Message;
                  return pd;
              });

            options.Map<Exception>(
              (ctx, ex) =>
              {
                  var pd = StatusCodeProblemDetails.Create(StatusCodes.Status500InternalServerError);
                  pd.Title = ex.Message;
                  return pd;
              });
        }
    }
}