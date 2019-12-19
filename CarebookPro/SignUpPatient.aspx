<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPatient.aspx.cs" Inherits="CarebookPro.Logindoc" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Sign Up</title>
    <style type="text/css">
        #form1 {
            height: 817px;
            position:relative
        }
        #Table1 {
                 border-collapse: collapse;
                 padding:0;
               }
    </style>
       <link href="Stylelogin.css" rel="stylesheet" />
</head>
<body>
    

    
    <form class="form1" runat="server">
        <asp:Panel runat="server" class="panelcont" Width="100%" HorizontalAlign="Center">
       
            <asp:Table ID="Table1" runat="server" BorderStyle="None" CellPadding="0" CellSpacing="0" Height="817px" Width="100%" HorizontalAlign="Justify">
                <asp:TableRow runat="server" BorderStyle="None">
                    <asp:TableCell ColumnSpan="1" Width="50%">
                       <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/sidebg.png" Height="817px" HorizontalAlign="Center">
                        
                            </asp:Panel>
                    </asp:TableCell>
                    <asp:TableCell ColumnSpan="1" HorizontalAlign="Justify">
                      <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/Images/sidebback.png" Height="817px" HorizontalAlign="Center">
                   <asp:Panel runat="server" HorizontalAlign="Center">
                          <asp:Image runat="server" ImageUrl="~/Images/carebook.png" margin-left="100px"/>
                       <asp:Image runat="server"  margin-left="100px" ImageUrl="~/Images/Please complete to create an account.png" />
                       </asp:Panel>      
                     <form id="form2">
    <div class="login-page" id="patientcreateacc">
  <div class="form">
    <form  class="register-form">
       <asp:Literal runat="server" ID="message"></asp:Literal>
     <asp:TextBox runat="server" id="patientfirstname" placeholder="First Name" class="tbox"></asp:TextBox>
        <asp:TextBox runat="server" id="patientlastname" placeholder="Last Name"></asp:TextBox>
        <asp:TextBox runat="server" id="patientusername" placeholder="Username"></asp:TextBox>
        <asp:TextBox runat="server" id="patientemailaddress" placeholder="Email address"></asp:TextBox>
        <asp:TextBox runat="server" id="patientpassword" placeholder="Password" type="password"></asp:TextBox>
        <asp:TextBox runat="server" id="confpass" placeholder="Confirm password" type="password"></asp:TextBox>

       <asp:Button  runat="server" ID="patientcreatea" OnClick="patientcreate_Click"  class="button" Text="Sign Up" BackColor="#08363B" />
     
   
      <p class="message">Already registered? <a href="LogInPatient.aspx">Sign In</a></p>
    </form>
         
  </div>
</div>
    </form>

                         </asp:Panel>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
       
     </asp:Panel>
      
            
       
    </form>
    

    
</body>
</html>
