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

namespace AppDoctorBackend.ApplicationCore.Features.Receipt.Queries
{
    public static class GetAllReceiptByPatientIdQuery
    {
        public class Query : IRequest<List<ReceiptDto>>
        {
            public string PatientId { get; set; }
        }

        public class Handler : IRequestHandler<Query, List<ReceiptDto>>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public Task<List<ReceiptDto>> Handle(Query request, CancellationToken cancellationToken)
            {
                var receipts = _unitOfWork.ReceiptRepository
                    .Find(er => er.PatientId == request.PatientId)
                    .AsQueryable()
                    .Include(er => er.ReceiptMedicines)
                    .ProjectTo<ReceiptDto>(_mapper.ConfigurationProvider)
                    .ToList();

                return Task.FromResult(receipts);
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
