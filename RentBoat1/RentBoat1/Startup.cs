using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RentBoat1.Startup))]
namespace RentBoat1
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
