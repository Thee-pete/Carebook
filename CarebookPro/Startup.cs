using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CarebookPro.Startup))]
namespace CarebookPro
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
