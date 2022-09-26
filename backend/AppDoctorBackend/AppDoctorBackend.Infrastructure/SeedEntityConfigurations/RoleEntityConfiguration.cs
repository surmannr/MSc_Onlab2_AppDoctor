using AppDoctorBackend.Shared.Enums;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppDoctorBackend.Shared.Extensions;

namespace AppDoctorBackend.Infrastructure.SeedEntityConfigurations
{
    public class RoleEntityConfiguration : IEntityTypeConfiguration<IdentityRole>
    {
        public void Configure(EntityTypeBuilder<IdentityRole> builder)
        {
            builder.HasData(
                new IdentityRole()
                {
                    Name = Roles.Patient.GetDisplayName(),
                    NormalizedName = Roles.Patient.GetDisplayName().ToUpper(),
                    Id = Roles.Patient.GetDisplayName(),
                    ConcurrencyStamp = Guid.NewGuid().ToString()
                },
                new IdentityRole()
                {
                    Name = Roles.Doctor.GetDisplayName(),
                    NormalizedName = Roles.Doctor.GetDisplayName().ToUpper(),
                    Id = Roles.Doctor.GetDisplayName(),
                    ConcurrencyStamp = Guid.NewGuid().ToString()
                }
            );
        }
    }
}
