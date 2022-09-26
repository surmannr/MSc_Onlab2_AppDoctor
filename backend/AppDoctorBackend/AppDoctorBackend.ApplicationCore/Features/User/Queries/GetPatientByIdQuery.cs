using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.Infrastructure.Repositories.UOW;
using AutoMapper;
using FluentValidation;
using MediatR;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Features.User.Queries
{
    public static class GetPatientByIdQuery
    {
        public class Query : IRequest<PatientDetailsDto>
        {
            public string PatientId { get; set; }
        }

        public class Handler : IRequestHandler<Query, PatientDetailsDto>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public Task<PatientDetailsDto> Handle(Query request, CancellationToken cancellationToken)
            {
                var patient = _unitOfWork.UserRepository
                    .Find(pat => pat.Id == request.PatientId)
                    .AsQueryable()
                    .Include(e => e.PatientsExaminationReservations)
                    .Include(e => e.PatientsReceipts)
                    .Include(e => e.PatientsReferrals)
                    .FirstOrDefault();

                if (patient == null)
                {
                    throw new NullReferenceException();
                }

                return Task.FromResult(_mapper.Map<PatientDetailsDto>(patient));
            }
        }

        public class QueryValidator : AbstractValidator<Query>
        {
            public QueryValidator()
            {
                RuleFor(x => x.PatientId).NotNull().WithMessage("The PatientId must have a value.");
            }
        }
    }
}
