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
    public class UserRoleEntityConfiguration : IEntityTypeConfiguration<IdentityUserRole<string>>
    {
        public void Configure(EntityTypeBuilder<IdentityUserRole<string>> builder)
        {
            builder.HasData(
                new IdentityUserRole<string>() { UserId = "user1", RoleId = Roles.Doctor.GetDisplayName() },
                new IdentityUserRole<string>() { UserId = "user2", RoleId = Roles.Doctor.GetDisplayName() },
                new IdentityUserRole<string>() { UserId = "user3", RoleId = Roles.Patient.GetDisplayName() },
                new IdentityUserRole<string>() { UserId = "user4", RoleId = Roles.Patient.GetDisplayName() },
                new IdentityUserRole<string>() { UserId = "user5", RoleId = Roles.Patient.GetDisplayName() },
                new IdentityUserRole<string>() { UserId = "user6", RoleId = Roles.Patient.GetDisplayName() },
                new IdentityUserRole<string>() { UserId = "user7", RoleId = Roles.Patient.GetDisplayName() },
                new IdentityUserRole<string>() { UserId = "user8", RoleId = Roles.Patient.GetDisplayName() },
                new IdentityUserRole<string>() { UserId = "user9", RoleId = Roles.Patient.GetDisplayName() },
                new IdentityUserRole<string>() { UserId = "user10", RoleId = Roles.Patient.GetDisplayName() }
            );
        }
    }
}
