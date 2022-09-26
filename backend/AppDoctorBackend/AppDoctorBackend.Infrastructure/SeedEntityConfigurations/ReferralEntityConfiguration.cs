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
    public class ReferralEntityConfiguration : IEntityTypeConfiguration<Referral>
    {
        public void Configure(EntityTypeBuilder<Referral> builder)
        {
            builder.HasData(
                new Referral()
                {
                    Id = Guid.NewGuid(),
                    DoctorId = "user2",
                    PatientId = "user8",
                    ExaminationReservationId = Guid.Parse("af378505-14cb-4f49-1111-ba2c8fdef77d"),
                    Diagnoses = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat."
                }
            );
        }
    }
}
