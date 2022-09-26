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

namespace AppDoctorBackend.ApplicationCore.Features.Referral.Commands
{
    public static class SaveReferralCommand
    {
        public class Command : ICommand<bool>
        {
            public SendReferralDto SendReferral { get; set; }
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
                var examinationReservation = _unitOfWork.ExaminationReservationRepository.GetById(request.SendReferral.ExaminationReservationId);

                if (examinationReservation == null)
                {
                    throw new NullReferenceException();
                }

                _unitOfWork.ReferralRepository.Add(new Infrastructure.DomainModels.Referral()
                {
                    Diagnoses = request.SendReferral.Diagnoses,
                    ExaminationReservationId = request.SendReferral.ExaminationReservationId,
                    ExaminationDate = request.SendReferral.ExaminationDate,
                    IsDeleted = false,
                    DoctorId = examinationReservation.DoctorId,
                    PatientId = examinationReservation.PatientId,
                });

                await _unitOfWork.SaveChangesAsync();

                return true;
            }
        }

        public class CommandValidator : AbstractValidator<Command>
        {
            public CommandValidator()
            {
                RuleFor(x => x.SendReferral).SetValidator(new SendReferralValidator());
            }

            public class SendReferralValidator : AbstractValidator<SendReferralDto>
            {
                public SendReferralValidator()
                {
                    RuleFor(x => x.ExaminationReservationId).NotNull().WithMessage("The ExaminationReservationId must have a value.");
                    RuleFor(x => x.Diagnoses).NotNull().WithMessage("The Diagnoses must have a value.");
                    RuleFor(x => x.ExaminationDate).NotNull().WithMessage("The ExaminationDate must have a value.");
                }
            }
        }
    }
}
