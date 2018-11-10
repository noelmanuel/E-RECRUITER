<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/seeker.master" AutoEventWireup="true" CodeFile="viewschedule.aspx.cs" Inherits="Jobseeker_viewschedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.lb
{
    text-align:center;
        
    
    
    }
    .lc
{
    text-align:center;
    
    }
    .ld
{
    text-align:center;
    
    }
    .le
{
    text-align:center;
    
    }
    .lf
{
    text-align:center;
    
    
    }
    
    .ha
    {
        text-align:center;
        line-height:50px;
      
        
        
     }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style=" border:1px solid White; width:100%;  height:auto; margin-top:-9%; margin-left:10%;  ">
<h3  style=" color:#1ab188;">EXAM SCHEDULE DETAILS</h3>

<div style=" height:60px; width:240px; border:1px solid #fc5e20; background-color:#fc5e20; display:inline-block; "> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
    <asp:Label ID="Ld" runat="server" Text="Register No" Height="60" Width="240" ForeColor="White" CssClass="lb"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp
<div style=" height:60px; width:240px; border:1px solid White; display:inline-block; position:fixed;  ">
    <asp:Label ID="lb5" runat="server" Height="60" Width="240" BorderStyle="Groove" CssClass="ha"></asp:Label>
</div>

<br /><br />

<div style=" height:60px; width:240px; border:1px solid #fc5e20; background-color:#fc5e20; display:inline-block;"> &nbsp &nbsp &nbsp &nbsp 
    <asp:Label ID="Lf" runat="server" Text="Company Name" Height="60" Width="240" ForeColor="White" CssClass="lc"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp 
<div style=" height:60px; width:240px; border:1px solid White; display:inline-block;  position:absolute;">
    <asp:Label ID="lb1" runat="server"  Height="60" Width="240" BorderStyle="Groove" CssClass="ha"></asp:Label>
</div>

<br /><br />
<div style=" height:60px; width:240px; border:1px solid #fc5e20; background-color:#fc5e20; display:inline-block;"> &nbsp &nbsp &nbsp &nbsp 
    <asp:Label ID="Label3" runat="server" Text="Job Name" Height="60" Width="240" ForeColor="White" CssClass="ld"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp 
<div style=" height:60px; width:240px; border:1px solid White; display:inline-block; position:absolute;">
    <asp:Label ID="lb2" runat="server"  Height="60" Width="240" BorderStyle="Groove" CssClass="ha"></asp:Label>
</div>

<br /><br />
<div style=" height:60px; width:240px; border:1px solid #fc5e20; background-color:#fc5e20; display:inline-block;"> &nbsp &nbsp &nbsp &nbsp 
    <asp:Label ID="Label5" runat="server" Text="Date" Height="60" Width="240" ForeColor="White" CssClass="le"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp 
<div style=" height:60px; width:240px; border:1px solid White; display:inline-block; position:absolute;">
    <asp:Label ID="lb3" runat="server"  Height="60" Width="240" BorderStyle="Groove" CssClass="ha"></asp:Label>
</div>

<br /><br />
<div style=" height:60px; width:240px; border:1px solid #fc5e20; background-color:#fc5e20; display:inline-block;"> &nbsp &nbsp &nbsp &nbsp 
    <asp:Label ID="Label7" runat="server" Text="Syllabus" Height="60" Width="240" ForeColor="White" CssClass="le"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp 
<div style=" height:60px; width:240px; border:1px solid White; display:inline-block; position:absolute;">
    <asp:Label ID="lb4" runat="server"  Height="60" Width="240" BorderStyle="Groove" CssClass="ha"></asp:Label>
</div>






</div>
</asp:Content>

