<%@ Page Title="" Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="~/Jobprovider/addjob.aspx.cs" Inherits="Jobprovider_addjob" %>  
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
        color:White;
        }
        .txtbox
        {
            
            }
        ::-webkit-input-placeholder
        {
            text-align:center;
         }
         
             .jobadd
         {
             position:absolute;
             margin-left:62%;
             margin-top:-6.5%;
             }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-top:-16.8%; margin-left:-4.4%; Height:580px; Width:1315px; border:1px solid White;">
    
    <div style=" height:90%; width:90%; background-color:#e9f79d; margin-top:3%; margin-left:5%; ">
    <h2 style=" position:absolute; margin-left:5%; margin-top:23%; color:#E51616;">JOB DETAILS</h2>

        <div style=" height:691%; width:88%; background-color:#fff; margin-top:0.5%; margin-left:28%; position:absolute;">
        <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:3%;  margin-top:13%;"><h3>COMPANY NAME</h3></div>
        <div style="  height:40px; width:180px; margin-left:40%; margin-top:-4.8%; position:absolute;">
            <asp:Label ID="lblprovider" runat="server" ></asp:Label></div>


            <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:3%; margin-top:5%;"><h3>ADD JOB</h3></div>
        <div style="  height:40px; width:180px; margin-left:40%; margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="jobadd"  runat="server" Height="35px" Width="180px"></asp:TextBox></div>

        <div style=" border:1px solid red; height:40px; width:150px; margin-left:61.8%; margin-top:6%; position:absolute;">
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" Height="40px" 
                Width="150px" BackColor="#1AB188" ForeColor="White" BorderStyle="None" OnClick="btnsub"/></div>
                
       

           </div>
           </div>
           </div>
           </asp:Content>


