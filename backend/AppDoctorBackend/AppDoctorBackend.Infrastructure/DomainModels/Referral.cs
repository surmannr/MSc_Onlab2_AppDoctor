using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.DomainModels
{
    public class Referral : BaseService<string, User, Guid>
    {
        [ForeignKey("ExaminationReservation")]
        public Guid ExaminationReservationId { get; set; }
        public ExaminationReservation ExaminationReservation { get; set; }

        public string Diagnoses { get; set; }
    }
}
