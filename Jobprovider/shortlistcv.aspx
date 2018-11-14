<%@ Page Title="" Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="shortlistcv.aspx.cs" Inherits="Jobprovider_shortlistcv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.err
{
    margin-left:30%;
    margin-top:15%;
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
            margin-left:175%;
            margin-top: 30%;
        }
        h2
    {
        text-align:center;
        margin-top: 8px;
        font-family:banner;
       color:#fff;
       font-size:20px;
        }
  h3
    {
        text-align:center;
        margin-top: 8px;
        font-family:banner;
        color:#fff;
        font-size:15px;
        }      
        
        h4
    {
        text-align:center;
        margin-top: 14px;
        margin-right:-10px;
        color:White;
        }
      

        
        ::-webkit-input-placeholder
        {
            text-align:center;
         }
        
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-top:-15%; margin-left:3%; Height:520px; Width:1315px; border:1px solid White;">
    
    <div style=" height:90%; width:90%; background-color:white; margin-top:1%; margin-left:5%; ">
    <div style=" height:10%;  width:45%; background-color:#383860; border-radius:50px; margin-top:4%; margin-left:11.7%">
       
        <h2 style=" position:absolute; margin-left:155px; margin-top:11px;">SHORT LISTED CANDIDATE CV</h2>
        </div>

<div style=" width:200px; height:50px; border:1px solid #b96e46; background-color:#A03040; display:inline-block; margin-top:5%; margin-left:16%; text-align:center;"><h4>Candidate Name</h4></div> &nbsp &nbsp &nbsp &nbsp
<div style=" width:200px; height:50px; border:1px solid #b96e46; background-color:#A03040; display:inline-block; text-align:center;"> <h4>Download</h4></div>
<br />
<div style=" width:200px; height:50px; border:1px solid white; display:inline-block; margin-top:1.5%; margin-left:15%;">
<asp:Label ID="Label1" Text="" runat="server" CssClass="ert"></asp:Label></div>
<div style=" width:200px; height:50px; border:1px solid white; margin-left:30px;  position:absolute; display:inline-block;">
    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" CssClass="err" Width="100">Download CV</asp:HyperLink></div><br /><br />
<div style=" width:200px; height:50px; border:none; display:inline-block;">
    <asp:Button ID="next" runat="server" Text="NEXT"  Height="40px"  Font-Size="15px"
                Width="130px" BackColor="#383860" ForeColor="White" BorderStyle="None" CssClass="bt" />
</div>
    
    
    
</div>
</div>
        </asp:Content>