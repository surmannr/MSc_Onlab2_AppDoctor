using AppDoctorBackend.ApplicationCore.Extensions;
using AppDoctorBackend.Infrastructure.DomainModels;
using FluentValidation;
using MediatR;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Authentication;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Features.User.Commands
{
    public static class LoginCommand
    {
        public class Command : ICommand<string>
        {
            public string UserName { get; set; }
            public string Password { get; set; }
        }

        public class Handler : IRequestHandler<Command, string>
        {
            private readonly SignInManager<Infrastructure.DomainModels.User> _signInManager;
            private readonly RoleManager<IdentityRole> _roleManager;
            public Handler(SignInManager<Infrastructure.DomainModels.User> signInManager, RoleManager<IdentityRole> roleManager)
            {
                _signInManager = signInManager;
                _roleManager = roleManager;
            }

            public async Task<string> Handle(Command request, CancellationToken cancellationToken)
            {
                var signInResult = await _signInManager.PasswordSignInAsync(request.UserName, request.Password, true, false);
                if (signInResult.Succeeded)
                {
                    var user = await _signInManager.UserManager.FindByNameAsync(request.UserName);
                    var roles = await _signInManager.UserManager.GetRolesAsync(user);
                    return user.Id + "|<>|" + roles.First(); 
                }
                else
                {
                    throw new AuthenticationException("Hiba a bejelentkezés során.");
                }
            }
        }

        public class CommandValidator : AbstractValidator<Command>
        {
            public CommandValidator()
            {

            }
        }
    }
}
