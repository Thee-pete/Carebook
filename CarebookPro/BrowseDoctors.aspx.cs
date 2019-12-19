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
    public partial class BrowseDoctors : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=DESKTOP-GN5IGJP;Initial Catalog = Carebooksystemdb; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT drfirstname,drlastname,drusername,department, speciality,qualifications, feeperappointment FROM doctor_information", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                DoctorsGridView.DataSource = dtbl;
                DoctorsGridView.DataBind();


            }
          
        }

        protected void Searchbtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlCommand sqlCommand = new SqlCommand();
                sqlCommand.Connection = sqlCon;
                sqlCommand.CommandText = "select drfirstname,drlastname,drusername,department, speciality,qualifications, feeperappointment from doctor_information where drfirstname= '" + tboxsearch.Text + "'";
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                DoctorsGridView.DataSource = dataTable;
                DoctorsGridView.DataBind();


            }
        }

        protected void departmentselect_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlCommand sqlCommand = new SqlCommand();
                sqlCommand.Connection = sqlCon;
                sqlCommand.CommandText = "select drfirstname,drlastname,drusername,department, speciality,qualifications, feeperappointment from doctor_information where department= '" + departmentselect.SelectedItem + "'";
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                DoctorsGridView.DataSource = dataTable;
                DoctorsGridView.DataBind();


            }
        }
        public void DoProfileredirect(object sender, DataGridCommandEventArgs e)
        {
            Response.Redirect("DoctorViewProfile.aspx");
        }
       

        protected void DoctorsGridView_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Action")
            {
                // string ID = e.CommandArgument.ToString();
                // string c = DoctorsGridView.SelectedRow.Cells[1].Text;
                //Get the data value and bind into textbox..
                // Response.Redirect("PatientViewDocProf.aspx");
                //ASPxPopupControl2.IsVisible();
                
            }
        }
    }
}