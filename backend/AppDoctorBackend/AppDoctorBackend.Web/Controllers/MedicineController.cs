using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.ApplicationCore.Features.Medicine.Commands;
using AppDoctorBackend.ApplicationCore.Features.Medicine.Queries;
using AppDoctorBackend.Shared.Enums;
using AppDoctorBackend.Shared.Extensions;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AppDoctorBackend.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MedicineController : ControllerBase
    {
        private readonly IMediator mediator;

        public MedicineController(IMediator mediator)
        {
            this.mediator = mediator;
        }

        [HttpGet]
        public async Task<List<MedicinePreviewDto>> GetAllMedicines()
        {
            var query = new GetAllMedicinesQuery.Query();
            return await mediator.Send(query);
        }

        [HttpGet]
        [Route("{id}")]
        public async Task<MedicineDetailsDto> GetMedicineById(int id)
        {
            var query = new GetMedicineByIdQuery.Query()
            {
                Id = id
            };
            return await mediator.Send(query);
        }

        [HttpGet]
        [Route("diseases")]
        public List<string> GetDiseasesList()
        {
            var disease = Enum.GetValues<Disease>().Select(e => e.GetDisplayName()).ToList();
            return disease;
        }

        [HttpPost]
        [Route("new")]
        public async Task<bool> SaveMeicine([FromBody] SendMedicineDto sendMedicine)
        {
            var query = new SaveMedicineCommand.Command()
            {
                SendMedicine = sendMedicine
            };
            return await mediator.Send(query);
        }
    }
}
