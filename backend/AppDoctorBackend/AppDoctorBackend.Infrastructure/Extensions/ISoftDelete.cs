﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.Extensions
{
    public interface ISoftDelete
    {
        bool IsDeleted { get; set; }
        public DateTime? DeletedDate { get; set; }
    }
}
