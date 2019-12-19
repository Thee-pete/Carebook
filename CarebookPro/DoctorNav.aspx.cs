using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarebookPro
{
    public partial class DoctorNav : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                LabUsername.Text = Session["UserName"].ToString();
            }
            else
            {
                Response.Redirect("LogInDoctor.aspx");
            }

         
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("StartUpPage.aspx");
        }

        protected void Unnamed3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DoctorEditProfile.aspx");
        }

        protected void Unnamed4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DocViewAppointments.aspx");
        }
        protected void homebtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DoctorNav.aspx");
        }

        protected void viewappointments(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DocViewAppointments.aspx");
        }
    }
}