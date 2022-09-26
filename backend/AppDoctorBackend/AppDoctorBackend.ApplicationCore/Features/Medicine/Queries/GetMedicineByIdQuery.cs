using AppDoctorBackend.ApplicationCore.Dto;
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

namespace AppDoctorBackend.ApplicationCore.Features.Medicine.Queries
{
    public static class GetMedicineByIdQuery
    {
        public class Query : IRequest<MedicineDetailsDto>
        {
            public int Id { get; set; }
        }

        public class Handler : IRequestHandler<Query, MedicineDetailsDto>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public Task<MedicineDetailsDto> Handle(Query request, CancellationToken cancellationToken)
            {
                var medicine = _unitOfWork.MedicineRepository
                    .Find(m => m.Id == request.Id)
                    .FirstOrDefault();

                if (medicine == null)
                {
                    throw new NullReferenceException();
                }

                return Task.FromResult(_mapper.Map<MedicineDetailsDto>(medicine));
            }
        }

        public class QueryValidator : AbstractValidator<Query>
        {
            public QueryValidator()
            {
                RuleFor(x => x.Id).NotNull().NotEmpty().WithMessage("The Id must have a value.");
            }
        }
    }
}
