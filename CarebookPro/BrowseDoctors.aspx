<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowseDoctors.aspx.cs" Inherits="CarebookPro.BrowseDoctors" EnableEventValidation="false" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Browse Doctors</title>
     <link href="Stylebrowsedoctors.css" rel="stylesheet" />
    <script>
        function OnMoreInfoClick() {
            profilepopup.Show();
        }

    </script>
</head>
<body>
    <form runat="server">
    <asp:Panel runat="server" BackImageUrl="~/Images/vxbar.png"  class="panelnav" HorizontalAlign="Right">
           <asp:Button runat="server" ID="btnLogOut" Text="Log Out" />
    </asp:Panel>
    
        
    <asp:Panel runat="server" class="panelform" BackImageUrl="~/Images/formbg.png" HorizontalAlign="Left"  >
        <asp:Label runat="server" Text="Available Doctors" style="margin-left: 100px" Font-Size="30px"></asp:Label>
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
        <asp:TextBox ID="tboxsearch" runat="server" style="margin-left: 100px" CssClass="tbox"></asp:TextBox>
        <asp:Button ID="Searchbtn" runat="server" OnClick="Searchbtn_Click" Text="SEARCH" class="button"/>
        <br />
        <asp:GridView ID="DoctorsGridView" runat="server" AutoGenerateColumns="False" Width="800px" AllowPaging="True" CssClass="mydatagrid" PagerStyle-CssClass="pager" BorderWidth="3px" style="margin-left: 100px" Height="540px" BackColor="White" BorderColor="#336666" BorderStyle="Double" CellPadding="4" GridLines="Both" OnRowCommand="DoctorsGridView_RowCommand1">
            <Columns>
                <asp:BoundField DataField="drfirstname" HeaderText="Name" />
                <asp:BoundField DataField="drusername" />
                <asp:BoundField DataField="department" HeaderText="Department" />
                <asp:BoundField DataField="Speciality" HeaderText="Speciality" />
                <asp:BoundField DataField="feeperappointment" HeaderText="Fee Per Appointment" />
                <asp:TemplateField>
                    <ItemTemplate>
                      <asp:LinkButton ID="lbltest" runat="server" Text="Action" CommandName="Action" CommandArgument='<%# Eval("drusername") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                         <asp:LinkButton ID="poptest" runat="server" Text="View Profile" OnClientClick="function(s, e) { OnMoreInfoClick(); }"></asp:LinkButton>
                    </ItemTemplate>
                    
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" CssClass="pager" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
     
             <dx:ASPxPopupControl ID="profilepopup" ClientInstanceName="profilepopup" runat="server" HeaderText="TEST RESULTS ENTRY" PopupElementID="DoctorsGridView" Width="500px" Theme="Material">
                                                        <ContentCollection>
                                                            <dx:PopupControlContentControl runat="server">
                                                                <dx:ASPxFormLayout ID="ASPxFormLayout2" runat="server" Width="100%" Theme="Material">
                                                                    <Items>
                                                                        <dx:LayoutGroup Caption="PATIENT TEST RESULTS INFORMATION">
                                                                            <Items>
                                                                                <dx:LayoutItem Caption="Patient name">
                                                                                    <LayoutItemNestedControlCollection>
                                                                                        <dx:LayoutItemNestedControlContainer runat="server">
                                                                                            <dx:ASPxTextBox ID="lbnametbox" runat="server" Width="300px" Theme="Material">
                                                                                            </dx:ASPxTextBox>
                                                                                        </dx:LayoutItemNestedControlContainer>
                                                                                    </LayoutItemNestedControlCollection>
                                                                                </dx:LayoutItem>
                                                                                <dx:LayoutItem Caption="Test Description">
                                                                                    <LayoutItemNestedControlCollection>
                                                                                        <dx:LayoutItemNestedControlContainer runat="server">
                                                                                            <dx:ASPxTextBox ID="lbtestdescrtbox" runat="server" Width="300px" Theme="Material">
                                                                                            </dx:ASPxTextBox>
                                                                                        </dx:LayoutItemNestedControlContainer>
                                                                                    </LayoutItemNestedControlCollection>
                                                                                </dx:LayoutItem>
                                                                                <dx:LayoutItem Caption="Test Result">
                                                                                    <LayoutItemNestedControlCollection>
                                                                                        <dx:LayoutItemNestedControlContainer runat="server">
                                                                                            <dx:ASPxTextBox ID="lbtestresulttbox" runat="server" Width="300px" Theme="Material">
                                                                                            </dx:ASPxTextBox>
                                                                                        </dx:LayoutItemNestedControlContainer>
                                                                                    </LayoutItemNestedControlCollection>
                                                                                </dx:LayoutItem>
                                                                                <dx:LayoutItem Caption="">
                                                                                    <LayoutItemNestedControlCollection>
                                                                                        <dx:LayoutItemNestedControlContainer runat="server">
                                                                                            <dx:ASPxButton ID="lbresultentrysavebtn" runat="server" Text="SAVE" Width="100px" Theme="Material">
                                                                                            </dx:ASPxButton>
                                                                                        </dx:LayoutItemNestedControlContainer>
                                                                                    </LayoutItemNestedControlCollection>
                                                                                </dx:LayoutItem>
                                                                            </Items>
                                                                        </dx:LayoutGroup>
                                                                    </Items>
                                                                </dx:ASPxFormLayout>
                                                            </dx:PopupControlContentControl>
                                                        </ContentCollection>
                                                    </dx:ASPxPopupControl>
      
    </asp:Panel>
     
 </form>
</body>
</html>