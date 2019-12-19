<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientEditProfile.aspx.cs" Inherits="CarebookPro.PatientEditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Edit Profile</title>
     <link href="Stylepatientprofileedit.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
          function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=PatientProfPic.ClientID%>').prop('src', e.target.result)
                        .width(250)
                        .height(320);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

    </script>
</head>
<body>
    <form runat="server">
  <asp:Panel runat="server" BackImageUrl="~/Images/bar.png"  class="panelnav" HorizontalAlign="Left" Height="54px" VerticalAlign="Center">
        <asp:ImageButton runat="server" ID="homebtn" ImageUrl="~/Images/homebtn.png" OnClick="homebtn_Click" />
          <asp:ImageButton runat="server" ID="buttonlogout" ImageUrl="~/Images/logout.png"  OnClick="btnLogOut_Click" style="margin-left: 1205px"/>
            
    </asp:Panel>
    
        
    <asp:Panel runat="server" class="panelform" BackImageUrl="~/Images/formbg.png" HorizontalAlign="Center" >
        <asp:Table runat="server" Width="1150px" style="margin-left: 300px"  CellPadding="0" CellSpacing="0">
            <asp:TableRow>
                <asp:TableCell width="400px" HorizontalAlign="Left">
                    <br />
                    <asp:Label runat="server" Text="Profile Picture" ForeColor="#08363B"></asp:Label><br /><br />
                 <asp:Image runat="server" Height="320px" Width="250px" ID="PatientProfPic" BorderColor="Yellow"/><br />
                <asp:FileUpload ID="FileUpload1" runat="server" class="custom-file-upload" Width="250px" onchange="ImagePreview(this);"/><br />
                    
                    <asp:Literal runat="server" ID="Litwarning" ></asp:Literal>
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Left">
                      <asp:Label runat="server" Text="Personal Details" ForeColor="#08363B"></asp:Label><br /><br />
                    <div class="detailsform">
                        <form class="profiledetails">
                        <asp:TextBox runat="server" placeholder="First name" Width="240px" ID="patientfirstname"></asp:TextBox>
                        <asp:TextBox runat="server" placeholder="Last name" Width="240px" style ="margin-left:20px;" ID="patientlastname"></asp:TextBox><br />
                        <asp:TextBox runat="server" placeholder="Username" Width="500px" ID="patientusername"></asp:TextBox><br />
                        <asp:TextBox runat="server" placeholder="Phone number" Width="500px" ID="patientphonenumber"></asp:TextBox><br />
                        <asp:TextBox runat="server" placeholder="Residential address" Width="500px" ID="patientresaddr"></asp:TextBox><br />
                        <asp:TextBox runat="server" placeholder="Email address" Width="500px" ID="patientemailaddr"></asp:TextBox><br />
                            <asp:Label runat="server" Text="Change password?" Font-Bold="true" Font-Size="16px"></asp:Label><br /><br />
                        <asp:TextBox runat="server" placeholder="New password" Width="240px" type="password" ID="patientpassword"></asp:TextBox>
                        <asp:TextBox runat="server" placeholder="Confirm new password" Width="240px"  style ="margin-left:20px;" type="password"></asp:TextBox><br /><br />
                         <asp:Label runat="server" ID="labelusername" Visible="False"></asp:Label>
                             </form>

                    </div>
                    <br />
                  
                </asp:TableCell>
                
            </asp:TableRow>
          
        </asp:Table>
          <asp:ImageButton runat="server" Width="200px" Height="56px" ImageUrl="~/Images/savechanges.png" ID="savepatientinfo" OnClick="savepatientinfo_Click" />
                      
    </asp:Panel>
     
 </form>
</body>
</html>