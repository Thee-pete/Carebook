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
    public partial class Logindoc : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=DESKTOP-GN5IGJP;Initial Catalog = Carebooksystemdb; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void patientcreate_Click(object sender, EventArgs e)
        {
            string Sql = "insert into patient_registration(patientfirstname,patientlastname, patientusername, emailaddress,password)values('" + patientfirstname.Text + "','" + patientlastname.Text + "','" + patientusername.Text + "','" + patientemailaddress.Text + "','" + patientpassword.Text +"')";
            
            if (patientusername.Text == "" || patientpassword.Text == "" || patientfirstname.Text == "" || patientlastname.Text == "")
                message.Text="Please fill in all fields";
            else if (patientpassword.Text != confpass.Text)
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
            patientfirstname.Text = patientlastname.Text = patientusername.Text = patientemailaddress.Text = patientpassword.Text =confpass.Text = "";
        }
    }
}