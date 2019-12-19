using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarebookPro
{
    public partial class PatientNav : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                LabUsername.Text = Session["UserName"].ToString();
            }else
            {
                Response.Redirect("LogInPatient.aspx");
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
            Response.Redirect("PatientEditProfile.aspx");
        }

        protected void browsedocs_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("PatientBrowseDocs.aspx");
        }

        protected void makeappointment_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("PatientViewAppointments.aspx");
        }

        protected void homebtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("PatientNav.aspx");
        }
    }
}