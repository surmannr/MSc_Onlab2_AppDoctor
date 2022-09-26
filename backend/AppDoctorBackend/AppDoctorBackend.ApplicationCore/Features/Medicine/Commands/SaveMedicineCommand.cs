using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.ApplicationCore.Extensions;
using AppDoctorBackend.Infrastructure.Repositories.UOW;
using AppDoctorBackend.Shared.Enums;
using AutoMapper;
using FluentValidation;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Features.Medicine.Commands
{
    public static class SaveMedicineCommand
    {
        public class Command : ICommand<bool>
        {
            public SendMedicineDto SendMedicine { get; set; }
        }

        public class Handler : IRequestHandler<Command, bool>
        {
            private readonly IMapper _mapper;
            private readonly IUnitOfWork _unitOfWork;
            public Handler(IMapper mapper, IUnitOfWork unitOfWork)
            {
                _mapper = mapper;
                _unitOfWork = unitOfWork;
            }

            public async Task<bool> Handle(Command request, CancellationToken cancellationToken)
            {
                var diseaseList = request.SendMedicine.DiseasesGoodFor
                    .Select(x => { Disease outenum; Enum.TryParse(x, out outenum); return outenum; })
                    .Aggregate((prev, next) => prev | next);

                _unitOfWork.MedicineRepository.Add(new Infrastructure.DomainModels.Medicine()
                {
                    InStock = request.SendMedicine.InStock,
                    Name = request.SendMedicine.Name,
                    DiseasesGoodFor = diseaseList,
                    IsDeleted = false
                });

                await _unitOfWork.SaveChangesAsync();

                return true;
            }
        }

        public class CommandValidator : AbstractValidator<Command>
        {
            public CommandValidator()
            {
                RuleFor(x => x.SendMedicine).SetValidator(new SendMedicineValidator());
            }

            public class SendMedicineValidator : AbstractValidator<SendMedicineDto>
            {
                public SendMedicineValidator()
                {
                    RuleFor(x => x.Name).NotNull().NotEmpty().WithMessage("Name must have a value.");
                    RuleFor(x => x.InStock).NotNull().NotEmpty().GreaterThan(0).WithMessage("InStock must have a value or it should be greater than 0.");
                    RuleFor(x => x.DiseasesGoodFor).NotNull().NotEmpty().WithMessage("DiseasesGoodFor should not be null.");
                }
            }
        }
    }
}
