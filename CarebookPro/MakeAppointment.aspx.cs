using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarebookPro
{
    public partial class MakeAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void browse_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BrowseDoctors.aspx");
        }
        protected void homebtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("PatientNav.aspx");
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("StartUpPage.aspx");
        }
    }
}