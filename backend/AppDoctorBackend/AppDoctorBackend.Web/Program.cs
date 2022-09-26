using AppDoctorBackend.Infrastructure;
using AppDoctorBackend.Infrastructure.DomainModels;
using AppDoctorBackend.Infrastructure.Extensions;
using AppDoctorBackend.Infrastructure.Repositories;
using AppDoctorBackend.Infrastructure.Repositories.Implementation;
using AppDoctorBackend.Infrastructure.Repositories.Interfaces;
using AppDoctorBackend.Infrastructure.Repositories.UOW;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace AppDoctorBackend.Web
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

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

            builder.Services.AddControllers();
            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseHttpsRedirection();

            app.UseAuthorization();


            app.MapControllers();

            app.Run();
        }
    }
}