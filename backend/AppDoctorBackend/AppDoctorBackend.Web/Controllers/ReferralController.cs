using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.ApplicationCore.Features.Receipt.Commands;
using AppDoctorBackend.ApplicationCore.Features.Receipt.Queries;
using AppDoctorBackend.ApplicationCore.Features.Referral.Commands;
using AppDoctorBackend.ApplicationCore.Features.Referral.Queries;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AppDoctorBackend.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReferralController : ControllerBase
    {
        private readonly IMediator mediator;

        public ReferralController(IMediator mediator)
        {
            this.mediator = mediator;
        }

        [HttpGet]
        [Route("doctor/{id}")]
        public async Task<List<ReferralDto>> GetReferralByDoctorId(string id)
        {
            var query = new GetAllReferralByDoctorIdQuery.Query()
            {
                DoctorId = id
            };
            return await mediator.Send(query);
        }

        [HttpGet]
        [Route("patient/{id}")]
        public async Task<List<ReferralDto>> GetReferralByPatientId(string id)
        {
            var query = new GetAllReferralByPatientIdQuery.Query()
            {
                PatientId = id
            };
            return await mediator.Send(query);
        }

        [HttpGet]
        [Route("{id}")]
        public async Task<ReferralDto> GetReferralById(string id)
        {
            var query = new GetReferralByIdQuery.Query()
            {
                Id = Guid.Parse(id)
            };
            return await mediator.Send(query);
        }

        [HttpPost]
        [Route("new")]
        public async Task<bool> SaveReferral([FromBody] SendReferralDto sendReferral)
        {
            var query = new SaveReferralCommand.Command()
            {
                SendReferral = sendReferral
            };
            return await mediator.Send(query);
        }
    }
}
