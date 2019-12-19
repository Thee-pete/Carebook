<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeAppointment.aspx.cs" Inherits="CarebookPro.MakeAppointment" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Make Appointment</title>
    <link href="Stylemakeappointment.css" rel="stylesheet" />
    <style type="text/css">
        .details {
            font-style: italic;
        }
    </style>
</head>
<body>
   <form runat="server" class="details">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  <asp:Panel runat="server" BackImageUrl="~/Images/bar.png"  class="panelnav" HorizontalAlign="Left" Height="54px" VerticalAlign="Center">
        <asp:ImageButton runat="server" ID="homebtn" ImageUrl="~/Images/homebtn.png" OnClick="homebtn_Click" />
          <asp:ImageButton runat="server" ID="buttonlogout" ImageUrl="~/Images/logout.png"  OnClick="btnLogOut_Click" style="margin-left: 1205px"/>
            
    </asp:Panel>
    <asp:Panel runat="server" class="panelform" BackImageUrl="~/Images/formbg.png" HorizontalAlign="Left">
        <asp:ImageButton runat="server" class="specbtn" ImageUrl="~/Images/browse.png" style="margin-left: 100px;" ID="browse" OnClick="browse_Click"/><br />
        <asp:Label runat="server" Text="Enter appointment details" style="margin-left: 450px;" Font-Size="30px" class="appointmentdetails"></asp:Label><br /><br />
      
        <asp:Table runat="server" style="margin-left: 350px; top: 0px; left: 0px;" HorizontalAlign="Left" Width="812px">
          <asp:TableRow>
              <asp:TableCell>
     
        <asp:Label runat="server" CssClass="appointmentdetails" Text="Doctor" style="margin-left: 100px;" Font-Bold="true"></asp:Label> <asp:TextBox runat="server" CssClass="spectxt" style="margin-left: 45px;"></asp:TextBox><br />
        <asp:Label runat="server" CssClass="appointmentdetails" Text="Department" style="margin-left: 100px;" Font-Bold="true"></asp:Label> <asp:TextBox runat="server" CssClass="spectxt" style="margin-left: 10px;"></asp:TextBox><br />
        <asp:Label runat="server" Text="Set the day of your appointment" style="margin-left: 100px;" Font-Bold="true" class="appointmentdetails"></asp:Label> <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" Theme="Material" style="margin-left: 350px;"></dx:ASPxDateEdit>
        <br />
                  
        <asp:Label runat="server" Text="Set the time for your appointment" Font-Bold="true" style="margin-left: 100px;" class="appointmentdetails"></asp:Label> <dx:ASPxTimeEdit ID="ASPxTimeEdit1" runat="server" Theme="Material" style="margin-left: 350px;"></dx:ASPxTimeEdit>
        <br />
        <asp:Label runat="server" Text="Enter more details concerning the appointment" style="margin-left: 100px;" Font-Bold="true" class="appointmentdetails"></asp:Label>
        <br />
        <asp:TextBox runat="server" placeholder="Details" TextMode="MultiLine" Height="250px" Width="500px" CssClass="spectxt" style="margin-left: 100px;"></asp:TextBox>
        <asp:ImageButton runat="server" ImageUrl="~/Images/Group 17.png" style="margin-left: 250px;" CssClass="specbtn" />
              </asp:TableCell>
              </asp:TableRow>
        </asp:Table><br />
          
       
    </asp:Panel>
     
 </form>
</body>
</html>
