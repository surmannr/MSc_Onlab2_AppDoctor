using AppDoctorBackend.Infrastructure.DomainModels;
using AppDoctorBackend.Infrastructure.Extensions;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure
{
    public class AppDoctorDbContext : IdentityDbContext<User>
    {
        public AppDoctorDbContext(DbContextOptions options) : base(options)
        { 
        }

        public DbSet<Medicine> Medicines { get; set; }
        public DbSet<ExaminationReservation> ExaminationReservations { get; set; }
        public DbSet<Receipt> Receipts { get; set; }
        public DbSet<ReceiptMedicine> ReceiptMedicines { get; set; }
        public DbSet<Referral> Referrals { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.Entity<Medicine>()
                .MedicineConfiguration();

            builder.Entity<ExaminationReservation>()
                .ExaminationReservationConfiguration();

            builder.Entity<Receipt>()
                .ReceiptConfiguration();

            builder.Entity<ReceiptMedicine>()
                .ReceiptMedicineConfiguration();

            builder.Entity<Referral>()
                .ReferralConfiguration();

            builder.Entity<User>()
                .UserConfiguration();
        }
    }
}
