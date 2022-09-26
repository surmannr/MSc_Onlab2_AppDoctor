using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.ApplicationCore.Extensions;
using AppDoctorBackend.Infrastructure.Repositories.UOW;
using AppDoctorBackend.Shared.Enums;
using AppDoctorBackend.Shared.Extensions;
using AutoMapper;
using FluentValidation;
using MediatR;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Features.User.Commands
{
    public static class SaveUserCommand
    {
        public class Command : ICommand<bool>
        {
            public SendUser SendUser { get; set; }
        }

        public class Handler : IRequestHandler<Command, bool>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            private readonly UserManager<Infrastructure.DomainModels.User> _userManager;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork, UserManager<Infrastructure.DomainModels.User> userManager)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
                _userManager = userManager;
            }


            public async Task<bool> Handle(Command request, CancellationToken cancellationToken)
            {
                var user = new Infrastructure.DomainModels.User()
                {
                    UserName = request.SendUser.LastName.ToLower() + "." + request.SendUser.FirstName.ToLower(),
                    Email = request.SendUser.Email,
                    Address = request.SendUser.Address,
                    FirstName = request.SendUser.FirstName,
                    LastName = request.SendUser.LastName,
                    BirthDate = request.SendUser.BirthDate,
                    EmailConfirmed = true,
                    IsDeleted = false,
                    NamePrefix = request.SendUser.NamePrefix
                };

                var result = await _userManager.CreateAsync(user, request.SendUser.Password);

                if (request.SendUser.IsDoctor)
                {
                    await _userManager.AddToRoleAsync(user, Roles.Doctor.GetDisplayName());
                } else
                {
                    await _userManager.AddToRoleAsync(user, Roles.Patient.GetDisplayName());
                }

                await _unitOfWork.SaveChangesAsync();

                return true;
            }
        }

        public class CommandValidator : AbstractValidator<Command>
        {
            public CommandValidator()
            {
                RuleFor(x => x.SendUser).SetValidator(new SendUserValidator());
            }

            public class SendUserValidator : AbstractValidator<SendUser>
            {
                public SendUserValidator()
                {
                    RuleFor(x => x.FirstName).NotNull().NotEmpty().WithMessage("The FirstName must have a value.");
                    RuleFor(x => x.Address).NotNull().NotEmpty().WithMessage("The Address must have a value.");
                    RuleFor(x => x.BirthDate).NotNull().NotEmpty().WithMessage("The BirthDate must have a value.");
                    RuleFor(x => x.LastName).NotNull().NotEmpty().WithMessage("The LastName must have a value.");
                }
            }
        }
    }
}
