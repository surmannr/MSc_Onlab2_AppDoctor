using AppDoctorBackend.Infrastructure.DomainModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Dto
{
    public class PatientDetailsDto
    {
        public string Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string NamePrefix { get; set; }
        public string Address { get; set; }
        public DateTime BirthDate { get; set; }

        public ICollection<ReceiptDto> PatientsReceipts { get; set; }
        public ICollection<ReferralDto> PatientsReferrals { get; set; }
        public ICollection<ExaminationReservationDto> PatientsExaminationReservations { get; set; }
    }
}
