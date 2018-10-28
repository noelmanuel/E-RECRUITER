<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="communication.aspx.cs" Inherits="Admin_communication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .name
    {
        position:absolute;
        margin-left:8%;
        margin-top:8%;
        border-radius:13px;
        border: 1px solid #e2dede;
        outline:none;
        padding-left:10px;
        
     }
     .email
    {
        position:absolute;
        margin-left:8%;
        margin-top:13%;
        border-radius:13px;
        border: 1px solid #e2dede;
        outline:none;
        padding-left:10px;
     }
     .sub
    {
        position:absolute;
        margin-left:8%;
        margin-top:18%;
        border-radius:13px;
        border: 1px solid #e2dede;
        outline:none;
        padding-left:10px;
        
        
     }
     .msg
    {
        position:absolute;
        margin-left:47%;
        margin-top:50px;
        border-radius:13px;
        border: 1px solid #e2dede;
        outline:none;
        padding-left:10px;
     }
     
     .but
    {
        position:absolute;
        margin-left:8%;
        margin-top:23%;
        border-radius:13px;
        border:none;
        outline:none;
        color:White;
        background-color:#E84C3D;
     }
     .but:hover
     {
         background-color:#f66153;
         }
      .nob
      {
          border:none;
          
          }
     
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" height:530px; width:1200px; margin-top:-12%;">

<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:63.2%;">
    <asp:Button ID="Button2" runat="server" Text="Inbox" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:74%;">
    <asp:Button ID="Button3" runat="server" Text="Compose" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:84.5%;">
    <asp:Button ID="Button4" runat="server" Text="Sent Mail" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" /></div>

<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-top:42%;">
    <asp:Button ID="Button5" runat="server" Text="Clear" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" /></div>


<div style=" background-color:#f6b440; height:460px; width:1140px; position:absolute; margin-top:3%; ">
<div style=" background-color:#e6e1e1; height:430px; width:1105px; position:absolute; margin-top:15px; margin-left:17px;">
    <asp:TextBox ID="TextBox1" runat="server" CssClass="name" Height="50" Width="390" placeholder="Name"></asp:TextBox></br>
    <asp:TextBox ID="TextBox2" runat="server" Height="50" Width="390" CssClass="email" placeholder="Email Address"></asp:TextBox></br>
    <asp:TextBox ID="TextBox3" runat="server" Height="50" Width="390" CssClass="sub" placeholder="Subject"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" CssClass="msg" Height="200" Width="490" placeholder="Message" ></asp:TextBox></br>
    <asp:Button ID="Button1" runat="server" Text="SENT" CssClass="but" Height="50" Width="930"  />
</div>



</div>
</div>
</asp:Content>

