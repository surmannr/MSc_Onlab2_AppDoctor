using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.Infrastructure.Repositories.UOW;
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

namespace AppDoctorBackend.ApplicationCore.Features.ExaminationReservation.Queries
{
    public static class GetAllExaminationReservationByDoctorIdQuery
    {
        public class Query : IRequest<List<ExaminationReservationDto>>
        {
            public string DoctorId { get; set; }
        }

        public class Handler : IRequestHandler<Query, List<ExaminationReservationDto>>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public Task<List<ExaminationReservationDto>> Handle(Query request, CancellationToken cancellationToken)
            {
                var examinationReservations = _unitOfWork.ExaminationReservationRepository
                    .Find(er => er.DoctorId == request.DoctorId)
                    .AsQueryable()
                    .ProjectTo<ExaminationReservationDto>(_mapper.ConfigurationProvider)
                    .ToList();

                return Task.FromResult(examinationReservations);
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
