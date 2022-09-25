using AppDoctorBackend.Infrastructure.DomainModels;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure
{
    public abstract class BaseService<T, K, L> : BaseModel<L>
    {
        [ForeignKey("Doctor")]
        public T DoctorId { get; set; }
        public K Doctor { get; set; }

        [ForeignKey("Patient")]
        public T PatientId { get; set; }
        public K Patient { get; set; }
    }
}
