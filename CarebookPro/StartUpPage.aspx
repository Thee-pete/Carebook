<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartUpPage.aspx.cs" Inherits="CarebookPro.StartUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Carebook</title>
    <link href="Stylestartup.css" rel="stylesheet" />
</head>
<body style=" width:"100%">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server"  HorizontalAlign="Center">
            <br />
            <br />
            <br />
            <br />
            <br />
           <asp:Image ID="Image1" runat="server" Height="181px" ImageAlign="Middle" ImageUrl="~/Images/logo.png"/>
            <br />
            <br />
            <br />
            <asp:Image ID="Image2" runat="server" Height="107px" ImageUrl="~/Images/Start using carebook either as a doctor or a patient.                         Click below to get started..png" Width="940px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="~/Images/doctor.png"  OnClick="ImageButton1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="70px" ImageUrl="~/Images/patient.png"  OnClick="ImageButton2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
           
        </asp:Panel>
   
  
    </form>
</body>
</html>
