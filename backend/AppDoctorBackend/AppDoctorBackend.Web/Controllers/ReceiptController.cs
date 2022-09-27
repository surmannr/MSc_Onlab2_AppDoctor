using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.ApplicationCore.Features.ExaminationReservation.Commands;
using AppDoctorBackend.ApplicationCore.Features.ExaminationReservation.Queries;
using AppDoctorBackend.ApplicationCore.Features.Medicine.Queries;
using AppDoctorBackend.ApplicationCore.Features.Receipt.Commands;
using AppDoctorBackend.ApplicationCore.Features.Receipt.Queries;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AppDoctorBackend.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReceiptController : ControllerBase
    {
        private readonly IMediator mediator;

        public ReceiptController(IMediator mediator)
        {
            this.mediator = mediator;
        }

        [HttpGet]
        [Route("doctor/{id}")]
        public async Task<List<ReceiptDto>> GetReceiptByDoctorId(string id)
        {
            var query = new GetAllReceiptByDoctorIdQuery.Query()
            {
                DoctorId = id
            };
            return await mediator.Send(query);
        }

        [HttpGet]
        [Route("patient/{id}")]
        public async Task<List<ReceiptDto>> GetReceiptByPatientId(string id)
        {
            var query = new GetAllReceiptByPatientIdQuery.Query()
            {
                PatientId = id
            };
            return await mediator.Send(query);
        }

        [HttpGet]
        [Route("{id}")]
        public async Task<ReceiptDto> GetReceiptById(string id)
        {
            var query = new GetReceiptByIdQuery.Query()
            {
                Id = Guid.Parse(id)
            };
            return await mediator.Send(query);
        }

        [HttpPost]
        [Route("new")]
        public async Task<bool> SaveReceipt([FromBody] SendReceiptDto sendReceipt)
        {
            var query = new SaveReceiptCommand.Command()
            {
                SendReceipt = sendReceipt
            };
            return await mediator.Send(query);
        }
    }
}
