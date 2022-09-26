using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.ApplicationCore.Extensions;
using AppDoctorBackend.Infrastructure.Repositories.UOW;
using AutoMapper;
using FluentValidation;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Features.ExaminationReservation.Commands
{
    public static class SaveExaminationReservationCommand
    {
        public class Command : ICommand<bool>
        {
            public SendExaminationReservationDto SendExaminationReservation { get; set; }
        }

        public class Handler : IRequestHandler<Command, bool>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public async Task<bool> Handle(Command request, CancellationToken cancellationToken)
            {
                var doctor = _unitOfWork.UserRepository.GetById(request.SendExaminationReservation.DoctorId);
                var patient = _unitOfWork.UserRepository.GetById(request.SendExaminationReservation.PatientId);

                if (doctor == null || patient == null)
                {
                    throw new NullReferenceException();
                }

                _unitOfWork.ExaminationReservationRepository.Add(new Infrastructure.DomainModels.ExaminationReservation()
                {
                    IsAccepted = false,
                    IsResolved = false,
                    IsDeleted = false,
                    DateFrom = request.SendExaminationReservation.DateFrom,
                    DateTo = request.SendExaminationReservation.DateTo,
                    DoctorId = request.SendExaminationReservation.DoctorId,
                    PatientId = request.SendExaminationReservation.PatientId,
                    PatientProblem = request.SendExaminationReservation.PatientProblem
                });

                await _unitOfWork.SaveChangesAsync();

                return true;
            }
        }

        public class CommandValidator : AbstractValidator<Command>
        {
            public CommandValidator()
            {
                RuleFor(x => x.SendExaminationReservation).SetValidator(new SendExaminationReservationValidator());
            }

            public class SendExaminationReservationValidator : AbstractValidator<SendExaminationReservationDto>
            {
                public SendExaminationReservationValidator()
                {
                    RuleFor(x => x.DoctorId).NotNull().WithMessage("The DoctorId must have a value.");
                    RuleFor(x => x.PatientId).NotNull().WithMessage("The PatientId must have a value.");
                    RuleFor(x => x.DateFrom).NotNull().WithMessage("The DateFrom must have a value.");
                    RuleFor(x => x.DateTo).NotNull().WithMessage("The DateTo must have a value.");
                    RuleFor(x => x.PatientProblem).NotNull().NotEmpty().WithMessage("The PatientProblem must have a value.");
                }
            }
        }
    }
}
