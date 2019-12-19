﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorNav.aspx.cs" Inherits="CarebookPro.DoctorNav" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Navigation</title>
     <link href="StyleDoctorNav.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
   <asp:Panel runat="server" BackImageUrl="~/Images/bar.png"  class="panelnav" HorizontalAlign="Left" Height="54px" VerticalAlign="Center">
        <asp:ImageButton runat="server" ID="homebtn" ImageUrl="~/Images/homebtn.png" OnClick="homebtn_Click" />
      <!--   <p>Welcome <asp:Label runat="server" ID="LabUsername" ForeColor="#08363B"></asp:Label></p>-->
          <asp:ImageButton runat="server" ID="buttonlogout" ImageUrl="~/Images/logout.png"  OnClick="btnLogOut_Click" style="margin-left: 1205px"/>
            
    </asp:Panel>
    
        
    <asp:Panel runat="server" class="panelform" BackImageUrl="~/Images/formbg.png" ForeColor="#08363B" HorizontalAlign="Left">
          

           <dx:ASPxImageSlider ID="ASPxImageSlider1" runat="server" EnableTheming="False"  ShowNavigationBar="False" Height="380px">
            <SettingsImageArea AnimationType="Fade" EnableLoopNavigation="True" ImageSizeMode="FillAndCrop" />
            <SettingsNavigationBar Mode="Dots" />
            <SettingsSlideShow AutoPlay="True" />
            <SettingsAutoGeneratedImages ImageCacheFolder="~/Thumb/" />
            <Styles>
                <ImageArea Border-BorderStyle="None" Width="1470px">
                </ImageArea>
                <NavigationBarDotsModeBottom BackColor="#B5C0C2" Border-BorderStyle="None">
                    <Margins MarginBottom="0px" MarginTop="0px" />
                </NavigationBarDotsModeBottom>
                <Dot BackColor="#08363B" Border-BorderStyle="None">
                </Dot>
            </Styles>
            <Items>
                <dx:ImageSliderItem ImageUrl="Images/slider1.png">
                </dx:ImageSliderItem>
                <dx:ImageSliderItem ImageUrl="Images/slider2.png">
                </dx:ImageSliderItem>
                <dx:ImageSliderItem ImageUrl="Images/slider3.png">
                </dx:ImageSliderItem>
            </Items>
            
        </dx:ASPxImageSlider>
        <asp:ImageButton runat="server" ImageUrl="~/Images/button1.png" style="margin-right: 148px; margin-left: 190px; margin-top: 22px;" Height="256px" Width="256px" OnClick="Unnamed3_Click" />
        <asp:ImageButton runat="server" ImageUrl="~/Images/button2.png"  Height="256px" Width="256px" OnClick="Unnamed4_Click"/>
        <asp:ImageButton runat="server" ImageUrl="~/Images/button3.png"  Height="256px" Width="256px" OnClick="viewappointments" style="margin-left: 148px"  />
    </asp:Panel>
     
 </form>
</body>
</html>
