<%@ Page Title="" Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="shortlistcv.aspx.cs" Inherits="Jobprovider_shortlistcv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.err
{
    margin-left:26%;
    margin-top:6%;
    position:absolute;
    }
    
    .ert
    {
        margin-left:8%;
    margin-top:1%;
    position:absolute;
        }
        .bt
        {
            margin-left:50%;
        }
        
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" border:1px solid white; width:100%; "> 
<br />
<br />

<h3 style=" color:#383860;">SHORT LISTED CANDIDATE CV</h3>

<div style=" width:200px; height:50px; border:1px solid black; display:inline-block; margin-left:10%; text-align:center;"><h4>Candidate Name</h4></div> &nbsp &nbsp &nbsp &nbsp
<div style=" width:200px; height:50px; border:1px solid black; display:inline-block; text-align:center;"> <h4>Download</h4></div>
<br />
<div style=" width:200px; height:50px; border:1px solid white; display:inline-block; margin-left:10%;"><asp:Label ID="Label1"  runat="server" CssClass="ert"></asp:Label></div>
<div style=" width:200px; height:50px; border:1px solid white; margin-left:30px;  position:absolute; display:inline-block;">
    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" CssClass="err">Download CV</asp:HyperLink></div><br /><br />
<div style=" width:200px; height:50px; border:none; display:inline-block;">
    <asp:Button ID="Button1" runat="server" Text="NEXT"  Height="50" Width="200" 
        onclick="Button1_Click" BackColor="#383860" ForeColor="White" BorderStyle="None" CssClass="bt" />
</div>
    
    
    

</div>
        </asp:Content>