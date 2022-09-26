using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.Infrastructure.Repositories.UOW;
using AppDoctorBackend.Shared.Enums;
using AppDoctorBackend.Shared.Extensions;
using AutoMapper;
using AutoMapper.QueryableExtensions;
using FluentValidation;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Features.User.Queries
{
    public static class GetAllPatientsQuery
    {
        public class Query : IRequest<List<PatientDto>>
        {

        }

        public class Handler : IRequestHandler<Query, List<PatientDto>>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public Task<List<PatientDto>> Handle(Query request, CancellationToken cancellationToken)
            {
                var patients = _unitOfWork.UserRepository
                    .FindByRole(Roles.Patient.GetDisplayName())
                    .AsQueryable()
                    .ProjectTo<PatientDto>(_mapper.ConfigurationProvider)
                    .ToList();

                return Task.FromResult(patients);
            }
        }

        public class QueryValidator : AbstractValidator<Query>
        {
            public QueryValidator()
            {

            }
        }
    }
}
