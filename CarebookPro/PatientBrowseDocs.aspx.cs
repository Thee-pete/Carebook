using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DevExpress.Web;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.Data;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid.Repository;
using DevExpress.Data.Access;



namespace CarebookPro
{
    public partial class PatientBrowseDocs : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=DESKTOP-GN5IGJP;Initial Catalog = Carebooksystemdb; Integrated Security = True";

        protected void Page_Load(object sender, EventArgs e)
        {

           
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM doctor_information", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                DoctorsGridView.DataSource = dtbl;
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
                sqlCommand.CommandText = "select * from doctor_information where department= '" + departmentselect.SelectedItem + "'";
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                DoctorsGridView.DataSource = dataTable;
                DoctorsGridView.DataBind();


            }
        }
       
        protected void hyperLink_Init(object sender, EventArgs e)
        {
            ASPxHyperLink link = (ASPxHyperLink)sender;

            GridViewDataItemTemplateContainer templateContainer = (GridViewDataItemTemplateContainer)link.NamingContainer;

            link.NavigateUrl = "javascript:void(0)";
            link.Text = "View Profile/ Make Appointment";
            link.ClientSideEvents.Click = string.Format("function(s,e){{OnMoreInfoClick();}}");
           
        }
    
       



        protected void popupControl_Load(object sender, EventArgs e)
        {
            
            string value = DoctorsGridView.GetRowValues(DoctorsGridView.FocusedRowIndex, "DoctorID").ToString();
            lbl2.Text = value;

            string Sql = "select * from doctor_information where DoctorID= '"+ value + "'";
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(Sql, sqlCon);
                SqlDataReader dr = sqlCmd.ExecuteReader();
                if (dr.Read())
                {
                    firstnamelbl.Text = (dr["drfirstname"].ToString());
                    lastnamelbl.Text = (dr["drlastname"].ToString());
                    emailaddresslbl.Text = (dr["emailaddress"].ToString());
                    phonenumberlbl.Text = (dr["drphonenumber"].ToString());
                    specialitylbl.Text = (dr["speciality"].ToString());
                    qualificationslbl.Text = (dr["qualifications"].ToString());
                    feeperappointmentlbl.Text = (dr["feeperappointment"].ToString());
                    availdaysandtimelbl.Text = (dr["availdaysandtime"].ToString());
                    ProfilePic.ImageUrl = (dr["profilepicturepath"].ToString());


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

        protected void makeappointmentbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientMakeAppointment.aspx");
        }
    }
}