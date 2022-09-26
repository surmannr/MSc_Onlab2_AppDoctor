using AppDoctorBackend.Infrastructure.DomainModels;
using AppDoctorBackend.Shared.Enums;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.Infrastructure.SeedEntityConfigurations
{
    public class MedicineEntityConfiguration : IEntityTypeConfiguration<Medicine>
    {
        public void Configure(EntityTypeBuilder<Medicine> builder)
        {
            builder.HasData(
                new Medicine()
                {
                    Id = 1,
                    Name = "ALPHAMUNO",
                    InStock = 300,
                    DiseasesGoodFor = Disease.Diabetes | Disease.Depression | Disease.Headaches
                },
                new Medicine()
                {
                    Id = 2,
                    Name = "BETATEMO",
                    InStock = 230,
                    DiseasesGoodFor = Disease.StomachAches | Disease.Diverticulitis
                },
                new Medicine()
                {
                    Id = 3,
                    Name = "GAMMADIN",
                    InStock = 255,
                    DiseasesGoodFor = Disease.Allergies
                },
                new Medicine()
                {
                    Id = 4,
                    Name = "DELTATOM",
                    InStock = 320,
                    DiseasesGoodFor = Disease.Conjunctivitis | Disease.StrepThroat | Disease.Chlamydia
                },
                new Medicine()
                {
                    Id = 5,
                    Name = "EPSICOMMA",
                    InStock = 265,
                    DiseasesGoodFor = Disease.Bronchitis | Disease.ColdsAndFlu
                },
                new Medicine()
                {
                    Id = 6,
                    Name = "ZETARA",
                    InStock = 294,
                    DiseasesGoodFor = Disease.Fever
                },
                new Medicine()
                {
                    Id = 7,
                    Name = "XEMORPH",
                    InStock = 300,
                    DiseasesGoodFor = Disease.StrepThroat | Disease.ColdsAndFlu | Disease.Fever
                },
                new Medicine()
                {
                    Id = 8,
                    Name = "IKSZEM",
                    InStock = 230,
                    DiseasesGoodFor = Disease.Depression | Disease.Allergies
                },
                new Medicine()
                {
                    Id = 9,
                    Name = "GIMMADON",
                    InStock = 255,
                    DiseasesGoodFor = Disease.Hemorrhoid
                },
                new Medicine()
                {
                    Id = 10,
                    Name = "REMADDIN",
                    InStock = 320,
                    DiseasesGoodFor = Disease.Mononucleosis | Disease.Scabies | Disease.Endometriosis
                },
                new Medicine()
                {
                    Id = 11,
                    Name = "LUMPA",
                    InStock = 265,
                    DiseasesGoodFor = Disease.Lupus | Disease.Fibromyalgia
                },
                new Medicine()
                {
                    Id = 12,
                    Name = "JOTIRSO",
                    InStock = 294,
                    DiseasesGoodFor = Disease.Pneumonia
                }
            );
        }
    }
}
