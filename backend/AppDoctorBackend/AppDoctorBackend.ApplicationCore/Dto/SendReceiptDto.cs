using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Dto
{
    public class SendReceiptDto
    {
        public DateTime Date { get; set; }

        public string PatientId { get; set; }
        public string DoctorId { get; set; }

        public List<MedicineDto> Medicines { get; set; }
    }
}
