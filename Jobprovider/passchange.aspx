<%@ Page Title="" Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="passchange.aspx.cs" Inherits="Jobprovider_passchange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
h2
    {
        text-align:center;
        margin-top: 8px;
        font-family:banner;
       color:#fff;
        }
  h3
    {
        text-align:center;
        margin-top: 6px;
        font-family:banner;
        color:#fff;
        }      
       
      

        
        ::-webkit-input-placeholder
        {
            text-align:center;
         }
         
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-top:-16.8%; margin-left:-3%; Height:520px; Width:1315px; border:1px solid White;">
    
    <div style=" height:100%; width:90%; background-color:white; margin-top:1%; margin-left:5%; ">
    <div style=" height:13%;  width:60%; background-color:#383860; border-radius:50px; margin-top:4%; margin-left:13%">
       
        <h2 style=" position:absolute; margin-left:230px; margin-top:19px;">CHANGE PASSWORD</h2>
        </div>
        <div style= "border: 2px solid #383860; width:90%; height:70%; margin-top:2% ">
        <div style=" border:1px solid #b96e46; background-color:#A03040; height:50px; width:200px; margin-left:20%; margin-top:2%;"><h3>USERNAME</h3></div> 
        <div style="  height:40px; width:180px;  margin-top:-4.7%; margin-left:58%; position:absolute;">
        <asp:TextBox ID="user"  runat="server" Height="35px" Width="200px"></asp:TextBox>
          
        </div>

        <div style=" border:1px solid #b96e46; background-color:#A03040; height:50px; width:200px; margin-left:20%; margin-top:3%;"><h3>OLD PASSWORD</h3></div> 
        <div style="  height:40px; width:180px; margin-left:58%; margin-top:-4.5%;  position:absolute;">
         <asp:TextBox ID="oldpass"  runat="server" TextMode="Password" Height="35px" Width="200px"></asp:TextBox>  
         
        </div>


        <div style=" border:1px solid #b96e46; background-color:#A03040; height:50px; width:200px; margin-left:20%; margin-top:3%;"><h3>NEW PASSWORD</h3></div> 
        <div style="  height:40px; width:180px; margin-left:58%; margin-top:-4.3%;  position:absolute;">
        <asp:TextBox ID="newpass" TextMode="Password"  runat="server" Height="35px" Width="200px"></asp:TextBox>
           
        </div>

        <div style=" border:1px solid #b96e46; background-color:#A03040; height:50px; width:200px; margin-left:20%; margin-top:3%;"><h3>CONFIRM PASSWORD</h3></div> 
        <div style="  height:50px; width:180px; margin-left:58%; margin-top:-4.3%;  position:absolute;">
        <asp:TextBox ID="passconf" TextMode="Password"  runat="server" Height="35px" Width="200px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" ControlToCompare="newpass" ControlToValidate="passconf" ForeColor="Red"
            runat="server" ErrorMessage="Password Doesn't Match"></asp:CompareValidator>
        </div></div>

        
        <div style="  height:40px; width:150px; margin-left:85.4%; margin-top:0%; position:absolute;">
        <asp:Button ID="Button1" runat="server" OnClick="btnsub"   Text="SUBMIT" Height="50px" Font-Bold="true" Font-Size="25px"
                Width="200px" BackColor="#383860" ForeColor="White" BorderStyle="None" /></div>

      <div style="  height:40px; width:150px; margin-left:-0.0%; margin-top:0%; position:absolute;">
            <asp:Button ID="Button2" runat="server" OnClick="reset"   Text="CLEAR" Height="50px" Font-Bold="true"  Font-Size="25px"
                Width="200px" BackColor="#E51616" ForeColor="White" BorderStyle="None"/>
              </div>



     </div>
     </div>
     
</asp:Content>

