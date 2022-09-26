using AppDoctorBackend.Infrastructure.DomainModels;
using AppDoctorBackend.Infrastructure.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.Repositories.Implementation
{
    public class ExaminationReservationRepository : BaseRepository<ExaminationReservation, Guid>, IExaminationReservationRepository
    {
        public ExaminationReservationRepository(AppDoctorDbContext dbContext) : base(dbContext)
        {

        }
    }
}
