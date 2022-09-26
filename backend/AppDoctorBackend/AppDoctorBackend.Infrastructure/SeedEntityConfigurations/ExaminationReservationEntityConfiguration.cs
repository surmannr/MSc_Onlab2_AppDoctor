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
    public class ExaminationReservationEntityConfiguration : IEntityTypeConfiguration<ExaminationReservation>
    {
        public void Configure(EntityTypeBuilder<ExaminationReservation> builder)
        {
            builder.HasData(
                new ExaminationReservation()
                {
                    Id = Guid.NewGuid(),
                    DateFrom = DateTime.Now.AddDays(7),
                    DateTo = DateTime.Now.AddDays(7).AddHours(2),
                    DoctorId = "user1",
                    PatientId = "user4",
                    IsAccepted = true,
                    IsResolved = false,
                    PatientProblem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat."
                },
                 new ExaminationReservation()
                 {
                     Id = Guid.Parse("af378505-14cb-4f49-1111-ba2c8fdef77d"),
                     DateFrom = DateTime.Now.AddDays(-5),
                     DateTo = DateTime.Now.AddDays(-5).AddHours(3),
                     DoctorId = "user2",
                     PatientId = "user8",
                     IsAccepted = true,
                     IsResolved = true,
                     PatientProblem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat."
                 },
                 new ExaminationReservation()
                 {
                     Id = Guid.NewGuid(),
                     DateFrom = DateTime.Now.AddDays(14),
                     DateTo = DateTime.Now.AddDays(14).AddHours(1),
                     DoctorId = "user1",
                     PatientId = "user6",
                     IsAccepted = false,
                     IsResolved = false,
                     PatientProblem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat."
                 }
            );
        }
    }
}
