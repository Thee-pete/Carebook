using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CarebookPro
{
   
    public partial class patientsignupaspx : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\aspnet-CarebookPro-20190706114515.mdf;Initial Catalog = aspnet - CarebookPro - 20190706114515; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void patientCreateAcc_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctorlogin.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("PatientUserAdd", sqlCon);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                //sqlCmd.Parameters.AddWithValue("@patientfirstname", patientfirstname.text);
            }
        }
    }
}