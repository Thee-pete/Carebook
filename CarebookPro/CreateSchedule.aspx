<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateSchedule.aspx.cs" Inherits="CarebookPro.CreateSchedule" %>
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
    <asp:Panel runat="server" BackImageUrl="~/Images/vxbar.png"  class="panelnav" HorizontalAlign="Right">
           <asp:Button runat="server" ID="btnLogOut" Text="Log Out" />
    </asp:Panel>
    <asp:Panel runat="server" class="panelform" BackImageUrl="~/Images/formbg.png" HorizontalAlign="Left" >

    
    <div style="float:left; width: 150px;">
        <DayPilot:DayPilotNavigator 
            runat="server" 
            ID="DayPilotNavigator1" 
            ClientIDMode="Static"
            BoundDayPilotID="DayPilotScheduler1"
            ShowMonths="3"    
            SelectMode="Month"
            />  
    </div>
    
    <div style="margin-left: 150px;">
        
        <div class="space">Scale: <a href="javascript:scale('shifts')">Shifts</a> | <a href="javascript:scale('hours')">Hours</a></div> 

        <DayPilot:DayPilotScheduler 
            runat="server" 
            ID="DayPilotScheduler1"
            ClientObjectName="dp"
            
            AllowEventOverlap="false"
            UseEventBoxes="Never"
            
            CellWidth ="40"
            DynamicEventRendering="Disabled"
            
            TimeRangeSelectedHandling="CallBack"    
            OnTimeRangeSelected="DayPilotScheduler1_OnTimeRangeSelected"   
            
            EventDeleteHandling="CallBack"
            OnEventDelete="DayPilotScheduler1_OnEventDelete"
            
            OnBeforeEventRender="DayPilotScheduler1_OnBeforeEventRender"
            OnCommand="DayPilotScheduler1_OnCommand"
            >
            <TimeHeaders>
                <DayPilot:TimeHeader GroupBy="Month" />
                <DayPilot:TimeHeader GroupBy="Day" Format="ddd d"/>
                <DayPilot:TimeHeader GroupBy="Hour" Format="ht" />
            </TimeHeaders>            
        </DayPilot:DayPilotScheduler>
        
        <div class="space">
            <asp:LinkButton runat="server" ID="ButtonClear" OnClick="ButtonClear_OnClick">Delete All Free Slots</asp:LinkButton> (This Month)</div>        

    </div>
    
<script>
    function scale(size) {
        dp.clientState.size = size;
        dp.commandCallBack("refresh");
    }

</script>    
  </asp:Panel>
     
 </form>
</body>
</html>
