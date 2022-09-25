using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.DomainModels
{
    // Join table for Receipt and Medicine
    public class ReceiptMedicine
    {
        public int MedicineId { get; set; }
        public Medicine Medicine { get; set; }

        public Guid ReceiptId { get; set; }
        public Receipt Receipt { get; set; }

        public int Quantity { get; set; }
    }
}
