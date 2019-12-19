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
    public partial class PatientEditProfile : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=DESKTOP-GN5IGJP;Initial Catalog = Carebooksystemdb; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

            string Sql = "select * from patient_registration where patientusername ='" + Session["UserName"].ToString() + "'";
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(Sql, sqlCon);
                SqlDataReader dr = sqlCmd.ExecuteReader();
                if (dr.Read())
                {
                    patientfirstname.Text = (dr["patientfirstname"].ToString());
                    patientlastname.Text = (dr["patientlastname"].ToString());
                    patientusername.Text = (dr["patientusername"].ToString());
                    patientemailaddr.Text = (dr["emailaddress"].ToString());


                }

            }
        }

        protected void savepatientinfo_Click(object sender, ImageClickEventArgs e)
        {
            //string path = Server.MapPath("Images/");
            string path = Path.GetFileName(FileUpload1.FileName);
            path = path.Replace(" ", "");
            String filename1 = path;
          
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    //FileUpload1.SaveAs(path + FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/Images/") + path);
                    string name = "Images/" + FileUpload1.FileName;

                    string Sql = "insert into patient_information(patientfirstname,patientlastname, patientusername, emailaddress,password,residentialaddress,phonenumber,profilepicturepath)values('" + patientfirstname.Text + "','" + patientlastname.Text + "','" + patientusername.Text + "','" + patientemailaddr.Text + "','" + patientpassword.Text + "','" + patientresaddr.Text + "','" + patientphonenumber.Text + "','" + name+ "')";
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

            Response.Redirect("PatientViewProfile.aspx");

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