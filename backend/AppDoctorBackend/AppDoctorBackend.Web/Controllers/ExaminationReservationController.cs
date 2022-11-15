using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.ApplicationCore.Features.ExaminationReservation.Commands;
using AppDoctorBackend.ApplicationCore.Features.ExaminationReservation.Queries;
using AppDoctorBackend.ApplicationCore.Features.Medicine.Commands;
using AppDoctorBackend.ApplicationCore.Features.Medicine.Queries;
using AppDoctorBackend.Shared.Enums;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AppDoctorBackend.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ExaminationReservationController : ControllerBase
    {
        private readonly IMediator mediator;

        public ExaminationReservationController(IMediator mediator)
        {
            this.mediator = mediator;
        }

        [HttpGet]
        [Route("doctor/{id}")]
        public async Task<List<ExaminationReservationDto>> GetExaminationReservationByDoctorId(string id)
        {
            var query = new GetAllExaminationReservationByDoctorIdQuery.Query()
            {
                DoctorId = id
            };
            return await mediator.Send(query);
        }

        [HttpGet]
        [Route("patient/{id}")]
        public async Task<List<ExaminationReservationDto>> GetExaminationReservationByPatientId(string id)
        {
            var query = new GetAllExaminationReservationByPatientIdQuery.Query()
            {
                PatientId = id
            };
            return await mediator.Send(query);
        }

        [HttpPost]
        [Route("new")]
        public async Task<bool> SaveExaminationReservation([FromBody] SendExaminationReservationDto sendExaminationReservation)
        {
            var query = new SaveExaminationReservationCommand.Command()
            {
                SendExaminationReservation = sendExaminationReservation
            };
            return await mediator.Send(query);
        }

        [HttpPost]
        [Route("accept/{id}")]
        public async Task<bool> AcceptExaminationReservation(string id, [FromQuery] bool acceptExaminationReservation)
        {
            var query = new AcceptExaminationReservationCommand.Command()
            {
                isAccepted = acceptExaminationReservation,
                ExaminationReservationId = Guid.Parse(id),
            };
            return await mediator.Send(query);
        }

        [HttpPost]
        [Route("resolve/{id}")]
        public async Task<bool> ResolveExaminationReservation(string id, [FromQuery] bool resolveExaminationReservation)
        {
            var query = new ResolveExaminationReservationCommand.Command()
            {
                IsResolved = resolveExaminationReservation,
                ExaminationReservationId = Guid.Parse(id),
            };
            return await mediator.Send(query);
        }
    }
}
