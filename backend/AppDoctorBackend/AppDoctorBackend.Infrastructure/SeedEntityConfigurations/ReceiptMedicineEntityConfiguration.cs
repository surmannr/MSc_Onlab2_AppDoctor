using AppDoctorBackend.Infrastructure.DomainModels;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.SeedEntityConfigurations
{
    public class ReceiptMedicineEntityConfiguration : IEntityTypeConfiguration<ReceiptMedicine>
    {
        public void Configure(EntityTypeBuilder<ReceiptMedicine> builder)
        {
            builder.HasData(
                new ReceiptMedicine()
                {
                    MedicineId = 10,
                    ReceiptId = Guid.Parse("4a08aa1f-1b57-417f-8be5-4cc22576c0fc"),
                    Quantity = 2
                },
                new ReceiptMedicine()
                {
                    MedicineId = 5,
                    ReceiptId = Guid.Parse("4a08aa1f-1b57-417f-8be5-4cc22576c0fc"),
                    Quantity = 1
                },
                new ReceiptMedicine()
                {
                    MedicineId = 1,
                    ReceiptId = Guid.Parse("4ed81b96-cec6-417b-93c3-396f73624835"),
                    Quantity = 3
                },
                new ReceiptMedicine()
                {
                    MedicineId = 3,
                    ReceiptId = Guid.Parse("4ed81b96-cec6-417b-93c3-396f73624835"),
                    Quantity = 2
                },
                new ReceiptMedicine()
                {
                    MedicineId = 5,
                    ReceiptId = Guid.Parse("4ed81b96-cec6-417b-93c3-396f73624835"),
                    Quantity = 1
                },
                 new ReceiptMedicine()
                 {
                     MedicineId = 8,
                     ReceiptId = Guid.Parse("2141e417-4a7a-4620-be37-3e6f354d9187"),
                     Quantity = 10
                 }
            );
        }
    }
}
