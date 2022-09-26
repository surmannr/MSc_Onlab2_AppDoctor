using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppDoctorBackend.Infrastructure.DomainModels;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using AppDoctorBackend.Shared.Enums;
using System.Reflection.Emit;
using AppDoctorBackend.Infrastructure.SeedEntityConfigurations;

namespace AppDoctorBackend.Infrastructure.Extensions
{
    public static class DatabaseConfigurations
    {
        public static void ApplyConfigurationsInOrder(this ModelBuilder builder)
        {
            builder.ApplyConfiguration(new UserEntityConfiguration());
            builder.ApplyConfiguration(new RoleEntityConfiguration());
            builder.ApplyConfiguration(new UserRoleEntityConfiguration());
            builder.ApplyConfiguration(new MedicineEntityConfiguration());
            builder.ApplyConfiguration(new ExaminationReservationEntityConfiguration());
            builder.ApplyConfiguration(new ReferralEntityConfiguration());
            builder.ApplyConfiguration(new ReceiptEntityConfiguration());
            builder.ApplyConfiguration(new ReceiptMedicineEntityConfiguration());
        }

        public static EntityTypeBuilder<Medicine> MedicineConfiguration(this EntityTypeBuilder<Medicine> builder)
        {
            builder.HasQueryFilter(b => !b.IsDeleted);

            builder
                .Property(e => e.DiseasesGoodFor)
                .HasConversion(new EnumToNumberConverter<Disease, int>());

            return builder;
        }

        public static EntityTypeBuilder<ExaminationReservation> ExaminationReservationConfiguration(this EntityTypeBuilder<ExaminationReservation> builder)
        {
            builder.HasQueryFilter(b => !b.IsDeleted);

            builder
                .HasOne(e => e.Patient)
                .WithMany(e => e.PatientsExaminationReservations)
                .OnDelete(DeleteBehavior.NoAction);

            builder
                .HasOne(e => e.Doctor)
                .WithMany(e => e.DoctorsExaminationReservations)
                .OnDelete(DeleteBehavior.NoAction);

            return builder;
        }

        public static EntityTypeBuilder<Receipt> ReceiptConfiguration(this EntityTypeBuilder<Receipt> builder)
        {
            builder.HasQueryFilter(b => !b.IsDeleted);

            builder
                .HasOne(e => e.Patient)
                .WithMany(e => e.PatientsReceipts)
                .OnDelete(DeleteBehavior.NoAction);

            builder
                .HasOne(e => e.Doctor)
                .WithMany(e => e.DoctorsReceipts)
                .OnDelete(DeleteBehavior.NoAction);

            builder
                .HasMany(e => e.ReceiptMedicines)
                .WithOne(e => e.Receipt)
                .OnDelete(DeleteBehavior.NoAction);

            return builder;
        }

        public static EntityTypeBuilder<ReceiptMedicine> ReceiptMedicineConfiguration(this EntityTypeBuilder<ReceiptMedicine> builder)
        {
            builder.HasQueryFilter(b => !b.IsDeleted);

            builder.HasKey(e => new { e.ReceiptId, e.MedicineId });

            builder
                .HasOne(e => e.Medicine)
                .WithMany()
                .OnDelete(DeleteBehavior.NoAction);

            builder
                .HasOne(e => e.Receipt)
                .WithMany(e => e.ReceiptMedicines)
                .OnDelete(DeleteBehavior.NoAction);

            return builder;
        }

        public static EntityTypeBuilder<Referral> ReferralConfiguration(this EntityTypeBuilder<Referral> builder)
        {
            builder.HasQueryFilter(b => !b.IsDeleted);

            builder
                .HasOne(e => e.Patient)
                .WithMany(e => e.PatientsReferrals)
                .OnDelete(DeleteBehavior.NoAction);

            builder
                .HasOne(e => e.Doctor)
                .WithMany(e => e.DoctorsReferrals)
                .OnDelete(DeleteBehavior.NoAction);

            return builder;
        }

        public static EntityTypeBuilder<User> UserConfiguration(this EntityTypeBuilder<User> builder)
        {
            builder.HasQueryFilter(b => !b.IsDeleted);

            builder.HasMany(e => e.DoctorsReferrals)
                .WithOne(e => e.Doctor)
                .OnDelete(DeleteBehavior.NoAction);

            builder.HasMany(e => e.PatientsReferrals)
                .WithOne(e => e.Patient)
                .OnDelete(DeleteBehavior.NoAction);

            builder.HasMany(e => e.DoctorsExaminationReservations)
                .WithOne(e => e.Doctor)
                .OnDelete(DeleteBehavior.NoAction);

            builder.HasMany(e => e.PatientsExaminationReservations)
                .WithOne(e => e.Patient)
                .OnDelete(DeleteBehavior.NoAction);

            builder.HasMany(e => e.DoctorsReceipts)
                .WithOne(e => e.Doctor)
                .OnDelete(DeleteBehavior.NoAction);

            builder.HasMany(e => e.PatientsReceipts)
                .WithOne(e => e.Patient)
                .OnDelete(DeleteBehavior.NoAction);

            return builder;
        }
    }
}
