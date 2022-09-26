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
    public class ReceiptEntityConfiguration : IEntityTypeConfiguration<Receipt>
    {
        public void Configure(EntityTypeBuilder<Receipt> builder)
        {
            builder.HasData(
                new Receipt()
                {
                    Id = Guid.Parse("4a08aa1f-1b57-417f-8be5-4cc22576c0fc"),
                    Date = DateTime.Now.AddDays(7),
                    DoctorId = "user1",
                    PatientId = "user4"
                },
                 new Receipt()
                 {
                     Id = Guid.Parse("4ed81b96-cec6-417b-93c3-396f73624835"),
                     Date = DateTime.Now.AddDays(3),
                     DoctorId = "user2",
                     PatientId = "user8"
                 },
                  new Receipt()
                  {
                      Id = Guid.Parse("2141e417-4a7a-4620-be37-3e6f354d9187"),
                      Date = DateTime.Now.AddDays(-10),
                      DoctorId = "user1",
                      PatientId = "user5"
                  }
            );
        }
    }
}
