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
    public static class GetAllReferralByDoctorIdQuery
    {
        public class Query : IRequest<List<ReferralDto>>
        {
            public string DoctorId { get; set; }
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
                var receipts = _unitOfWork.ReferralRepository
                    .Find(er => er.DoctorId == request.DoctorId)
                    .AsQueryable()
                    .Include(er => er.ExaminationReservation)
                    .ProjectTo<ReferralDto>(_mapper.ConfigurationProvider)
                    .ToList();

                return Task.FromResult(receipts);
            }
        }

        public class QueryValidator : AbstractValidator<Query>
        {
            public QueryValidator()
            {
                RuleFor(x => x.DoctorId).NotNull().WithMessage("The DoctorId must have a value.");
            }
        }
    }
}
