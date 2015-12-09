using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Proj3TryItPage.Startup))]
namespace Proj3TryItPage
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
