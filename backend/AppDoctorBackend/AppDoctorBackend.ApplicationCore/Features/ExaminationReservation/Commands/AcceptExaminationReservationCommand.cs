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
    public static class AcceptExaminationReservationCommand
    {
        public class Command : ICommand<bool>
        {
            public bool isAccepted { get; set; }
            public Guid ExaminationReservationId { get; set; }
        }

        public class Handler : IRequestHandler<Command, bool>
        {
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IUnitOfWork unitOfWork)
            {
                _unitOfWork = unitOfWork;
            }

            public async Task<bool> Handle(Command request, CancellationToken cancellationToken)
            {
                var examinationReservation = _unitOfWork.ExaminationReservationRepository
                    .GetById(request.ExaminationReservationId);

                examinationReservation.IsAccepted = request.isAccepted;

                await _unitOfWork.SaveChangesAsync();

                return true;
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
