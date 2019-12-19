<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientViewProfile.aspx.cs" Inherits="CarebookPro.PatientViewProfile" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Edit Profile</title>
     <link href="Stylepatientprofileedit.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
 <asp:Panel runat="server" BackImageUrl="~/Images/bar.png"  class="panelnav" HorizontalAlign="Left" Height="54px" VerticalAlign="Center">
        <asp:ImageButton runat="server" ID="homebtn" ImageUrl="~/Images/homebtn.png" OnClick="homebtn_Click" />
          <asp:ImageButton runat="server" ID="buttonlogout" ImageUrl="~/Images/logout.png"  OnClick="btnLogOut_Click" style="margin-left: 1205px"/>
            
    </asp:Panel>
      
    
        
    <asp:Panel runat="server" class="panelform" BackImageUrl="~/Images/formbg.png" HorizontalAlign="Center" >
    
          <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="2">
              <Items>
                  <dx:LayoutGroup Caption="Profile Picture" Width="500px">
                      <Items>
                          <dx:LayoutItem Caption="" Height="400px" Width="300px">
                              <LayoutItemNestedControlCollection>
                                  <dx:LayoutItemNestedControlContainer runat="server">
                                      <dx:ASPxImage ID="xPatientProfPic" runat="server">
                                      </dx:ASPxImage>
                                  </dx:LayoutItemNestedControlContainer>
                              </LayoutItemNestedControlCollection>
                          </dx:LayoutItem>
                      </Items>
                  </dx:LayoutGroup>
                  <dx:LayoutGroup Caption="Personal Details" ColCount="2" Width="500px">
                      <Items>
                          <dx:LayoutItem Caption="Name" Width="300px" CaptionStyle-Font-Size="Medium" CaptionStyle-ForeColor="#009688">
                              <LayoutItemNestedControlCollection>
                                  <dx:LayoutItemNestedControlContainer runat="server">
                                      <dx:ASPxLabel ID="xpatientfirstname" runat="server" Theme="Material" Font-Size="Medium">
                                      </dx:ASPxLabel>
                                  </dx:LayoutItemNestedControlContainer>
                              </LayoutItemNestedControlCollection>
                          </dx:LayoutItem>
                          <dx:LayoutItem Caption="" Width="200px">
                              <LayoutItemNestedControlCollection>
                                  <dx:LayoutItemNestedControlContainer runat="server">
                                      <dx:ASPxLabel ID="xpatientlastname" runat="server" Theme="Material" Font-Size="Medium">
                                      </dx:ASPxLabel>
                                  </dx:LayoutItemNestedControlContainer>
                              </LayoutItemNestedControlCollection>
                          </dx:LayoutItem>
                          <dx:LayoutItem Caption="Username" ColSpan="2" Width="500px" CaptionStyle-Font-Size="Medium" CaptionStyle-ForeColor="#009688">
                              <LayoutItemNestedControlCollection>
                                  <dx:LayoutItemNestedControlContainer runat="server">
                                      <dx:ASPxLabel ID="xpatientusername" runat="server" Theme="Material" Font-Size="Medium">
                                      </dx:ASPxLabel>
                                  </dx:LayoutItemNestedControlContainer>
                              </LayoutItemNestedControlCollection>
                          </dx:LayoutItem>
                          <dx:LayoutItem Caption="Email address" ColSpan="2" Width="500px" CaptionStyle-Font-Size="Medium" CaptionStyle-ForeColor="#009688">
                              <LayoutItemNestedControlCollection>
                                  <dx:LayoutItemNestedControlContainer runat="server">
                                      <dx:ASPxLabel ID="xpatientemailaddr" runat="server" Theme="Material" Font-Size="Medium">
                                      </dx:ASPxLabel>
                                  </dx:LayoutItemNestedControlContainer>
                              </LayoutItemNestedControlCollection>
                          </dx:LayoutItem>
                          <dx:LayoutItem Caption="Phonenumber" ColSpan="2" Width="500px" CaptionStyle-Font-Size="Medium" CaptionStyle-ForeColor="#009688">
                              <LayoutItemNestedControlCollection>
                                  <dx:LayoutItemNestedControlContainer runat="server">
                                      <dx:ASPxLabel ID="xpatientphonenumber" runat="server" Theme="Material" Font-Size="Medium">
                                      </dx:ASPxLabel>
                                  </dx:LayoutItemNestedControlContainer>
                              </LayoutItemNestedControlCollection>
                          </dx:LayoutItem>
                          <dx:LayoutItem Caption="Residential address" ColSpan="2" Width="500px" CaptionStyle-Font-Size="Medium" CaptionStyle-ForeColor="#009688">
                              <LayoutItemNestedControlCollection>
                                  <dx:LayoutItemNestedControlContainer runat="server">
                                      <dx:ASPxLabel ID="xpatientresaddr" runat="server" Theme="Material" Font-Size="Medium">
                                      </dx:ASPxLabel>
                                  </dx:LayoutItemNestedControlContainer>
                              </LayoutItemNestedControlCollection>
                          </dx:LayoutItem>
                      </Items>
                  </dx:LayoutGroup>
              </Items>
          </dx:ASPxFormLayout>
    </asp:Panel>
     
 </form>
</body>
</html>