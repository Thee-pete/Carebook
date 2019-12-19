using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace CarebookPro
{
    public partial class LogInDoc : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=DESKTOP-GN5IGJP;Initial Catalog = Carebooksystemdb; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void PatientLogIn_Click(object sender, EventArgs e)
        {
            string Sql = "select * from [dbo].[patient_registration] where patientusername = @Username and password =@Password";
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                SqlCommand sqlCmd = new SqlCommand(Sql, sqlCon);
                sqlCmd.Parameters.AddWithValue("Username",patusername.Text);
                sqlCmd.Parameters.AddWithValue("Password", patpassword.Text);
                SqlDataAdapter sda = new SqlDataAdapter(sqlCmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                sqlCon.Open();
                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();
                if (dt.Rows.Count>0)
                {
                    Session["UserName"] = patusername.Text;
                    Response.Redirect("PatientNav.aspx");
                    Session.RemoveAll();
                }
                else
                {
                    litmsg.Text = "You entered the wrong details.Try Again";
                }


            }
        }
    }
}