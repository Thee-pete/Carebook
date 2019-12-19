<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorEditProfile.aspx.cs" Inherits="CarebookPro.DocEditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Edit Profile</title>
     <link href="Styleprofile.css" rel="stylesheet" />
      <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
          function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=DocProfPic.ClientID%>').prop('src', e.target.result)
                        .width(250)
                        .height(320);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

    </script>
</head>
<body>
    <form runat="server" class="profiledetails">
 <asp:Panel runat="server" BackImageUrl="~/Images/bar.png"  class="panelnav" HorizontalAlign="Left" Height="54px" VerticalAlign="Center">
        <asp:ImageButton runat="server" ID="homebtn" ImageUrl="~/Images/homebtn.png" OnClick="homebtn_Click" />
          <asp:ImageButton runat="server" ID="buttonlogout" ImageUrl="~/Images/logout.png"  OnClick="btnLogOut_Click" style="margin-left: 1205px"/>
            
    </asp:Panel>
    <asp:Panel runat="server" class="panelform" BackImageUrl="~/Images/formbg.png" HorizontalAlign="Center" >
      
         <asp:Table runat="server" CellPadding="0" CellSpacing="0" Width="100%">
           
            <asp:TableRow>
                <asp:TableCell  HorizontalAlign="Left">
                      <asp:Label runat="server" Text="Profile picture" ForeColor="#08363B"></asp:Label><br /><br />
                 <asp:Image runat="server" Height="320px" Width="250px" ID="DocProfPic"/><br />
                <asp:FileUpload ID="FileUpload1" runat="server" class="custom-file-upload" Width="250px"  onchange="ImagePreview(this);"/>
                     <asp:Literal runat="server" ID="Litwarning" ></asp:Literal>
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Left">
                     <asp:Label runat="server" Text="Personal Details" ForeColor="#08363B"></asp:Label><br /><br />
                    <div class="detailsform">
                        <asp:TextBox runat="server" placeholder="First name" Width="240px" ID="drfirstname"></asp:TextBox>
                        <asp:TextBox runat="server" placeholder="Last name" Width="240px" style ="margin-left:20px;" ID="drlastname"></asp:TextBox><br />
                        <asp:TextBox runat="server" placeholder="Username" Width="500px" ID="drusername"></asp:TextBox><br />
                        <asp:TextBox runat="server" placeholder="Phone number" Width="500px" ID="drphonenumber"></asp:TextBox><br />
                        <asp:TextBox runat="server" placeholder="Email address" Width="500px" ID="emailaddr"></asp:TextBox><br />
                       <asp:TextBox runat="server" placeholder="Password" Width="240px" type="password" ID="password"></asp:TextBox>
                        <asp:TextBox runat="server" placeholder="Confirm new password" Width="240px"  style ="margin-left:20px;" type="password"></asp:TextBox><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                       </div>
                </asp:TableCell>
                 <asp:TableCell HorizontalAlign="Left">
                      <asp:Label runat="server" Text="Professional Details" ForeColor="#08363B"></asp:Label><br /><br />
                    <div class="professionalform">
                          <asp:TextBox runat="server" ID="department" placeholder="Department"></asp:TextBox><br />
                        <asp:TextBox runat="server" ID="speciality" placeholder="Speciality" Width="500px" Height="70px" TextMode="MultiLine" class="spectxt"></asp:TextBox><br />
                        <asp:TextBox runat="server" ID="qualifications" placeholder="Qualifications" Width="500px" Height="120px" TextMode="MultiLine" class="spectxt"></asp:TextBox><br />
                        <asp:TextBox runat="server" ID="feeperappointment" placeholder="Fee Per Appointment"></asp:TextBox><br />
                        <asp:Label runat="server" Text="Set your available working days and hours" Font-Size="18px" Font-Bold="True"></asp:Label>
                       <div class="days">
                        <asp:Label runat="server" ID="sunday" Text="Sunday" Font-Size="14px" Font-Bold="True"></asp:Label><asp:TextBox runat="server" ID="sundayfrom" Font-Size="14px" TextMode="Time" Width="70px" style="margin-left:10px;"></asp:TextBox><asp:TextBox runat="server" ID="sundayto" TextMode="Time" Width="70px" Font-Size="14px" style="margin-left:10px;"></asp:TextBox>
                        <asp:Label runat="server" ID="monday" Text="Monday" Font-Size="14px" Font-Bold="True" style="margin-left:10px;"></asp:Label><asp:TextBox runat="server" ID="mondayfrom" Font-Size="14px" TextMode="Time" Width="70px" style="margin-left:15px;"></asp:TextBox><asp:TextBox runat="server" ID="mondayto" TextMode="Time" Width="70px" Font-Size="14px" style="margin-left:10px;"></asp:TextBox><br />
                        <asp:Label runat="server" ID="tuesday" Text="Tuesday" Font-Size="14px" Font-Bold="True"></asp:Label><asp:TextBox runat="server" Font-Size="14px" ID="tuesdafrom" TextMode="Time" Width="70px" style="margin-left:10px;"></asp:TextBox><asp:TextBox runat="server" TextMode="Time" Width="70px" ID="tuesdayto" Font-Size="14px" style="margin-left:10px;"></asp:TextBox>
                        <asp:Label runat="server" ID="wednesday" Text="Wednesday" Font-Size="14px" Font-Bold="True" style="margin-left:10px;"></asp:Label><asp:TextBox runat="server" ID="wednesdayfrom" Font-Size="14px" TextMode="Time" Width="70px" style="margin-left:10px;"></asp:TextBox><asp:TextBox runat="server"  ID="wednesdayto" TextMode="Time" Width="70px" Font-Size="14px" style="margin-left:10px;"></asp:TextBox>
                        <asp:Label runat="server" ID="thursday" Text="Thursday" Font-Size="14px" Font-Bold="True"></asp:Label><asp:TextBox runat="server" Font-Size="14px" ID="thursdayfrom" TextMode="Time" Width="70px" style="margin-left:10px;"></asp:TextBox><asp:TextBox runat="server" TextMode="Time" Width="70px" ID="thursdayto" Font-Size="14px" style="margin-left:10px;"></asp:TextBox>
                        <asp:Label runat="server" ID="friday" Text="Friday" Font-Size="14px" Font-Bold="True" style="margin-left:10px;"></asp:Label><asp:TextBox runat="server" ID="fridayfrom" Font-Size="14px" TextMode="Time" Width="70px" style="margin-left:10px;"></asp:TextBox><asp:TextBox runat="server" TextMode="Time" ID="fridayto" Width="70px" Font-Size="14px" style="margin-left:10px;"></asp:TextBox><br />
                        <asp:Label runat="server" ID="saturday" Text="Saturday" Font-Size="14px" Font-Bold="True"></asp:Label><asp:TextBox runat="server" Font-Size="14px" ID="saturdayfrom" TextMode="Time" Width="70px" style="margin-left:10px;"></asp:TextBox><asp:TextBox runat="server" TextMode="Time" Width="70px" ID="saturdayto" Font-Size="14px" style="margin-left:10px;"></asp:TextBox>
                      </div>
                  

                    </div>
                    <br />
                    
                </asp:TableCell>
                
            </asp:TableRow>
         
        </asp:Table>
   
         <asp:Panel runat="server" HorizontalAlign="Center">
                             <asp:ImageButton runat="server" Width="200px" Height="56px" ImageUrl="~/Images/savechanges.png" ID="savedoctorinfo" OnClick="savedoctorinfo_Click" />
                         </asp:Panel>  
    </asp:Panel>
     
 </form>
</body>
</html>