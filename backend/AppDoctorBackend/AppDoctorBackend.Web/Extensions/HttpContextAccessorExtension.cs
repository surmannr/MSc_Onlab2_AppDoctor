using System.Security.Claims;

namespace AppDoctorBackend.Web.Extensions
{
    public static class HttpContextAccessorExtension
    {
        public static string GetCurrentUserId(this IHttpContextAccessor httpContextAccessor)
            => httpContextAccessor.HttpContext.User.Claims.FirstOrDefault(u => u.Type == ClaimTypes.NameIdentifier)?.Value;
    }
}
