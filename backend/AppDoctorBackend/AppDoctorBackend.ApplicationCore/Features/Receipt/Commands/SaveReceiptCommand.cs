using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.ApplicationCore.Extensions;
using AppDoctorBackend.Infrastructure.DomainModels;
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

namespace AppDoctorBackend.ApplicationCore.Features.Receipt.Commands
{
    public static class SaveReceiptCommand
    {
        public class Command : ICommand<bool>
        {
            public SendReceiptDto SendReceipt { get; set; }
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
                var doctor = _unitOfWork.UserRepository.GetById(request.SendReceipt.DoctorId);
                var patient = _unitOfWork.UserRepository.GetById(request.SendReceipt.PatientId);

                if (doctor == null || patient == null)
                {
                    throw new NullReferenceException();
                }

                var receipt = new Infrastructure.DomainModels.Receipt()
                {
                    Date = request.SendReceipt.Date,
                    DoctorId = doctor.Id,
                    PatientId = patient.Id,
                    IsDeleted = false
                };
                _unitOfWork.ReceiptRepository.Add(receipt);
                await _unitOfWork.SaveChangesAsync();

                List<Infrastructure.DomainModels.ReceiptMedicine> medicineList = new List<Infrastructure.DomainModels.ReceiptMedicine>();
                foreach(var medicine in request.SendReceipt.Medicines)
                {
                    var med = _unitOfWork.MedicineRepository.GetById(medicine.Id);

                    if (med == null)
                    {
                        throw new NullReferenceException();
                    }

                    medicineList.Add(new ReceiptMedicine()
                    {
                        IsDeleted = false,
                        MedicineId = medicine.Id,
                        ReceiptId = receipt.Id,
                        Quantity = medicine.Quantity
                    });
                }

                receipt.ReceiptMedicines = medicineList;
                await _unitOfWork.SaveChangesAsync();

                return true;
            }
        }

        public class CommandValidator : AbstractValidator<Command>
        {
            public CommandValidator()
            {
                RuleFor(x => x.SendReceipt).SetValidator(new SendReceiptValidator());
            }

            public class SendReceiptValidator : AbstractValidator<SendReceiptDto>
            {
                public SendReceiptValidator()
                {
                    RuleFor(x => x.DoctorId).NotNull().WithMessage("The DoctorId must have a value.");
                    RuleFor(x => x.PatientId).NotNull().WithMessage("The PatientId must have a value.");
                    RuleFor(x => x.Date).NotNull().WithMessage("The Date must have a value.");
                    RuleFor(x => x.Medicines).NotNull().NotEmpty().WithMessage("The Medicines should not be empty.");
                }
            }
        }
    }
}
