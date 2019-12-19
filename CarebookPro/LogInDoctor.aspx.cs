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
    public partial class LogInDoctor : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=DESKTOP-GN5IGJP;Initial Catalog = Carebooksystemdb; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DoctorLogIn_Click(object sender, EventArgs e)
        {
            string Sql = "select * from [dbo].[doctor_registration] where drusername = @Username and drpassword =@Password";
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                SqlCommand sqlCmd = new SqlCommand(Sql, sqlCon);
                sqlCmd.Parameters.AddWithValue("Username", docusername.Text);
                sqlCmd.Parameters.AddWithValue("Password", docpassword.Text);
                SqlDataAdapter sda = new SqlDataAdapter(sqlCmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                sqlCon.Open();
                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();
                if (dt.Rows.Count > 0)
                {
                    Session["UserName"] = docusername.Text;
                    Response.Redirect("DoctorNav.aspx");
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