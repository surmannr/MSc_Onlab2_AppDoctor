using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.Infrastructure.Repositories.UOW;
using AppDoctorBackend.Shared.Enums;
using AppDoctorBackend.Shared.Extensions;
using AutoMapper;
using AutoMapper.QueryableExtensions;
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
    public static class GetAllDoctorsQuery
    {
        public class Query : IRequest<List<DoctorDto>>
        {

        }

        public class Handler : IRequestHandler<Query, List<DoctorDto>>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public Task<List<DoctorDto>> Handle(Query request, CancellationToken cancellationToken)
            {
                var doctors = _unitOfWork.UserRepository
                    .FindByRole(Roles.Doctor.GetDisplayName())
                    .AsQueryable()
                    .ProjectTo<DoctorDto>(_mapper.ConfigurationProvider)
                    .ToList();

                return Task.FromResult(doctors);
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
