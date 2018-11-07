<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="sentmail.aspx.cs" Inherits="Admin_sentmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .name
    {
        position:absolute;
        margin-left:8%;
        margin-top:10%;
        border-radius:13px;
        border: 1px solid #e2dede;
        outline:none;
        padding-left:10px;
        font-weight:bold;
        text-align:center;
        color:#1ab188;
        
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
<asp:Panel ID="pnlcompose" runat="server" Width="1200" Height="530">
<div style=" height:530px; width:1200px; margin-top:-12%;">

<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:63.2%;">
    <asp:Button ID="Button2" runat="server" Text="Inbox" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" OnClick="inboxc" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:74%;">
    <asp:Button ID="Button3" runat="server" Text="Compose" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" OnClick="composec" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:84.5%;">
    <asp:Button ID="Button4" runat="server" Text="Sent Mail" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" OnClick="sentc" /></div>

<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-top:42%;">
    <asp:Button ID="Button5" runat="server" Text="Clear" OnClick="clear" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" /></div>


<div style=" background-color:#f6b440; height:460px; width:1140px; position:absolute; margin-top:3%; ">
<div style=" background-color:#e6e1e1; height:430px; width:1105px; position:absolute; margin-top:15px; margin-left:17px;">
    <asp:Label ID="lblcomposefrom" runat="server" CssClass="name" Height="50" Width="390"></asp:Label></br>
    <asp:DropDownList ID="drpcomposeto" runat="server" CssClass="email" Height="50" Width="405">
    <asp:ListItem>Senders Name</asp:ListItem>
    </asp:DropDownList>
    </br>
    <asp:TextBox ID="TextBox3" runat="server" Height="50" Width="390" CssClass="sub" placeholder="Subject"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" CssClass="msg" Height="200" Width="490" placeholder="Message" ></asp:TextBox></br>
    <asp:Button ID="Button1" runat="server" Text="SENT" CssClass="but" Height="50" Width="930" OnClick="butsub" />
    <asp:Label ID="lblmsgto" runat="server" ></asp:Label>
    <asp:Label ID="lblmsg" runat="server" ></asp:Label>
</div>



</div>
</div>
</asp:Panel>
</asp:Content>

