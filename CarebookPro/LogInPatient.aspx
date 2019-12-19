<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPatient.aspx.cs" Inherits="CarebookPro.LogInDoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Log In</title>
    <style type="text/css">
     
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
                       <asp:Image runat="server"  margin-left="100px" ImageUrl="~/Images/Welcome back! Please login to your account..png" />
                       </asp:Panel>      
                     <form id="form2">
    <div class="login-page" id="patientcreateacc">
  <div class="form">
    <form  class="register-form">
    
        <asp:TextBox runat="server" placeholder="Username" ID="patusername"></asp:TextBox>
        <asp:TextBox runat="server" placeholder="Password" type="password" ID="patpassword"></asp:TextBox>
        <asp:Button  runat="server"   class="button" Text="Log In" BackColor="#08363B" OnClick="PatientLogIn_Click" />
        <asp:Literal runat="server" ID="litmsg"></asp:Literal>
       <p class="message">Don't have an account? <a href="SignUpPatient.aspx">Sign Up</a></p>
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
