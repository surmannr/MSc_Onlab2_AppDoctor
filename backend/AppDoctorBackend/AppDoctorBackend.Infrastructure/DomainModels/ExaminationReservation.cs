using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.DomainModels
{
    public class ExaminationReservation : BaseService<Guid, User, Guid>
    {
        public DateTime DateFrom { get; set; }
        public DateTime DateTo { get; set; }
        public bool IsAccepted { get; set; } = false;
        public string PatientProblem { get; set; }
        public bool IsResolved { get; set; } = false;
    }
}
