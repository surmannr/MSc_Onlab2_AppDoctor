using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure
{
    public abstract class BaseModel<T>
    {
        public T Id { get; set; }
        public bool IsDeleted { get; set; }
    }
}
