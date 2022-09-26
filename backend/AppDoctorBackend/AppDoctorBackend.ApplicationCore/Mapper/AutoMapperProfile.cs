using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.Infrastructure.DomainModels;
using AppDoctorBackend.Shared.Enums;
using AppDoctorBackend.Shared.Extensions;
using AutoMapper;
using Microsoft.EntityFrameworkCore.Diagnostics;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Mapper
{
    public class AutoMapperProfile : Profile
    {
        public AutoMapperProfile()
        {
            CreateMap<User, DoctorDetailsDto>()
                .ForMember(userDto => userDto.DoctorReferrals, user => user.MapFrom(e => e.DoctorsReferrals))
                .ForMember(userDto => userDto.DoctorExaminationReservations, user => user.MapFrom(e => e.DoctorsExaminationReservations))
                .ForMember(userDto => userDto.DoctorReceipts, user => user.MapFrom(e => e.DoctorsReceipts));

            CreateMap<User, PatientDetailsDto>()
                .ForMember(userDto => userDto.PatientsReferrals, user => user.MapFrom(e => e.PatientsReferrals))
                .ForMember(userDto => userDto.PatientsExaminationReservations, user => user.MapFrom(e => e.PatientsExaminationReservations))
                .ForMember(userDto => userDto.PatientsReceipts, user => user.MapFrom(e => e.PatientsReceipts));

            CreateMap<User, DoctorDto>();
            CreateMap<User, PatientDto>();

            CreateMap<ExaminationReservation, ExaminationReservationDto>()
                .ForMember(erDto => erDto.DoctorFullName, er => er.MapFrom(e => $"{e.Doctor.NamePrefix} {e.Doctor.LastName} {e.Doctor.FirstName}"))
                .ForMember(erDto => erDto.PatientFullName, er => er.MapFrom(e => $"{e.Patient.NamePrefix} {e.Patient.LastName} {e.Patient.FirstName}"));

            CreateMap<Medicine, MedicineDetailsDto>()
                .ForMember(medDto => medDto.DiseasesGoodFor, med => med.MapFrom(e => DiseaseValues(e.DiseasesGoodFor)));
            CreateMap<Medicine, MedicineDto>();

            CreateMap<Receipt, ReceiptDto>()
                .ForMember(erDto => erDto.DoctorFullName, er => er.MapFrom(e => $"{e.Doctor.NamePrefix} {e.Doctor.LastName} {e.Doctor.FirstName}"))
                .ForMember(erDto => erDto.PatientFullName, er => er.MapFrom(e => $"{e.Patient.NamePrefix} {e.Patient.LastName} {e.Patient.FirstName}"));

            CreateMap<Referral, ReferralDto>()
                .ForMember(referralDto => referralDto.ExaminationReservation, referral => referral.MapFrom(e => e.ExaminationReservation));
        }

        private IEnumerable<string> DiseaseValues(Disease e)
        {
            foreach (Enum value in Enum.GetValues(e.GetType()))
                if (e.HasFlag(value))
                    yield return value.GetDisplayName();
        }
    }
}
