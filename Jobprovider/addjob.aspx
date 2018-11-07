<%@ Page Title="" Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="~/Jobprovider/addjob.aspx.cs" Inherits="Jobprovider_addjob" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
h1
    {
       
        font-family:banner;
        color:#b96e46;
        }
        h3
    {
        text-align:center;
        margin-top: 8px;
        color:White;
        }
        .txtbox
        {
            
            }
        ::-webkit-input-placeholder
        {
            text-align:center;
         }
         
             .jobadd
         {
             position:absolute;
             margin-left:150%;
             margin-top:-6%;
             }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-top:-17.8%; margin-left:-4.4%; Height:580px; Width:1300px; border:1px solid White;">
    
    <div style=" height:90%; width:90%; background-color:white; margin-top:3%; margin-left:5%; ">
    <div style=" height:15%;  width:90%; background-color:#1AB188; border-radius:30px; margin-top:5%; margin-left:6%">
        <div style=" background-color:White; border-radius:80px; height:170px; width:170px; margin-top:-45px; position:absolute; margin-left:440px">
        <h1 style=" position:absolute; margin-left:17px; margin-top:65px;">ADD JOB</h1>
        
       </div></div>
        <div style=" border:1px solid #b96e46; background-color:red; height:40px; width:350px; margin-left:11%;  margin-top:5%;"><h3>COMPANY NAME</h3></div>
        <div style="  height:40px; width:180px; margin-left:85%; margin-top:-4.1%; position:absolute; font-size:25px;">
        <asp:Label ID="lblprovider" runat="server" ></asp:Label>
        </div>

        


        <div style=" border:1px solid #b96e46; background-color:red; height:40px; width:350px; margin-left:11%; margin-top:7%;"><h3>ADD JOB</h3></div> 
        <div style="  height:40px; width:180px; margin-left:70%; margin-top:-4.1%; position:absolute;">
        <asp:TextBox ID="jobadd"  runat="server" Height="35px" Width="350px"></asp:TextBox>
        </div>
            

        <div style="  height:40px; width:230px; margin-left:12.7%; margin-top:9%; position:absolute;">
        <asp:Button ID="Button1" runat="server"  Text="SUBMIT" Height="50px" Font-Bold="true" Font-Size="25px"
                Width="939px" BackColor="#1AB188" ForeColor="White" BorderStyle="None" OnClick="btnsub"/></div>


        </div>        
       </div>
      
        
          
           </asp:Content>


