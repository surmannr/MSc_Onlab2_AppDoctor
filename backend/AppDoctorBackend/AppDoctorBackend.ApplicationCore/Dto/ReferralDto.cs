using AppDoctorBackend.Infrastructure.DomainModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Dto
{
    public class ReferralDto
    {
        public Guid Id { get; set; }
        public Guid ExaminationReservationId { get; set; }
        public ExaminationReservationDto ExaminationReservation { get; set; }

        public string Diagnoses { get; set; }
        public DateTime ExaminationDate { get; set; }
    }
}
