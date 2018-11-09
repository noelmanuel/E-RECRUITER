<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="examsch.aspx.cs" Inherits="Admin_examsch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.lab
{
    
    border-radius:10px;
    padding:3%;
    border:1px solid black;
    text-align:center;
    font-size:medium;
    font-weight:bold;
    margin-left:25%;
    margin-top:2%;
    }
    .leftbo
{
    
    border-radius:10px;
    padding:3%;
    border:1px solid black;

    
    font-size:medium;
    
    margin-left:25%;
    margin-top:2%;
   
    }
    .exam
    {
        text-align:center;
        margin-top:18px;
        
        }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" width:99%; height:auto; border:1px solid White; margin-top:-5%;">
<h3 style=" color:#1ab188;">SCHEDULE OF ONLINE EXAM</h3></br>

<div style="width:100%;">
<div style=" height:60px; width:250px; border:2px solid #ce8c45; display:inline-block; border-radius:10px;">
    <asp:Label ID="Label1" runat="server" Text="Company" Height="60" Width="240" Font-Bold="True" Font-Size="Large" CssClass="exam"></asp:Label></div> &nbsp&nbsp
<div style=" height:60px; width:250px; border:2px solid #ce8c45; display:inline-block; border-radius:10px;">
    <asp:Label ID="Label2" runat="server" Text="Job Title" Height="60" Width="240" CssClass="exam" Font-Bold="True" Font-Size="Large" ></asp:Label></div> &nbsp&nbsp
<div style=" height:60px; width:250px; border:2px solid #ce8c45; display:inline-block; border-radius:10px;">
    <asp:Label ID="Label3" runat="server" Text="Date of Exam" Height="60" Width="240" CssClass="exam" Font-Bold="True" Font-Size="Large"></asp:Label></div> &nbsp&nbsp
<div style=" height:60px; width:250px; border:2px solid #ce8c45; display:inline-block; border-radius:10px;">
    <asp:Label ID="Label4" runat="server" Text="Syllabus of Exam" Height="60" Width="240" CssClass="exam" Font-Bold="True" Font-Size="Large"></asp:Label></div>
</div>

<p></p>

<div style=" width:100%;">
<div style=" height:60px; width:250px;  display:inline-block; margin-left:4px;">
    <asp:DropDownList ID="ddcomp" runat="server" Height="65" OnSelectedIndexChanged="ddcomp_SelectedIndexChanged" AutoPostBack="true" Width="250">
    </asp:DropDownList>
</div> &nbsp&nbsp
<div style=" height:60px; width:250px;  display:inline-block;">
    <asp:DropDownList ID="ddjob"  AutoPostBack="true" runat="server" Height="65" Width="250">
    </asp:DropDownList>
</div> &nbsp&nbsp&nbsp
<div style=" height:60px; width:250px;  display:inline-block;">
    <asp:TextBox ID="txtdt" runat="server" type="date" Height="60" Width="250"></asp:TextBox></div> &nbsp&nbsp
<div style=" height:60px; width:250px;  display:inline-block;">
    <asp:TextBox ID="txtsyll" runat="server" Height="60" Width="250"></asp:TextBox></div> 
</div>

<p></br></p>
    <asp:Button ID="btnadd" OnClick="btnadd_Click" runat="server" Text="Submit" Height="40" Width="120" ForeColor="White" BackColor="#1AB188" BorderStyle="None" />
    <asp:Button ID="LinkButton1" OnClick="LinkButton1_Click1" runat="server" Text="Check Schedule" Height="40" Width="120" ForeColor="White" BackColor="#1AB188" BorderStyle="None" />
</div>
</asp:Content>

