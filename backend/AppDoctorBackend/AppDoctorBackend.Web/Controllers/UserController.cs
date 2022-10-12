using AppDoctorBackend.ApplicationCore.Dto;
using AppDoctorBackend.ApplicationCore.Features.Referral.Commands;
using AppDoctorBackend.ApplicationCore.Features.Referral.Queries;
using AppDoctorBackend.ApplicationCore.Features.User.Commands;
using AppDoctorBackend.ApplicationCore.Features.User.Queries;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AppDoctorBackend.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly IMediator mediator;

        public UserController(IMediator mediator)
        {
            this.mediator = mediator;
        }

        [HttpGet]
        [Route("doctor/{id}")]
        public async Task<DoctorDetailsDto> GetUserByDoctorId(string id)
        {
            var query = new GetDoctorByIdQuery.Query()
            {
                DoctorId = id
            };
            return await mediator.Send(query);
        }

        [HttpGet]
        [Route("patient/{id}")]
        public async Task<PatientDetailsDto> GetUserByPatientId(string id)
        {
            var query = new GetPatientByIdQuery.Query()
            {
                PatientId = id
            };
            return await mediator.Send(query);
        }

        [HttpGet]
        [Route("doctors")]
        public async Task<List<DoctorDto>> GetAllDoctors()
        {
            var query = new GetAllDoctorsQuery.Query();
            return await mediator.Send(query);
        }

        [HttpGet]
        [Route("patients")]
        public async Task<List<PatientDto>> GetAllPatients()
        {
            var query = new GetAllPatientsQuery.Query();
            return await mediator.Send(query);
        }

        [HttpPost]
        [Route("new")]
        public async Task<bool> SaveUser([FromBody] SendUser sendUser)
        {
            var query = new SaveUserCommand.Command()
            {
                SendUser = sendUser
            };
            return await mediator.Send(query);
        }

        [HttpPost]
        [Route("login")]
        public async Task<string> Login([FromBody] LoginDto loginDto)
        {
            var query = new LoginCommand.Command()
            {
                UserName = loginDto.UserName,
                Password = loginDto.Password,
            };
            return await mediator.Send(query);
        }
    }
}
