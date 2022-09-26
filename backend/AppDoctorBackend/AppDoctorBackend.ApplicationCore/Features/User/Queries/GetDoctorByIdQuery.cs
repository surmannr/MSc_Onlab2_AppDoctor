using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.Infrastructure.DomainModels;
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
    public static class GetDoctorByIdQuery
    {
        public class Query : IRequest<DoctorDetailsDto>
        {
            public string DoctorId { get; set; }
        }

        public class Handler : IRequestHandler<Query, DoctorDetailsDto>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public Task<DoctorDetailsDto> Handle(Query request, CancellationToken cancellationToken)
            {
                var doctor = _unitOfWork.UserRepository
                    .Find(doc => doc.Id == request.DoctorId)
                    .AsQueryable()
                    .Include(e => e.DoctorsExaminationReservations)
                    .Include(e => e.DoctorsReceipts)
                    .Include(e => e.DoctorsReferrals)
                    .FirstOrDefault();

                if (doctor == null)
                {
                    throw new NullReferenceException();
                }

                return Task.FromResult(_mapper.Map<DoctorDetailsDto>(doctor));
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
