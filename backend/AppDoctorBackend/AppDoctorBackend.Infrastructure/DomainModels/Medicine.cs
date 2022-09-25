using AppDoctorBackend.Shared.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.DomainModels
{
    public class Medicine : BaseModel<int>
    {
        public string Name { get; set; }
        public int InStock { get; set; }

        // What kind of diseases is it good for?
        public Disease DiseasesGoodFor { get; set; }
    }
}
