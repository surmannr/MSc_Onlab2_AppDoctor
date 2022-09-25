using AppDoctorBackend.Infrastructure.Extensions;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.DomainModels
{
    public class User : IdentityUser, ISoftDelete
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string NamePrefix { get; set; }
        public string Address { get; set; }
        public DateTime BirthDate { get; set; }
        public bool IsDeleted { get; set; }
        public DateTime? DeletedDate { get; set; }

        // For Doctors
        public ICollection<Receipt> DoctorsReceipts { get; set; }
        public ICollection<Referral> DoctorsReferrals { get; set; }
        public ICollection<ExaminationReservation> DoctorsExaminationReservations { get; set; }

        // For Patients
        public ICollection<Receipt> PatientsReceipts { get; set; }
        public ICollection<Referral> PatientsReferrals { get; set; }
        public ICollection<ExaminationReservation> PatientsExaminationReservations { get; set; }
    }
}
