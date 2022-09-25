using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.DomainModels
{
    public class Referral : BaseService<Guid, User, Guid>
    {
        public Guid ExaminationReservationId { get; set; }
        public ExaminationReservation ExaminationReservation { get; set; }

        public string Diagnoses { get; set; }
    }
}
