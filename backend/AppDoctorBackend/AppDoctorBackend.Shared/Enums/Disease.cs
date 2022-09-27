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
        Allergies       = 1 << 0,
        ColdsAndFlu     = 1 << 1,
        Conjunctivitis  = 1 << 2,
        Diarrhea        = 1 << 3,
        Headaches       = 1 << 4,
        Mononucleosis   = 1 << 5,
        StomachAches    = 1 << 6,
        Diabetes        = 1 << 7,
        Depression      = 1 << 8,
        Hemorrhoid      = 1 << 9,
        Lupus           = 1 << 10,
        Pneumonia       = 1 << 11,
        Fibromyalgia    = 1 << 12,
        Scabies         = 1 << 13,
        Chlamydia       = 1 << 14,
        Endometriosis   = 1 << 15,
        StrepThroat     = 1 << 16,
        Diverticulitis  = 1 << 17,
        Bronchitis      = 1 << 18,
        Fever           = 1 << 19
    }
}
