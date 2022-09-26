using AppDoctorBackend.Infrastructure.DomainModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.Repositories.Interfaces
{
    public interface IMedicineRepository : IBaseRepository<Medicine, int>
    {
    }
}
