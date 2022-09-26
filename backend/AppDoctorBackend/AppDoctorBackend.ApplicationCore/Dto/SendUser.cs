using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Dto
{
    public class SendUser
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string NamePrefix { get; set; }
        public string Address { get; set; }
        public DateTime BirthDate { get; set; }
        public bool IsDoctor { get; set; }
    }
}
