using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.DomainModels
{
    public class Receipt : BaseService<Guid, User, Guid>
    {
        public DateTime Date { get; set; }

        public ICollection<ReceiptMedicine> ReceiptMedicines { get; set; }
    }
}
