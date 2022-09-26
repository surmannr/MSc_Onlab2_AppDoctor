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
    public static class GetReceiptByIdQuery
    {
        public class Query : IRequest<ReceiptDto>
        {
            public Guid Id { get; set; }
        }

        public class Handler : IRequestHandler<Query, ReceiptDto>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public Task<ReceiptDto> Handle(Query request, CancellationToken cancellationToken)
            {
                var receipt = _unitOfWork.ReceiptRepository
                    .Find(er => er.Id == request.Id)
                    .AsQueryable()
                    .Include(er => er.ReceiptMedicines)
                    .ProjectTo<ReceiptDto>(_mapper.ConfigurationProvider)
                    .FirstOrDefault();

                if (receipt == null)
                {
                    throw new NullReferenceException();
                }

                return Task.FromResult(receipt);
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
