using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace AppDoctorBackend.Shared.Enums
{
    public enum Roles
    {
        [Display(Name = "Páciens")]
        Patient = 0,

        [Display(Name = "Doktor")]
        Doctor = 1
    }
}
