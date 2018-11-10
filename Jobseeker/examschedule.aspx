<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/seeker.master" AutoEventWireup="true" CodeFile="examschedule.aspx.cs" Inherits="Jobseeker_examschedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.lb
{
    margin-left:25%;
    
    
    }
    .lc
{
    margin-left:37%;
    
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" border:1px solid White; width:100%; margin-top:-7%; height:auto;">
<h3  style=" color:#1ab188;">EXAM SCHEDULE</h3>

<div style=" height:60px; width:240px; border:1px solid #fc5e20; background-color:#fc5e20; display:inline-block;"> &nbsp &nbsp &nbsp &nbsp 
    <asp:Label ID="Ld" runat="server" Text="Company Name" Height="60" Width="240" ForeColor="White" CssClass="lb"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp 
<div style=" height:60px; width:240px; border:1px solid White; display:inline-block;">
    <asp:DropDownList ID="ddcomp" AutoPostBack="true" OnSelectedIndexChanged="ddcomp_SelectedIndexChanged" runat="server" Height="60" Width="240">
    </asp:DropDownList>
</div>
<br /></br>
<div style=" height:60px; width:240px; border:1px solid #fc5e20; background-color:#fc5e20; display:inline-block;"> &nbsp &nbsp &nbsp &nbsp 
    <asp:Label ID="Lf" runat="server" Text="Job Name" Height="60" Width="240" ForeColor="White" CssClass="lc"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp 
<div style=" height:60px; width:240px; border:1px solid White; display:inline-block;">
    <asp:DropDownList ID="ddjob" runat="server" AutoPostBack="true" Height="60" Width="240">
    </asp:DropDownList>
</div>
</br></br>

<asp:Button ID="btnsu" runat="server" Text="Submit" OnClick="btnsu_Click" Height="40" Width="120" ForeColor="White" BackColor="#1AB188" BorderStyle="None" />
</div>
</asp:Content>

