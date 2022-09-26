using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Extensions
{
    public interface IIdentityService
    {
        string GetCurrentUserId();
    }
}
