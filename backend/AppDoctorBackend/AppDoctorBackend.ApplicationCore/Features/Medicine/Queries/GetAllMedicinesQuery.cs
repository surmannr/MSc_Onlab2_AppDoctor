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

namespace AppDoctorBackend.ApplicationCore.Features.Medicine.Queries
{
    public static class GetAllMedicinesQuery
    {
        public class Query : IRequest<List<MedicinePreviewDto>>
        {

        }

        public class Handler : IRequestHandler<Query, List<MedicinePreviewDto>>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public Task<List<MedicinePreviewDto>> Handle(Query request, CancellationToken cancellationToken)
            {
                var medicines = _unitOfWork.MedicineRepository
                    .GetAll()
                    .AsQueryable()
                    .ProjectTo<MedicinePreviewDto>(_mapper.ConfigurationProvider)
                    .ToList();

                return Task.FromResult(medicines);
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
