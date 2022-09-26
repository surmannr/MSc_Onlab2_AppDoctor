using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.Infrastructure.Repositories.UOW;
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

namespace AppDoctorBackend.ApplicationCore.Features.Referral.Queries
{
    public static class GetAllReferralByPatientIdQuery
    {
        public class Query : IRequest<List<ReferralDto>>
        {
            public string PatientId { get; set; }
        }

        public class Handler : IRequestHandler<Query, List<ReferralDto>>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public Task<List<ReferralDto>> Handle(Query request, CancellationToken cancellationToken)
            {
                var referrals = _unitOfWork.ReferralRepository
                    .Find(er => er.PatientId == request.PatientId)
                    .AsQueryable()
                    .Include(er => er.ExaminationReservation)
                    .ProjectTo<ReferralDto>(_mapper.ConfigurationProvider)
                    .ToList();

                return Task.FromResult(referrals);
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
