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

namespace AppDoctorBackend.ApplicationCore.Features.Referral.Queries
{
    public static class GetReferralByIdQuery
    {
        public class Query : IRequest<ReferralDto>
        {
            public Guid Id { get; set; }
        }

        public class Handler : IRequestHandler<Query, ReferralDto>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public Task<ReferralDto> Handle(Query request, CancellationToken cancellationToken)
            {
                var referral = _unitOfWork.ReferralRepository
                    .Find(m => m.Id == request.Id)
                    .AsQueryable()
                    .Include(e => e.ExaminationReservation)
                    .FirstOrDefault();

                if (referral == null)
                {
                    throw new NullReferenceException();
                }

                return Task.FromResult(_mapper.Map<ReferralDto>(referral));
            }
        }

        public class QueryValidator : AbstractValidator<Query>
        {
            public QueryValidator()
            {
                RuleFor(x => x.Id).NotNull().WithMessage("The Id must have a value.");
            }
        }
    }
}
