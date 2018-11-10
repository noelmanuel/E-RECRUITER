<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="addquestion.aspx.cs" Inherits="Admin_addquestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">

.ba
{
    text-align:center;
    line-height:35px;
    font-weight:bold;
    }



</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" border:1px solid white; width:100%; height:auto; margin-top:-13%;">
<h3 style="COLOR:#1AB188;">ADD QUESTION</h3>
<br />

<div style=" width:100%;">
<div style=" display:inline-block; width:200px; height:40px; border:2px solid #ce8c45;">
    <asp:Label ID="Label1" runat="server" Text="Company Name" Height="40px" 
        Width="200px" CssClass="ba" BorderStyle="None"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp
<div style=" display:inline-block; width:200px; height:40px; border:1px solid white; position:absolute;">
    <asp:DropDownList ID="ddcomp" runat="server" Height="40" Width="200" AutoPostBack="true" OnSelectedIndexChanged="ddcomp_SelectedIndexChanged">
    </asp:DropDownList>
</div>
</div>

<br />
<div style=" width:100%;">
<div style=" display:inline-block; width:200px; height:40px; border:2px solid #ce8c45;">
    <asp:Label ID="Label2" runat="server" Text="Job Name" Height="40px" 
        Width="200px" CssClass="ba" BorderStyle="None"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp
<div style=" display:inline-block; width:200px; height:40px; border:1px solid white;">
    <asp:DropDownList ID="ddjob"  AutoPostBack="true" runat="server" Height="40" Width="200">
    </asp:DropDownList>
</div>
</div>

<br />
<br />
<div style=" width:100%;">
<div style=" display:inline-block; width:200px; height:40px; border:2px solid #ce8c45;">
    <asp:Label ID="Label3" runat="server" Text="Add Question" Height="40px" 
        Width="200px" CssClass="ba" BorderStyle="None"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp
<div style=" display:inline-block; width:500px; height:40px; border:1px solid white;">
    <asp:TextBox ID="txtqns" runat="server" Height="40" Width="500"></asp:TextBox></div>
</div>

<br />
<div style=" width:100%;">
<div style=" display:inline-block; width:200px; height:40px; border:2px solid #ce8c45;">
    <asp:Label ID="Label4" runat="server" Text="Options" Height="40px" 
        Width="200px" CssClass="ba" BorderStyle="None"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp
<div style=" display:inline-block; width:108px; height:40px; border:1px solid white;">
    <asp:TextBox ID="txtch1" runat="server" Height="40" Width="108" placeholder="Option1"></asp:TextBox></div> &nbsp &nbsp 
<div style=" display:inline-block; width:108px; height:40px; border:1px solid white;">
    <asp:TextBox ID="txtch2" runat="server" Height="40" Width="108" placeholder="Option2"></asp:TextBox></div> &nbsp &nbsp 
<div style=" display:inline-block; width:108px; height:40px; border:1px solid white;">
    <asp:TextBox ID="txtch3" runat="server" Height="40" Width="108" placeholder="Option3"></asp:TextBox></div> &nbsp &nbsp 
<div style=" display:inline-block; width:108px; height:40px; border:1px solid white;">
    <asp:TextBox ID="txtch4" runat="server" Height="40" Width="108" placeholder="Option4"></asp:TextBox></div> &nbsp &nbsp 
</div>
<br />

<div style=" width:100%;">
<div style=" display:inline-block; width:200px; height:40px; border:2px solid #ce8c45;">
    <asp:Label ID="Label5" runat="server" Text="Correct Answer" Height="40px" 
        Width="200px" CssClass="ba" BorderStyle="None"></asp:Label></div> &nbsp &nbsp &nbsp &nbsp
<div style=" display:inline-block; width:200px; height:40px; border:1px solid white;">
    <asp:TextBox ID="txtans" runat="server" Height="40" Width="500"></asp:TextBox></div>
</div>
<br />
<br />
<br />
<div style=" width:100%;">
<div style=" display:inline-block; width:120px; height:40px; border:1px solid white;">
    <asp:Button ID="btnadd" OnClick="btnadd_Click" runat="server" Text="Sumbit Question" Height="40" 
        Width="120" ForeColor="White" BackColor="#1AB188" BorderStyle="None" /></div> &nbsp &nbsp
<div style=" display:inline-block; width:120px; height:40px; border:1px solid White;">
    <asp:Button ID="Button2" runat="server" Text="Clear" Height="40" Width="120" 
        ForeColor="White" BackColor="#1AB188" BorderStyle="None" /></div>
</div>

</div>
</asp:Content>

