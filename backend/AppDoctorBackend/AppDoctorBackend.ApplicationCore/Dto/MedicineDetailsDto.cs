using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Dto
{
    public class MedicineDetailsDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int InStock { get; set; }
        public List<string> DiseasesGoodFor { get; set; }
    }
}
