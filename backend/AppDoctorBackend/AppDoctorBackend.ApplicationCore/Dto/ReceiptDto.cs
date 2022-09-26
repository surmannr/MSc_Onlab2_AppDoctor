using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Dto
{
    public class ReceiptDto
    {
        public Guid Id { get; set; }
        public DateTime Date { get; set; }

        public string PatientFullName { get; set; }
        public string DoctorFullName { get; set; }

        public List<MedicineDto> Medicines { get; set; }
    }
}
