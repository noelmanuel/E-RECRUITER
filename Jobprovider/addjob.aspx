<%@ Page Title="" Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="~/Jobprovider/addjob.aspx.cs" Inherits="Jobprovider_addjob" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
h1
    {
       
        font-family:banner;
        color:#b96e46;
        font-size:25PX;
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
<div style="margin-top:-14.8%; margin-left:3%; Height:580px; Width:1300px; border:1px solid White;">
    
    <div style=" height:90%; width:90%; background-color:white; margin-top:1%; margin-left:5%; ">
    <div style=" height:10%;  width:55%; background-color:#383860; border-radius:50px; margin-top:4%; margin-left:11.7%">
        <div style=" background-color:White; border-radius:80px; height:170px; width:170px; margin-top:-58px; position:absolute; margin-left:245px">
        <h1 style=" position:absolute; margin-left:30px; margin-top:70px;">ADD JOB</h1>
        
       </div></div>
        <div style=" border:1px solid #b96e46; background-color:#A03040; height:40px; width:200px; margin-left:15%;  margin-top:5%;"><h3>COMPANY NAME</h3></div>
        <div style="  height:40px; width:180px; margin-left:55%; margin-top:-4.1%; position:absolute; font-size:17px;">
        <asp:Label ID="lblprovider" runat="server" ></asp:Label>
        </div>

        


        <div style=" border:1px solid #b96e46; background-color:#A03040; height:40px; width:200px; margin-left:15%; margin-top:7%;"><h3>ADD JOB</h3></div> 
        <div style="  height:40px; width:180px; margin-left:53.5%; margin-top:-4.1%; position:absolute;">
        <asp:TextBox ID="jobadd"  runat="server" Height="35px" Width="200px"></asp:TextBox>
        </div>
            

        <div style="  height:40px; width:230px; margin-left:17.1%; margin-top:7%; position:absolute;">
        <asp:Button ID="Button1" runat="server"  Text="SUBMIT" Height="50px"  Font-Size="20px"
                Width="575px" BackColor="#383860" ForeColor="White" BorderStyle="None" OnClick="btnsub"/></div>


        </div>        
       </div>
      
        
          
           </asp:Content>


