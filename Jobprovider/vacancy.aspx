<%@ Page Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="vacancy.aspx.cs" Inherits="Jobprovider_vacancy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
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
        margin-top: 1px;
        margin-right:-10px;
        color:White;
        }
        .txtbox
        {
            
            }
        ::-webkit-input-placeholder
        {
            text-align:center;
         }
         
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-top:-16%; margin-left:-4.4%; Height:520px; Width:1315px; border:1px solid White;">
    
    <div style=" height:90%; width:90%; background-color:white; margin-top:1%; margin-left:5%; ">
    <div style=" height:10%;  width:50%; background-color:#383860; border-radius:20Px; margin-top:1%; margin-left:17.8%">
    <h2 style=" position:absolute; margin-left:210px; margin-top:12px;">VACANCY DETAILS</h2>
    </div>


     <div style=" border:1px solid #b96e46; background-color:#A03040; height:40px; width:215px; margin-left:19%;  margin-top:2%;"><h3>JOB TITLE</h3></div>
        <div style="  height:40px; width:140px; margin-left:60%; margin-top:-4.7%; position:absolute;">
        <asp:DropDownList ID="title" OnSelectedIndexChanged="title_SelectedIndexChanged"  runat="server" Height="40px" Width="160px"  AutoPostBack="True">
            <asp:ListItem Selected hidden>TITLE</asp:ListItem>
            </asp:DropDownList></div>
            
            <div style=" border:1px solid #b96e46; background-color:#A03040; height:40px; width:215px; margin-left:19%;  margin-top:1%;"><h3>ELIGIBILITY CRITERIA</h3></div>
        <div style=" height:40px; width:117px; margin-left:57.5%; margin-top: -4.4%; position:absolute;">
        <asp:DropDownList ID="course" OnSelectedIndexChanged="course_SelectedIndexChanged"  runat="server" Height="40px" Width="95px" AutoPostBack="True">
            <asp:ListItem Selected hidden>COURSE</asp:ListItem>
            </asp:DropDownList></div>
            <div style=" height:40px; width:117px; margin-left:67%; margin-top:-4.4%; position:absolute;">
            <asp:DropDownList ID="branch" OnSelectedIndexChanged="branch_SelectedIndexChanged"  runat="server" Height="40px" Width="115px" AutoPostBack="True">
             <asp:ListItem Selected hidden>BRANCH</asp:ListItem>
            </asp:DropDownList></div>
            
            <div style=" border:1px solid #b96e46; background-color:#A03040; height:40px; width:215px; margin-left:19%;  margin-top:1%;"><h3>SELECTION PROCESS</h3></div>
        <div style="  height:40px; width:509px; margin-left:60%; margin-top:-4.4%; position:absolute">
            <asp:TextBox ID="process" runat="server" Height="35px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="process" ForeColor="Red" ErrorMessage="Provide selection process"></asp:RequiredFieldValidator>
           </div>
          
            <div style=" border:1px solid #b96e46; background-color:#A03040; height:40px; width:215px; margin-left:19%;  margin-top:1%;"><h3>SALARY/ANNUM</h3></div>
        <div style="  height:40px; width:180px; margin-left:60%; margin-top:-4.6%; position:absolute">
            <asp:TextBox ID="salary" runat="server" Height="35px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="salary" ForeColor="Red" ErrorMessage="Provide salary"></asp:RequiredFieldValidator>
              </div> 
           

           <div style=" border:1px solid #b96e46; background-color:#A03040; height:40px; width:215px; margin-left:19%;  margin-top:1%;"><h3>LOCATION</h3></div>
        <div style="  height:40px; width:180px; margin-left:60%; margin-top:-4.4%; position:absolute">
            <asp:TextBox ID="loc" runat="server" Height="35px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="loc" ForeColor="Red" ErrorMessage="Provide location"></asp:RequiredFieldValidator>
              </div>     
         
<div style=" border:1px solid #b96e46; background-color:#A03040; height:40px; width:215px; margin-left:19%;  margin-top:1%;"><h3>EXPERIENCE NEEDED</h3></div>
        <div style="  height:40px; width:180px; margin-left:60%; margin-top:-4.2%; position:absolute">
            <asp:TextBox ID="exp" runat="server" Height="35px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="exp" ForeColor="Red" ErrorMessage="Provide experience"></asp:RequiredFieldValidator>
             </div>     
           
<div style=" border:1px solid #b96e46; background-color:#A03040; height:40px; width:215px; margin-left:19%;  margin-top:1%;"><h3>VACANCY AVAILABLE</h3></div>
        <div style="  height:40px; width:180px; margin-left:60%; margin-top:-4.0%; position:absolute">
            <asp:TextBox ID="vac" runat="server" Height="35px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="vac" ForeColor="Red" ErrorMessage="Provide vacancy"></asp:RequiredFieldValidator>
              </div>   
            
<div style=" border:1px solid #b96e46; background-color:#A03040; height:40px; width:215px; margin-left:19%;  margin-top:1%;"><h3>VACANCY PERIOD</h3></div>
        <div style="  height:40px; width:180px; margin-left:60%; margin-top:-3.8%; position:absolute">
            <asp:TextBox ID="period" runat="server" Height="35px" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="period" ForeColor="Red" ErrorMessage="Provide period"></asp:RequiredFieldValidator>
                  
            </div>

    


            <div style=" height:40px; width:350px; margin-left:51%; margin-top:2%; position:absolute;">
            <asp:Button  ID="Button1" runat="server" OnClick="btnsub" Text="SUBMIT" Height="50px"  Font-Size="17px" 
                Width="255px" BackColor="#383860" ForeColor="White" BorderStyle="None"/></div>

        <div style=" border:1px solid white; height:40px; width:150px; margin-left:22%; margin-top:1.9%; position:absolute;">
            <asp:Button ID="Button2" runat="server" OnClick="reset" Text="CLEAR" Height="50px"  Font-Size="17px"
                Width="269px" BackColor="#E51616" ForeColor="White" BorderStyle="None" CausesValidation="False" />
              </div>
</div>
</div>
</div>

</asp:Content>
