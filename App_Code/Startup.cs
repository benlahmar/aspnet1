using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(isgaG1.Startup))]
namespace isgaG1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
