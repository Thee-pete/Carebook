using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CarebookPro
{
    public partial class PatientViewProfile : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=DESKTOP-GN5IGJP;Initial Catalog = Carebooksystemdb; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
            string Sql = "select * from patient_information where patientusername ='" + Session["UserName"].ToString() + "'";
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(Sql, sqlCon);
                SqlDataReader dr = sqlCmd.ExecuteReader();
                if (dr.Read())
                {
                    xpatientfirstname.Text = (dr["patientfirstname"].ToString());
                    xpatientlastname.Text = (dr["patientlastname"].ToString());
                    xpatientusername.Text = (dr["patientusername"].ToString());
                    xpatientemailaddr.Text = (dr["emailaddress"].ToString());
                    xpatientphonenumber.Text = (dr["phonenumber"].ToString());
                    xpatientresaddr.Text = (dr["residentialaddress"].ToString());
                   
                    xPatientProfPic.ImageUrl = (dr["profilepicturepath"].ToString());


                }

            }
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