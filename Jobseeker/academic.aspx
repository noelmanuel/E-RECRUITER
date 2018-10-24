<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/seeker.master" AutoEventWireup="true" CodeFile="academic.aspx.cs" Inherits="Jobseeker_academic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    h3
    {
        text-align:center;
        margin-top: 8px;
        font-family:banner;
        color:#fff;
        }
        h4
    {
        text-align:center;
        margin-top: 1px;
        color:White;
        }
        .txtbox
        {
            
            }
        ::-webkit-input-placeholder
        {
            text-align:center;
         }
         .valialign
         {
             position:absolute;
             margin-left:40%;
             margin-top:-6.5%;
             }
             .matcg
         {
             position:absolute;
             margin-left:62%;
             margin-top:-6.5%;
             }
             .matyear
         {
             position:absolute;
             margin-left:80%;
             margin-top:-6.5%;
             }
             .hsuni
         {
             position:absolute;
             margin-left:40%;
             margin-top:0%;
             }
             .hscgpa
         {
             position:absolute;
             margin-left:62%;
             margin-top:0%;
             }
             .hsyear
         {
             position:absolute;
             margin-left:80%;
             margin-top:0%;
             }
             
             .duni
         {
             position:absolute;
             margin-left:40%;
             margin-top:-6.3%;
             }
             .dcgpa
         {
             position:absolute;
             margin-left:62%;
             margin-top:-6.3%;
             }
             .dyear
         {
             position:absolute;
             margin-left:80%;
             margin-top:-6.3%;
             }
             
        
             
                .aq
         {
             position:absolute;
             margin-left:40%;
             margin-top:-6.3%;
             }
             
                .wex
         {
             position:absolute;
             margin-left:40%;
             margin-top:-6%;
             }
        
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-top:-16.8%; margin-left:-4.4%; Height:580px; Width:1315px; border:1px solid White;">
    
    <div style=" height:90%; width:90%; background-color:#1ab188; margin-top:3%; margin-left:5%; ">
    <h2 style=" position:absolute; margin-left:5%; margin-top:23%; color:White;">Academic Details</h2>

        <div style=" height:691%; width:88%; background-color:#fff; margin-top:0.5%; margin-left:28%; position:absolute; ">





        <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:3%;  margin-top:4%;"><h3>Matrix</h3></div>
        <div style="  height:40px; width:180px; margin-left:40%; margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="matuni" placeholder="University" runat="server" Height="35px" Width="178px"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="matuni" ForeColor="Red" ErrorMessage="*" CssClass="valialign"></asp:RequiredFieldValidator>
        <div style="  height:40px; width:150px; margin-left:61.8%; margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="matcgpa" placeholder="CGPA" runat="server" Height="35px" Width="148px"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                ControlToValidate="matcgpa" runat="server" ForeColor="Red" ErrorMessage="*" 
                CssClass="matcg"></asp:RequiredFieldValidator>
        <div style=" height:40px; width:150px; margin-left:80%;  margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="matyear" placeholder="Year of Passing"  runat="server" Height="35px" Width="148px"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" CssClass="matyear" ControlToValidate="matyear" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>





        <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:3%; margin-top:1%;"><h3>High School</h3></div>
        <div style="  height:40px; width:180px; margin-left:40%; margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="hsuni" placeholder="University" runat="server" Height="35px" Width="178px"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="hsuni" ForeColor="Red"  ErrorMessage="*" CssClass="hsuni"></asp:RequiredFieldValidator>
        <div style="  height:40px; width:150px; margin-left:61.8%; margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="hscgpa" placeholder="CGPA" runat="server" Height="35px" Width="148px"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="hscgpa" ForeColor="Red" ErrorMessage="*" CssClass="hscgpa"></asp:RequiredFieldValidator>
        <div style="  height:40px; width:150px; margin-left:80%; margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="hsyear" placeholder="Year of Passing" runat="server" Height="35px" Width="148px"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="hsyear" runat="server" ForeColor="Red" ErrorMessage="*" CssClass="hsyear"></asp:RequiredFieldValidator>



        <div style="border:1px solid #b96e46; background-color:#b96e46; height:20px; width:250px; margin-left:3%; margin-top:3%;"><h4>Highest Qualification</h4></div>
        <div style=" border:1px solid #b96e46; height:40px; width:117px; margin-left:3%; margin-top:1%;">
            <asp:DropDownList ID="DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server" Height="40px" Width="117px" AutoPostBack="True">
            <asp:ListItem Selected hidden>Course</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="DropDownList1" runat="server" ErrorMessage="*" ></asp:RequiredFieldValidator>
        </div>
        <div style=" border:1px solid #b96e46; height:40px; width:117px; margin-left:17.8%; margin-top:-4.7%; position:absolute;">
            <asp:DropDownList ID="DropDownList2" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" runat="server" Height="40px" Width="117px" AutoPostBack="True">
            
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"  ForeColor="Red" ControlToValidate="DropDownList2" ErrorMessage="*" ></asp:RequiredFieldValidator>
        </div>
        <div style="  height:40px; width:180px; margin-left:40%; margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="deguni" placeholder="University" runat="server" Height="35px" Width="178px"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ForeColor="Red" ControlToValidate="deguni" ErrorMessage="*" CssClass="duni"></asp:RequiredFieldValidator>
        <div style=" height:40px; width:150px; margin-left:61.8%; margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="degcgpa" placeholder="CGPA" runat="server" Height="35px" Width="148px"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ForeColor="Red" ControlToValidate="degcgpa" ErrorMessage="*" CssClass="dcgpa"></asp:RequiredFieldValidator>
        <div style="  height:40px; width:150px; margin-left:80%; margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="degyear" placeholder="Year of Passing" runat="server" Height="35px" Width="148px"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ForeColor="Red" ControlToValidate="degyear" ErrorMessage="*" CssClass="dyear"></asp:RequiredFieldValidator>




        <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:3%; margin-top:3%;"><h3>Additional Qualification</h3></div>
        <div style="  height:40px; width:509px; margin-left:40%; margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="addq" runat="server" Height="35px" Width="506px"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="addq" ForeColor="Red"  runat="server" ErrorMessage="*" CssClass="aq"></asp:RequiredFieldValidator>

        <div style=" border:1px solid #b96e46; background-color:#b96e46; height:40px; width:250px; margin-left:3%; margin-top:1%;"><h3>Work Experience</h3></div>
        <div style="  height:40px; width:509px; margin-left:40%; margin-top:-4.8%; position:absolute;">
            <asp:TextBox ID="wexp" runat="server" Height="35px" Width="506px"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="wexp" runat="server" ForeColor="Red" ErrorMessage="*" CssClass="wex"></asp:RequiredFieldValidator>


        <div style=" border:1px solid red; height:40px; width:150px; margin-left:61.8%; margin-top:6%; position:absolute;">
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" Height="40px" 
                Width="150px" BackColor="#E51616" ForeColor="White" BorderStyle="None" 
                onclick="Button1_Click" /></div>
        <div style=" border:1px solid white; height:40px; width:150px; margin-left:80%; margin-top:6%; position:absolute;">
            <asp:Button ID="Button2" runat="server" Text="CLEAR" Height="40px" 
                Width="150px" BackColor="#ececec" ForeColor="Black" BorderStyle="None" 
                onclick="Button2_Click" /></div>





        </div>

    </div>



        </div>
</asp:Content>

