using AppDoctorBackend.Infrastructure.Repositories.Implementation;
using AppDoctorBackend.Infrastructure.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.Repositories.UOW
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly AppDoctorDbContext _context;
        public UnitOfWork(AppDoctorDbContext context)
        {
            _context = context;

            ExaminationReservationRepository = new ExaminationReservationRepository(_context);
            MedicineRepository = new MedicineRepository(_context);
            ReceiptRepository = new ReceiptRepository(_context);
            ReferralRepository = new ReferralRepository(_context);
            UserRepository = new UserRepository(_context);
        }

        public IExaminationReservationRepository ExaminationReservationRepository { get; private set; }

        public IMedicineRepository MedicineRepository { get; private set; }

        public IReceiptRepository ReceiptRepository { get; private set; }

        public IReferralRepository ReferralRepository { get; private set; }

        public IUserRepository UserRepository { get; private set; }

        public void Dispose()
        {
            _context.Dispose();
        }

        public async Task<int> SaveChangesAsync()
        {
            return await _context.SaveChangesAsync();
        }
    }
}
