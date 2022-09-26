using AppDoctorBackend.Infrastructure.DomainModels;
using AppDoctorBackend.Infrastructure.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.Repositories.Implementation
{
    public class ReceiptRepository : BaseRepository<Receipt, Guid>, IReceiptRepository
    {
        public ReceiptRepository(AppDoctorDbContext dbContext) : base(dbContext)
        {

        }
    }
}
