<%@ Page Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="vacancy.aspx.cs" Inherits="Jobprovider_vacancy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
h3
    {
        text-align:center;
        margin-top: 8px;
        font-family:banner;
        color:#fff;
        }
        h4
    {
        text-align:center;
        margin-top: 1px;
        margin-right:-10px;
        color:White;
        }
        .txtbox
        {
            
            }
        ::-webkit-input-placeholder
        {
            text-align:center;
         }
         
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-top:-16.8%; margin-left:-4.4%; Height:580px; Width:1315px; border:1px solid White;">
    
    <div style=" height:90%; width:90%; background-color:#e9f79d; margin-top:3%; margin-left:5%; ">
    <h2 style=" position:absolute; margin-left:3%; margin-top:23%; color:#E51616;">VACANCY DETAILS</h2>
     <div style=" height:691%; width:88%; background-color:#fff; margin-top:0.5%; margin-left:28%; position:absolute; ">
     <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:3%;  margin-top:1%;"><h3>JOB TITLE</h3></div>
        <div style="  height:40px; width:180px; margin-left:40%; margin-top:-4.8%; position:absolute;">
        <asp:DropDownList ID="title" OnSelectedIndexChanged="title_SelectedIndexChanged"  runat="server" Height="40px" Width="180px" AutoPostBack="True">
            <asp:ListItem Selected hidden>TITLE</asp:ListItem>
            </asp:DropDownList>
            
            <div style="border:1px solid #b96e46; background-color:#b96e46; height:20px; width:250px; margin-left:-80%; margin-top:5%;"><h4>ELIGIBILITY CRITERIA</h4></div>
        <div style="border:1px solid #b96e46; height:40px; width:120px; margin-left:-143px; margin-top: 2.5%; position:absolute;">
        <asp:DropDownList ID="course" OnSelectedIndexChanged="course_SelectedIndexChanged"  runat="server" Height="40px" Width="120px" AutoPostBack="True">
            <asp:ListItem Selected hidden>COURSE</asp:ListItem>
            </asp:DropDownList></div>
            <div style=" border:1px solid #b96e46; height:40px; width:120px; margin-left:-10px; margin-top:2.5%; position:absolute;">
            <asp:DropDownList ID="branch" OnSelectedIndexChanged="branch_SelectedIndexChanged"  runat="server" Height="40px" Width="120px" AutoPostBack="True">
             <asp:ListItem Selected hidden>BRANCH</asp:ListItem>
            </asp:DropDownList></div>
            
            <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:-184%; margin-top:35%;"><h3> RECRUITMENT PROCESS</h3></div>
        <div style="  height:40px; width:509px; margin-left:10%; margin-top:-24%; position:absolute">
            <asp:TextBox ID="process" runat="server" Height="35px" Width="180px"></asp:TextBox></div>
            <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:-184%;  margin-top:4%;"><h3>SALARY/annum</h3></div>
        <div style="  height:40px; width:180px; margin-left:10%; margin-top:-24%; position:absolute">
            <asp:TextBox ID="salary"  runat="server" Height="35px" Width="180px"></asp:TextBox></div>
             <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:-184%;  margin-top:4%;"><h3>LOCATION</h3></div>
        <div style="  height:40px; width:180px; margin-left:10%; margin-top:-24%; position:absolute">
            <asp:TextBox ID="loc"  runat="server" Height="35px" Width="180px"></asp:TextBox></div>
             <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:-184%;  margin-top:4%;"><h3>EXPERIENCE</h3></div>
        <div style="  height:40px; width:180px; margin-left:10%; margin-top:-24%; position:absolute">
            <asp:TextBox ID="exp"  runat="server" Height="35px" Width="180px"></asp:TextBox></div>
             <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:-184%;  margin-top:4%;"><h3>NO:OF VACANCIES</h3></div>
        <div style="  height:40px; width:180px; margin-left:10%; margin-top:-24%; position:absolute">
            <asp:TextBox ID="vac" runat="server" Height="35px" Width="180px"></asp:TextBox></div>
             <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:-184%;  margin-top:4%;"><h3>DURATION</h3></div>
        <div style="  height:40px; width:180px; margin-left:10%; margin-top:-24%; position:absolute">
            <asp:TextBox ID="period"  runat="server" Height="35px" Width="180px"></asp:TextBox></div>


            <div style=" border:1px solid red; height:40px; width:150px; margin-left:1%; margin-top:6%; position:absolute;">
            <asp:Button ID="Button1" OnClick="btnsub" runat="server" Text="SUBMIT" Height="40px" 
                Width="150px" BackColor="#1ab188" ForeColor="White" BorderStyle="None"/></div>
        <div style=" border:1px solid white; height:40px; width:150px; margin-left:100%; margin-top:6%; position:absolute;">
            <asp:Button ID="Button2" OnClick="reset" runat="server" Text="CLEAR" Height="40px" 
                Width="150px" BackColor="#ececec" ForeColor="Black" BorderStyle="None"/>
                </div>

</div>
</div>
</div></div>
</asp:Content>
