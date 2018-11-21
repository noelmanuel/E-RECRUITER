<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/seeker.master" AutoEventWireup="true" CodeFile="examlogin.aspx.cs" Inherits="Jobseeker_examlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.im
{
    margin-left:15%;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" border:1px solid white; width:50%; height:auto; margin-left:30%; margin-top:-15%;">

<div style=" width:100%; height:auto; border:1px solid white;">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/EXAM.jpg" Height="200" Width="350" CssClass="im" /></div>


<div style=" width:100%; height:60px; border:1px solid #1657ce; color:White; border-radius:10px 10px 0px 0px; background-color:#1657ce;"><h3 style=" text-align:center;">ONLINE EXAM LOGIN</h3></div>


<div style=" width:100%; margin-top:5%;">
<div style=" display:inline-block; width:120px; height:40px; margin-left:6%; border:1px solid white;">
    <asp:TextBox ID="txtrn" runat="server" Height="40" Width="120" placeholder="Register No"></asp:TextBox></div> &nbsp &nbsp &nbsp &nbsp
<div style=" display:inline-block; width:120px; height:40px; border:1px solid white;">
    <asp:DropDownList ID="ddcomp" OnSelectedIndexChanged="ddcomp_SelectedIndexChanged"  AutoPostBack="true" runat="server" Height="45" Width="120">
    </asp:DropDownList>
</div> &nbsp &nbsp &nbsp &nbsp
<div style=" display:inline-block; width:120px; height:40px; border:1px solid white;">
    <asp:DropDownList ID="ddjob" AutoPostBack="true" runat="server" Height="45" Width="120">
    </asp:DropDownList>


</div>
<asp:RequiredFieldValidator
        ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtrn" ForeColor="Red" ErrorMessage="Enter Register no"></asp:RequiredFieldValidator>
</div>
<br />
<br />
<div style=" width:100%;">
<div style=" display:inline-block; width:120px; height:40px; margin-left:23%; border:1px solid white;">
    <asp:Button ID="btnsub" OnClick="btnsub_Click" runat="server" Text="Start Exam" Height="40" Width="120" BackColor="#1AB188" ForeColor="White" BorderStyle="None" /></div> &nbsp &nbsp
<div style=" display:inline-block; width:120px; height:40px; border:1px solid White;">
    <asp:Button ID="Button2" runat="server" Text="Exit" Height="40" Width="120" 
        OnClick="exit" BackColor="Red" ForeColor="White" BorderStyle="None" 
        CausesValidation="False" /></div>
<p></p>
</div>



</div>
</asp:Content>

