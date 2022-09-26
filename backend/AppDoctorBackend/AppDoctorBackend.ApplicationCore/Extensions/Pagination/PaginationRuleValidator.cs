using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDoctorBackend.ApplicationCore.Extensions.Pagination
{
    public class PaginationRuleValidator : AbstractValidator<PaginationData>
    {
        public PaginationRuleValidator()
        {
            When(x => x is not null, () => {
                RuleFor(x => x!.PageNumber)
                   .NotNull()
                   .GreaterThanOrEqualTo(1)
                   .WithMessage("Az oldalszám nem lehet kisebb 1-nél.");

                RuleFor(x => x!.PageSize)
                    .NotNull()
                    .GreaterThanOrEqualTo(0)
                    .WithMessage("Az oldalelemek száma nem lehet kisebb 0-nál.");
            }).Otherwise(() => {

            });
        }
    }
}
