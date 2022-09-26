using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppDoctorBackend.Infrastructure.DomainModels;

namespace AppDoctorBackend.Infrastructure.SeedEntityConfigurations
{
    public class UserEntityConfiguration : IEntityTypeConfiguration<User>
    {
        public void Configure(EntityTypeBuilder<User> builder)
        {
            PasswordHasher<User> ph = new PasswordHasher<User>();

            var user1 = new User()
            {
                Id = "user1",
                UserName = "sstrahan0",
                NormalizedUserName = "SSTRAHAN0",
                SecurityStamp = "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2",
                ConcurrencyStamp = "cfc830af-302f-44b7-a973-805e6439b2ad",
                EmailConfirmed = true,
                FirstName = "Adam",
                LastName = "Parker",
                NamePrefix = "Dr",
                BirthDate = DateTime.Now.AddYears(-25),
                Address = "Budapest I. utca"

            };
            var user2 = new User()
            {
                Id = "user2",
                UserName = "ltippin1",
                NormalizedUserName = "LTIPPIN1",
                SecurityStamp = "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2",
                ConcurrencyStamp = "cfc830af-302f-44b7-a973-805e6439b2ad",
                EmailConfirmed = true,
                FirstName = "John",
                LastName = "Hollow",
                NamePrefix = "Dr",
                BirthDate = DateTime.Now.AddYears(-27),
                Address = "Budapest I. utca"
            };
            var user3 = new User()
            {
                Id = "user3",
                UserName = "blyptratt2",
                NormalizedUserName = "BLYPTRATT2",
                SecurityStamp = "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2",
                ConcurrencyStamp = "cfc830af-302f-44b7-a973-805e6439b2ad",
                EmailConfirmed = true,
                FirstName = "Kate",
                LastName = "Middleton",
                NamePrefix = "",
                BirthDate = DateTime.Now.AddYears(-22),
                Address = "Budapest I. utca"
            };
            var user4 = new User()
            {
                Id = "user4",
                UserName = "jmelior3",
                NormalizedUserName = "JMELIOR3",
                SecurityStamp = "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2",
                ConcurrencyStamp = "cfc830af-302f-44b7-a973-805e6439b2ad",
                EmailConfirmed = true,
                FirstName = "Gloria",
                LastName = "Namade",
                NamePrefix = "",
                BirthDate = DateTime.Now.AddYears(-55),
                Address = "Budapest VI. utca"
            };
            var user5 = new User()
            {
                Id = "user5",
                UserName = "tmaxworthy4",
                NormalizedUserName = "TMAXWORTHY4",
                SecurityStamp = "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2",
                ConcurrencyStamp = "cfc830af-302f-44b7-a973-805e6439b2ad",
                EmailConfirmed = true,
                FirstName = "Blake",
                LastName = "Riverdome",
                NamePrefix = "",
                BirthDate = DateTime.Now.AddYears(-33),
                Address = "Budapest II. utca"
            };
            var user6 = new User()
            {
                Id = "user6",
                UserName = "hcheverell5",
                NormalizedUserName = "HCHEVERELL5",
                SecurityStamp = "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2",
                ConcurrencyStamp = "cfc830af-302f-44b7-a973-805e6439b2ad",
                EmailConfirmed = true,
                FirstName = "Olivia",
                LastName = "Woodburry",
                NamePrefix = "",
                BirthDate = DateTime.Now.AddYears(-22),
                Address = "Budapest XI. utca"
            };
            var user7 = new User()
            {
                Id = "user7",
                UserName = "gboskell6",
                NormalizedUserName = "GBOSKELL6",
                SecurityStamp = "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2",
                ConcurrencyStamp = "cfc830af-302f-44b7-a973-805e6439b2ad",
                EmailConfirmed = true,
                FirstName = "Carl",
                LastName = "Scottom",
                NamePrefix = "",
                BirthDate = DateTime.Now.AddYears(-29),
                Address = "Budapest V. utca"
            };
            var user8 = new User()
            {
                Id = "user8",
                UserName = "erylett7",
                NormalizedUserName = "ERYLETT7",
                SecurityStamp = "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2",
                ConcurrencyStamp = "cfc830af-302f-44b7-a973-805e6439b2ad",
                EmailConfirmed = true,
                FirstName = "Ariel",
                LastName = "Summer",
                NamePrefix = "",
                BirthDate = DateTime.Now.AddYears(-27),
                Address = "Budapest VII. utca"
            };
            var user9 = new User()
            {
                Id = "user9",
                UserName = "kseely8",
                NormalizedUserName = "KSEELY8",
                SecurityStamp = "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2",
                ConcurrencyStamp = "cfc830af-302f-44b7-a973-805e6439b2ad",
                EmailConfirmed = true,
                FirstName = "Sophie",
                LastName = "Mundara",
                NamePrefix = "",
                BirthDate = DateTime.Now.AddYears(-26),
                Address = "Budapest III. utca"
            };
            var user10 = new User()
            {
                Id = "user10",
                UserName = "hfilinkov9",
                NormalizedUserName = "HFILINKOV9",
                SecurityStamp = "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2",
                ConcurrencyStamp = "cfc830af-302f-44b7-a973-805e6439b2ad",
                EmailConfirmed = true,
                FirstName = "Jill",
                LastName = "Muze",
                NamePrefix = "",
                BirthDate = DateTime.Now.AddYears(-29),
                Address = "Budapest I. utca"
            };

            user1.PasswordHash = ph.HashPassword(user1, "asd123ASD?");
            user2.PasswordHash = ph.HashPassword(user2, "asd123ASD?");
            user3.PasswordHash = ph.HashPassword(user3, "asd123ASD?");
            user4.PasswordHash = ph.HashPassword(user4, "asd123ASD?");
            user5.PasswordHash = ph.HashPassword(user5, "asd123ASD?");
            user6.PasswordHash = ph.HashPassword(user6, "asd123ASD?");
            user7.PasswordHash = ph.HashPassword(user7, "asd123ASD?");
            user8.PasswordHash = ph.HashPassword(user8, "asd123ASD?");
            user9.PasswordHash = ph.HashPassword(user9, "asd123ASD?");
            user10.PasswordHash = ph.HashPassword(user10, "asd123ASD?");

            builder.HasData(
                user1, user2, user3, user4, user5, user6, user7, user8, user9, user10
            );
        }
    }
}
