using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Shared.Enums
{
    [Flags]
    public enum Disease
    {
        Allergies       = 0,
        ColdsAndFlu     = 1 << 0,
        Conjunctivitis  = 1 << 1,
        Diarrhea        = 1 << 2,
        Headaches       = 1 << 3,
        Mononucleosis   = 1 << 4,
        StomachAches    = 1 << 5,
        Diabetes        = 1 << 6,
        Depression      = 1 << 7,
        Hemorrhoid      = 1 << 8,
        Lupus           = 1 << 9,
        Pneumonia       = 1 << 10,
        Fibromyalgia    = 1 << 11,
        Scabies         = 1 << 12,
        Chlamydia       = 1 << 13,
        Endometriosis   = 1 << 14,
        StrepThroat     = 1 << 15,
        Diverticulitis  = 1 << 16,
        Bronchitis      = 1 << 17,
        Fever           = 1 << 18
    }
}
