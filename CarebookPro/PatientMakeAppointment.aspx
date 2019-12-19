<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientMakeAppointment.aspx.cs" Inherits="CarebookPro.PatientMakeAppointment" %>
<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Edit Profile</title>
     <link href="Stylecreateschedule.css" rel="stylesheet" />
    	<link href="~/Media/layout.css" rel="stylesheet" type="text/css" />
	<link href='media/custom.css' type="text/css" rel="stylesheet" /> 
	<script src="js/daypilot-modal-2.2.js"></script>
</head>
<body>
    <form runat="server">
  <asp:Panel runat="server" BackImageUrl="~/Images/bar.png"  class="panelnav" HorizontalAlign="Left" Height="54px" VerticalAlign="Center">
        <asp:ImageButton runat="server" ID="homebtn" ImageUrl="~/Images/homebtn.png" OnClick="homebtn_Click" />
          <asp:ImageButton runat="server" ID="buttonlogout" ImageUrl="~/Images/logout.png"  OnClick="btnLogOut_Click" style="margin-left: 1205px"/>
            
    </asp:Panel>
    <asp:Panel runat="server" class="panelform" BackImageUrl="~/Images/formbg.png" HorizontalAlign="Left" >
<h2>Request an Appointment</h2>
    
<div style="float:left; width: 150px;">
    <DayPilot:DayPilotNavigator 
        runat="server" 
        ID="DayPilotNavigator1" 
        ClientIDMode="Static"
        BoundDayPilotID="DayPilotCalendar1"
        ShowMonths="3"    
        SelectMode="Week"
        
        OnBeforeCellRender="DayPilotNavigator1_OnBeforeCellRender"        
        />  
</div>
    
<div style="margin-left: 150px;">
    <p>Available time slots:</p>
    
    <DayPilot:DayPilotCalendar 
        runat="server" 
        ID="DayPilotCalendar1"
        ClientIDMode="Static"
        ClientObjectName="dp"
        ViewType="Week"
        
        DurationBarWidth="10"
        
        OnCommand="DayPilotCalendar1_OnCommand"
        OnBeforeEventRender="DayPilotCalendar1_OnBeforeEventRender"
        
        EventClickHandling="JavaScript"
        EventClickJavaScript="edit(e)"
        />
</div>    
    
    
<script>
    function edit(e) {
        new DayPilot.Modal({
            onClosed: function (args) {
                if (args.result == "OK") {
                    dp.commandCallBack('refresh');
                }
            }
        }).showUrl("Request.aspx?id=" + e.id());
    }
</script>
  </asp:Panel>   
 </form>
</body>
</html>
