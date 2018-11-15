<%@ Page Title="" Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="editprfl.aspx.cs" Inherits="Jobprovider_editprfl" %>

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
        margin-top: 9px;
        font-family:banner;
        color:#fff;
        font-size:15px;
        }      
       
      

        
        ::-webkit-input-placeholder
        {
            text-align:center;
         }
         
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div style="width:100%;height:500px;background-color:White; margin-top:-2%; display:inline-block;">
       
<fieldset style=" width:70%; height:95%; margin-left:130px; margin-top:-14%;">
       <legend>EDIT PROFILE</legend></br>

        
        <div style=" border:1px solid #b96e46; background-color:#A03040; height:50px; width:180px; margin-left:15%; margin-top:1.2%;"><h3>COMPANY NAME</h3></div> 
        <div style="  height:40px; width:180px;  margin-top:-4.7%; margin-left:40%; position:absolute;">
        <asp:TextBox ID="name"  runat="server" Height="35px" Width="200px"></asp:TextBox>
           </div>
           <div style=" border:1px solid #b96e46; background-color:#A03040; height:50px; width:180px; margin-left:15%; margin-top:1.2%;"><h3>DESCRIPTION</h3></div> 
        <div style="  height:40px; width:180px;  margin-top:-4.7%; margin-left:40%; position:absolute;">
        <asp:TextBox ID="desc"  runat="server" Height="35px" Width="200px"></asp:TextBox>
           </div>
           <div style=" border:1px solid #b96e46; background-color:#A03040; height:50px; width:180px; margin-left:15%; margin-top:1.2%;"><h3>COMMUNICATION ADDRESS</h3></div> 
        <div style="  height:40px; width:180px;  margin-top:-4.7%; margin-left:40%; position:absolute;">
        <asp:TextBox ID="addr"  runat="server" Height="35px" Width="200px"></asp:TextBox>
          
        </div>
        <div style=" border:1px solid #b96e46; background-color:#A03040; height:50px; width:180px; margin-left:15%; margin-top:1.2%;"><h3>PLACE</h3></div> 
        <div style="  height:40px; width:180px;  margin-top:-4.7%; margin-left:40%; position:absolute;">
        <asp:TextBox ID="place"  runat="server" Height="35px" Width="200px"></asp:TextBox>
          
        </div>
        <div style=" border:1px solid #b96e46; background-color:#A03040; height:50px; width:180px; margin-left:15%; margin-top:1.2%;"><h3>MOBILE NUMBER</h3></div> 
        <div style="  height:40px; width:180px;  margin-top:-4.7%; margin-left:40%; position:absolute;">
        <asp:TextBox ID="mob"  runat="server" Height="35px" Width="200px"></asp:TextBox>
          
        </div>
        <div style=" border:1px solid #b96e46; background-color:#A03040; height:50px; width:180px; margin-left:15%; margin-top:1.2%;"><h3>EMAIL</h3></div> 
        <div style="  height:40px; width:180px;  margin-top:-4.7%; margin-left:40%; position:absolute;">
        <asp:TextBox ID="email"  runat="server" Height="35px" Width="200px"></asp:TextBox>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red"
            ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Enter Valid Email"></asp:RegularExpressionValidator>
           
          
        </div>
        <div style=" border:1px solid #b96e46; background-color:#A03040; height:50px; width:180px; margin-left:15%; margin-top:1.2%;"><h3>WEBSITE URL</h3></div> 
        <div style="  height:40px; width:180px;  margin-top:-4.7%; margin-left:40%; position:absolute;">
        <asp:TextBox ID="url"  runat="server" Height="35px" Width="200px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red"
                    ControlToValidate="url" ErrorMessage="URL must start with http://" 
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
          
        </div>
        </fieldset>
       <div style="  height:40px; width:150px; margin-left:57%; margin-top:2.5%; position:absolute;">
        <asp:Button ID="btn" runat="server" OnClick="btn_click"    Text="UPDATE" Height="40px"  Font-Size="15px"
                Width="150px" BackColor="#383860" ForeColor="White" BorderStyle="None"/>
              </div>

      <div style="  height:40px; width:150px; margin-left:27%; margin-top:2.5%; position:absolute;">
            <asp:Button ID="Button2" runat="server" OnClick="reset"  Text="CLEAR" Height="40px"   Font-Size="15px"
                Width="150px" BackColor="#E51616" ForeColor="White" BorderStyle="None" />
              </div>
             
              

       
        </div>
  
        
        




</asp:Content>

