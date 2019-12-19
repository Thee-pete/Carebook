<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientBrowseDocs.aspx.cs" Inherits="CarebookPro.PatientBrowseDocs" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Browse Doctors</title>
     <link href="Stylebrowsedoctors.css" rel="stylesheet" />
     <script type="text/javascript" language="javascript">
     function OnMoreInfoClick() {
        clientPopupControl.Show();
     }

   
    
     
    </script>
     <style>  
        .myImage {  
            max-height: 400px;  
            max-width: 300px;  
        }  
    </style> 
</head>
<body>
    <form runat="server">
   <asp:Panel runat="server" BackImageUrl="~/Images/bar.png"  class="panelnav" HorizontalAlign="Left" Height="54px" VerticalAlign="Center">
        <asp:ImageButton runat="server" ID="homebtn" ImageUrl="~/Images/homebtn.png" OnClick="homebtn_Click" />
          <asp:ImageButton runat="server" ID="buttonlogout" ImageUrl="~/Images/logout.png"  OnClick="btnLogOut_Click" style="margin-left: 1205px"/>
            
    </asp:Panel>
    
        
    <asp:Panel runat="server" class="panelform" BackImageUrl="~/Images/formbg.png" HorizontalAlign="Left"  >
        <asp:Label runat="server" Text="Available Doctors" style="margin-left: 100px" Font-Size="30px" Font-Bold="true"></asp:Label>
        &nbsp;
        <asp:DropDownList runat="server"  style="margin-left: 10px;" class="dropdown" ID="departmentselect"  OnSelectedIndexChanged="departmentselect_SelectedIndexChanged">
            <asp:ListItem>Peditrician</asp:ListItem>
            <asp:ListItem>Optician</asp:ListItem>
            <asp:ListItem>Physiotherapy</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList><br />

        
        <asp:Label runat="server" ID="lbl2" Visible="False" ></asp:Label>

        <dx:ASPxGridView ID="DoctorsGridView" runat="server" ClientInstanceName="DoctorsGridView" AutoGenerateColumns="False" KeyFieldName="drfirstname" EnableCallBacks="False" style="margin-left: 100px; border-radius:5px" EnableTheming="True" Theme="Material" Width="1210px">
            <SettingsSearchPanel Visible="True" />
            <Columns>
                <dx:GridViewDataTextColumn Caption="First Name" FieldName="drfirstname" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="drlastname" VisibleIndex="1" Caption="Last Name">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Department" FieldName="department" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Speciality" FieldName="speciality" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Fee per Appointment" FieldName="feeperappointment" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                  <dx:GridViewDataTextColumn Caption="View Profile/Make Appointment" UnboundType="String" VisibleIndex="6">
                        <DataItemTemplate>
                            <dx:ASPxHyperLink ID="hyperLink" runat="server" OnInit="hyperLink_Init">
                            </dx:ASPxHyperLink>
                        </DataItemTemplate>
                    </dx:GridViewDataTextColumn>
            </Columns>
                <SettingsBehavior AllowFocusedRow="true" ProcessFocusedRowChangedOnServer="True" />
                <ClientSideEvents FocusedRowChanged="function(s, e) { OnGridFocusedRowChanged(); }" />
            <Border BorderStyle="None" />
        </dx:ASPxGridView>
          <dx:ASPxPopupControl ID="popupControl" runat="server" ClientInstanceName="clientPopupControl" CloseAction="CloseButton" Modal="True"  PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" OnLoad="popupControl_Load" HeaderText="Doctor Profile" Height="500px" Theme="Material" Width="1020px">
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">

                <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="3" EnableTheming="True" Theme="Material" Font-Size="Medium" Width="1105px">
                    <Items>
                        <dx:LayoutItem Caption="" Height="400px" Width="300px">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxImage ID="ProfilePic" runat="server" CssClass="myImage">
                                    </dx:ASPxImage>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutGroup Caption="Personal Details" ColCount="2" Width="350px">
                            <Items>
                                <dx:LayoutItem Caption="" ColSpan="2">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="ASPxFormLayout1_E1" runat="server" Font-Size="Medium" ForeColor="#009688" Text="Name">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="" FieldName="drfirstname">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="firstnamelbl" runat="server" Theme="Material" Font-Size="Medium">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="lastnamelbl" runat="server" Theme="Material" Font-Size="Medium">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="" ColSpan="2">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="ASPxFormLayout1_E3" runat="server" Font-Size="Medium" ForeColor="#009688" Text="Email address">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="" ColSpan="2">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="emailaddresslbl" runat="server" Theme="Material" Font-Size="Medium">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="" ColSpan="2">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="ASPxFormLayout1_E4" runat="server" Font-Size="Medium" ForeColor="#009688" Text="Phone number">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="" ColSpan="2">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="phonenumberlbl" runat="server" Theme="Material" Font-Size="Medium">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                        <dx:LayoutGroup Caption="Professional Details" Width="350px">
                            <Items>
                                <dx:LayoutItem Caption="">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="ASPxFormLayout1_E5" runat="server" Font-Size="Medium" ForeColor="#009688" Text="Department">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="departmentlbl" runat="server" Theme="Material" Font-Size="Medium">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="ASPxFormLayout1_E6" runat="server" Font-Size="Medium" ForeColor="#009688" Text="Speciality">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="specialitylbl" runat="server" Theme="Material" Font-Size="Medium">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="ASPxFormLayout1_E8" runat="server" Font-Size="Medium" ForeColor="#009688" Text="Qualifications">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="qualificationslbl" runat="server" Theme="Material" Font-Size="Medium">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="ASPxFormLayout1_E9" runat="server" Font-Size="Medium" ForeColor="#009688" Text="Fee Per Appointment">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="feeperappointmentlbl" runat="server" Theme="Material" Font-Size="Medium" ForeColor="Black">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="ASPxFormLayout1_E10" runat="server" Font-Size="Medium" ForeColor="#009688" Text="Available days and time">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxLabel ID="availdaysandtimelbl" runat="server" Theme="Material" Font-Size="Medium">
                                            </dx:ASPxLabel>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxButton ID="makeappointmentbtn" runat="server" Text="MAKE APPOINTMENT" Theme="Material" Width="193px" OnClick="makeappointmentbtn_Click">
                                    </dx:ASPxButton>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                    </dx:ASPxFormLayout>

                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
    
      
    </asp:Panel>
     
 </form>
</body>
</html>