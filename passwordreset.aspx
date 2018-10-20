<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passwordreset.aspx.cs" Inherits="passwordreset" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>E-RECRUITER</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="../login-box.css" rel="stylesheet" type="text/css" />
    <link href="textbox.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
       
       body
        {
            padding: 0;
            margin: 0;
            height: 745px;
        }
        .mainbox1
        {
            width:100%;
            margin : 0;
            background-color:#3c3d41;
            height:40px;
            top: 0;
            left: 0;
         }
        
        .firstbox
        {
            width:50%;
            height:40px;
            margin : 0;
            float : left ;
            background-color:#3c3d41;
        }
         
         .secondbox
        {
            width:50%;
            height:40px;
            margin : 0;
            float : left ;
            background-color:#3c3d41;  
        }
        
        .mainbox2
        {
            width:100%;
            margin : 0;
            background-color:#fff;
            height:60px;
            top: 0;
            left: 0;
            border-bottom: 1px solid #faefbe;
        }
        
        .firstbox2
        {
            width:50%;
            height:60px;
            margin : 0;
            float : left ;
            background-color:#fff;
            
         }
         
         .secondbox2
        {
            width:50%;
            height:60px;
            margin : 0;
            float : left ;
            background-color:#fff;
            
        }
            
            .fa 
        {
            padding: 5px;
            font-size: 10px;
            width: 10px;
            text-align: center;
            text-decoration: none;
            margin: 5px 2px;
        }

            .fa:hover
        {
            opacity: 0.7;
            
        }

            .fa-facebook 
        {
            background: #3B5998;
            color: white;
        }

            .fa-twitter 
        {
            background: #55ACEE;
            color: white;
        }

            .fa-google 
        {
             background: #dd4b39;
             color: white;
        }

           .fa-linkedin 
        {
            background: #007bb5;
            color: white;
        }
            .fa-rss     
        {
           background: #ff6600;
            color: white;
        }
                        
        

        .dropdown 
        {
             position: relative;
            display: inline-block;
        }

        .dropdown-content 
        {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a 
        {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover 
        {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content 
        {
            display: block;
         }

        .dropdown:hover .dropbtn 
        {
            background-color: #3e8e41;
         }
        
       
        .pan
        {
            position:absolute;
            margin-top:-40%;
         }
        footer 
        {
            background: #3c3d41;
            position:absolute;
            width: 100%;
            padding: 2px 0;
            bottom: 0px;
  
   
        }

        .container 
        {
            width: 1360px;
            margin: auto;
            height:40px;
        }

        .row 
        {
            width: 100%;
            margin: auto;
            position: relative;
        }
        .col-3 
        {
            width: 33%;
            display: inline-block;
            float: left;
        }
       footer .section-subscribe input[type="email"]
         {
            padding: 8px 15px;
            
        }
       footer .section-subscribe input[type="submit"]
         {
            background: #1AB188;
            padding: 9px 15px;
            margin-left: 15px;
            border: 0;
            color: #fff;
            font-weight: 800;
        }
        
        
        footer .section-help 
        {
            text-align: right;
            color: #fff;
        }

        footer .section-help a 
        {
            background: #1AB188;
            padding: 4px 15px;
            text-align: left;
            color: #fff;
            text-decoration: none;
            margin-left: 10px;
        }
        .sub
        {
            position:absolute; 
            margin-top:-1%;
            height:50px;
            width:200px;
            border:none;
            
            }
          .cle
        {
            position:absolute;
            margin-top:-1%;
            margin-left:14%;
            height:50px;
            width:110px;
            border:none;
            
            }
        
       
        </style>
    </head>
<body>

    <div class="mainbox1" >
        <form id="form1" runat="server">

        <div class="firstbox">
            <p style="margin-left:17%; margin-top:5px; color:white; height: 15px; width: 509px;"><i style="color:white; margin-left:10%;color:white;"class="fa fa-phone"></i>&nbsp 0471 2434343<i style="color:white;
             margin-left:10%; color:white;"class="fa fa-television"></i>&nbsp Contact us:erecruiter@gmail.com</p>
        </div>

        <div class="secondbox">
            <p style="margin-left:70%; margin-top:4px; height: 17px; width: 204px;">
            <a href="https://www.facebook.com/" class="fa fa-facebook"></a>
            <a href="https://twitter.com/" class="fa fa-twitter"></a>
            <a href="https://www.google.co.in/" class="fa fa-google"></a>
            <a href="https://www.linkedin.com/" class="fa fa-linkedin"></a>
            <a href="https://rss.com/" class="fa fa-rss"></a>
            </p>
        </div>
    </div>

    <div class="mainbox2" >
        
        <div class="firstbox2">
             <img src="images/logo1.jpg" style=" margin-left:30%; margin-top:20px;" />
        </div>

        <div class="secondbox2">

            <p style="margin-left:9%;">
     
                <asp:Button ID="Button1" runat="server" Height="30px" Text="HOME" 
                Width="100px" OnClick="Button1_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" CausesValidation="False" />
                <asp:Button ID="Button2" runat="server" Height="30px" Text="CONTACT" 
                Width="100px" OnClick="Button2_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" CausesValidation="False" />
                <asp:Button ID="Button3" runat="server" Height="30px" Text="ABOUT" 
                Width="100px" OnClick="Button3_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" CausesValidation="False" />
                <asp:Button ID="Button6" runat="server" Height="30px" Text="NOTIFICATION" 
                Width="130px" OnClick="Button3_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" CausesValidation="False" />

            </p>
        </div>
     </div>


     <div style="width:100%;height:600px;background-color:White; display:inline-block;">
       <form>
       <h3 style=" margin-left:9%;">PASSWORD RECOVERY</h3>
       <p style=" margin-left:9%;">Enter your account information below and click continue</p>
       <fieldset style=" width:40%; height:65%; margin-left:130px; margin-top:2%;">
       <legend>Account Information</legend></br>
           <p>Username</p>
           <span ><i style="color:#1ab188; height:60px; font-size:large;"class="fa fa-user"></i></span>&nbsp &nbsp<asp:TextBox 
               ID="txtpssreset" placeholder="UserName" runat="server" 
               CssClass="textbox" Height="40px" Width="250px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               ErrorMessage="Enter Username" ControlToValidate="txtpssreset" ForeColor="Red"></asp:RequiredFieldValidator>
               <asp:Label ID="lblus" runat="server" EnableViewState="False"></asp:Label><asp:Label ID="lbladmin" runat="server" EnableViewState="False"></asp:Label></br>

           <p>Whats Your Fav Color?</p>
       <span ><i style="color:#1ab188; height:60px; font-size:large;"class="fa fa-gear"></i></span>&nbsp &nbsp<asp:TextBox ID="txtsec" placeholder="Secrity Question" runat="server" 
               CssClass="textbox" Height="40px" Width="250px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               ErrorMessage="Enter Your Answer" ControlToValidate="txtsec" ForeColor="Red"></asp:RequiredFieldValidator><asp:Label
                   ID="lblsec" runat="server"></asp:Label>
            

           </br>
       
       
       <asp:Button ID="Btnres" runat="server"  Text="SUBMIT" OnClick="btnsub" CssClass="sub" BackColor="#FF1414" ForeColor="White" />
         <asp:Button ID="cle" runat="server" Text="CLEAR" OnClick="reset" CssClass="cle" 
           BackColor="#1ab188" ForeColor="White" CausesValidation="False" /></br></br>

           <h4>Your Password:&nbsp &nbsp<asp:Label ID="lblpassgot" runat="server" EnableViewState="False"></asp:Label>

           </h4>

           </fieldset>
       </form> 
         
     </div>




<footer>
    <div class="container">

        
    </div>
</footer>
</form>
</body>
</html>