using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace CarebookPro
{
    public partial class SignUpDoctor : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=DESKTOP-GN5IGJP;Initial Catalog = Carebooksystemdb; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     
        protected void doctorcreate_Click(object sender, EventArgs e)
        {
            string Sql = "insert into doctor_registration(drfirstname,drlastname, drusername, dremailaddress,drpassword)values('" + doctorfirstname.Text + "','" + doctorlastname.Text + "','" + doctorusername.Text + "','" + doctoremailaddress.Text + "','" + doctorpassword.Text +"')";
            
            if (doctorusername.Text == "" || doctorpassword.Text == "" || doctorfirstname.Text == "" || doctorlastname.Text == "")
                message.Text="Please fill in all fields";
            else if (doctorpassword.Text != docconfpass.Text)
                message.Text="Passwords do not match";
            else {
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(Sql, sqlCon);
                sqlCmd.ExecuteNonQuery();
                message.Text = "Registration was successful";
                Clear();
           
            }
            }
        }
        void Clear()
        {
            doctorfirstname.Text = doctorlastname.Text = doctorusername.Text = doctoremailaddress.Text = doctorpassword.Text =docconfpass.Text = "";
        }
    }
}