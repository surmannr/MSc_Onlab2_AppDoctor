using AppDoctorBackend.ApplicationCore.Extensions;
using Microsoft.IdentityModel.JsonWebTokens;

namespace AppDoctorBackend.Web.Extensions
{
    public class IdentityService : IIdentityService
    {
        private readonly HttpContext httpContext;

        public IdentityService(IHttpContextAccessor httpContextAccessor)
        {
            httpContext = httpContextAccessor.HttpContext;
        }

        public string GetCurrentUserId()
        {
            return httpContext.User.Claims.FirstOrDefault(x => x.Type == JwtRegisteredClaimNames.Sub)?.Value ?? throw new UnauthorizedAccessException("A művelethez be kell jelentkezni.");
        }
    }
}
