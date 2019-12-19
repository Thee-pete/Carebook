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
    public partial class DoctorViewProfile : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=DESKTOP-GN5IGJP;Initial Catalog = Carebooksystemdb; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
            string Sql = "select * from doctor_information where drusername ='" + Session["UserName"].ToString() + "'";
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(Sql, sqlCon);
                SqlDataReader dr = sqlCmd.ExecuteReader();
                if (dr.Read())
                {
                    firstnamelbl.Text = (dr["drfirstname"].ToString());
                    lastnamelbl.Text = (dr["drlastname"].ToString());
                    usernamelabel.Text = (dr["drusername"].ToString());
                    emailaddresslbl.Text = (dr["emailaddress"].ToString());
                    usernamelabel.Text = (dr["drphonenumber"].ToString());
                    specialitylbl.Text = (dr["speciality"].ToString());
                    qualificationslbl.Text = (dr["qualifications"].ToString());
                    feeperappointmentlbl.Text = (dr["feeperappointment"].ToString());
                    availdaysandtimelbl.Text = (dr["availdaysandtime"].ToString());
                    departmentlbl.Text = (dr["department"].ToString());
                    ProfilePic.ImageUrl = (dr["profilepicturepath"].ToString());


                }

            }
        }
        protected void homebtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DoctorNav.aspx");
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("StartUpPage.aspx");
        }
    }
}