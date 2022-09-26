﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Dto
{
    public class SendExaminationReservationDto
    {
        public DateTime DateFrom { get; set; }
        public DateTime DateTo { get; set; }
        public bool IsAccepted { get; set; } = false;
        public string PatientProblem { get; set; }
        public bool IsResolved { get; set; } = false;

        public string DoctorId { get; set; }
        public string PatientId { get; set; }
    }
}
