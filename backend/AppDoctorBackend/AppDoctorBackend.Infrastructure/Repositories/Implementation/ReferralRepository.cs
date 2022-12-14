using AppDoctorBackend.Infrastructure.DomainModels;
using AppDoctorBackend.Infrastructure.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.Repositories.Implementation
{
    public class ReferralRepository : BaseRepository<Referral, Guid>, IReferralRepository
    {
        public ReferralRepository(AppDoctorDbContext dbContext) : base(dbContext)
        {

        }
    }
}
