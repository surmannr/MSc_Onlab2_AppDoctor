using IdentityServer4;
using IdentityServer4.Models;

namespace AppDoctorBackend.Web.Extensions
{
    public class IdentityConfiguration
    {
        public static IEnumerable<IdentityResource> IdentityResources => new IdentityResource[]
        {
            new IdentityResources.OpenId(),
            new IdentityResources.Profile(),
        };

        public static IEnumerable<ApiScope> ApiScopes => new ApiScope[]
        {
            new ApiScope("AppDoctorBackend.all"),
        };

        public static IEnumerable<ApiResource> ApiResources => new ApiResource[]
        {
            new ApiResource("AppDoctorBackendApi")
            {
                Scopes = new List<string>{ "AppDoctorBackend.all" },
                ApiSecrets = new List<Secret>{ new Secret("supersecret".Sha256()) }
            }
        };

        public static IEnumerable<IdentityServer4.Models.Client> Clients => new IdentityServer4.Models.Client[]
        {
            new IdentityServer4.Models.Client
            {
                ClientId = "AppDoctorBackend.Postman",
                ClientName = "Postman",
                AllowedGrantTypes = new List<string>
                {
                    GrantType.ResourceOwnerPassword,
                    GrantType.AuthorizationCode
                },
                ClientSecrets =
                {
                    new Secret("secret".Sha256())
                },
                AllowAccessTokensViaBrowser =true,
                Enabled = true,
                AllowedScopes =
                {
                    IdentityServerConstants.StandardScopes.OpenId,
                    IdentityServerConstants.StandardScopes.Profile,
                    "AppDoctorBackend.all"
                },
                RedirectUris =
                {
                    "http://localhost:63159"
                },
                PostLogoutRedirectUris =
                {
                    "http://localhost:63159"
                },
                AllowedCorsOrigins =
                {
                    "http://localhost:63159",
                    "https://localhost:7288",
                    "http://localhost:5288"
                }
            },
            new IdentityServer4.Models.Client
            {
                ClientId = "flutterClient",
                AllowedGrantTypes = GrantTypes.Code,
                RequirePkce = true,
                RequireClientSecret = false,
                Enabled = true,
                AllowAccessTokensViaBrowser =true,
                AllowedCorsOrigins =
                {
                    "http://localhost:63159",
                    "https://localhost:7288",
                    "http://localhost:5288"
                },
                AllowedScopes =
                {
                    IdentityServerConstants.StandardScopes.OpenId,
                    IdentityServerConstants.StandardScopes.Profile,
                    "AppDoctorBackend.all"
                },
                // RedirectUris = { "https://localhost:44331/authentication/login-callback", "https://galactic-empire.azurewebsites.net/authentication/login-callback" },
                // PostLogoutRedirectUris = { "https://localhost:44331/authentication/logout-callback", "https://galactic-empire.azurewebsites.net/authentication/logout-callback" }
            },
        };
    }
}
