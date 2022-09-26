using AppDoctorBackend.Infrastructure.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.Repositories.UOW
{
    public interface IUnitOfWork : IDisposable
    {
        IExaminationReservationRepository ExaminationReservationRepository { get; }
        IMedicineRepository MedicineRepository { get; }
        IReceiptRepository ReceiptRepository { get; }
        IReferralRepository ReferralRepository { get; }
        IUserRepository UserRepository { get; }
        Task<int> SaveChangesAsync();
    }
}
