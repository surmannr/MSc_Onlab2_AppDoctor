using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.DomainModels
{
    public class User : IdentityUser
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string NamePrefix { get; set; }
        public string Address { get; set; }
        public DateTime BirthDate { get; set; }

        // For Doctors
        public ICollection<Receipt> DoctorsReceipts { get; set; }
        public ICollection<Referral> DoctorsReferrals { get; set; }
        public ICollection<ExaminationReservation> DoctorsExaminationReservations { get; set; }
    }
}
