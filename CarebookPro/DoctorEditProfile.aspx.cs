using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace CarebookPro
{
    public partial class DocEditProfile : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=DESKTOP-GN5IGJP;Initial Catalog = Carebooksystemdb; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                string Sql = "select * from doctor_registration where drusername ='" + Session["UserName"].ToString() + "'";
                using (SqlConnection sqlCon = new SqlConnection(connectionstring))
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand(Sql, sqlCon);
                    SqlDataReader dr = sqlCmd.ExecuteReader();
                    if (dr.Read())
                    {
                        drfirstname.Text = (dr["drfirstname"].ToString());
                        drlastname.Text = (dr["drlastname"].ToString());
                        drusername.Text = (dr["drusername"].ToString());
                        emailaddr.Text = (dr["dremailaddress"].ToString());


                    }

                }
            }
            else
            {
                Response.Redirect("LogInDoctor.aspx");
            }

        

        }

        protected void savedoctorinfo_Click(object sender, ImageClickEventArgs e)
        {
            string path = Path.GetFileName(FileUpload1.FileName);
            path = path.Replace(" ", "");
            String filename1 = path;

            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Images/") + path);
                    string name = "Images/" + FileUpload1.FileName;
                    const char newLine = (char)13;

            string daystime = "Sunday" + "  "+ sundayfrom.Text + "  " + "to" + "  " + sundayto.Text + newLine + "Monday" + "  " + mondayfrom.Text + "  " + "to" + "  " + mondayto.Text + newLine +"Tuesday" + "  " + tuesdafrom.Text + "  " + "to" + "  " + tuesdayto.Text + newLine + "Wednesday" + "  " + wednesdayfrom.Text + "  " + "to" + "  " + wednesdayto.Text + newLine + "Thursday" + "  " + thursdayfrom.Text + "  " + "to" + "  " + thursdayto.Text + newLine + "Friday" + "  " + fridayfrom.Text + "  " + "to" + "  " + fridayto.Text + newLine + "Saturday" + "  " + saturdayfrom.Text + "  " + "to" + "  " + saturdayto.Text;

            string Sql = "insert into doctor_information(drfirstname,drlastname, drusername,drphonenumber, emailaddress,password,department,speciality,qualifications,feeperappointment,availdaysandtime,profilepicturepath)values('" + drfirstname.Text + "','" + drlastname.Text + "','" + drusername.Text + "','" + drphonenumber.Text + "','" + emailaddr.Text + "','" + password.Text + "','" + department.Text + "','" + speciality.Text + "','" + qualifications.Text + "','" + feeperappointment.Text + "','" + daystime + "','"+name+"')";
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(Sql, sqlCon);
                sqlCmd.ExecuteNonQuery();


            }

                }
                else
                {
                    Litwarning.Text = "Choose an image file of either PNG OR JPG type";
                }
            }

            Response.Redirect("DoctorViewProfile.aspx");
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