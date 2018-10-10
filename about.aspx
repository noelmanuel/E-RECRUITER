<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>E-RECRUITER</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="login-box.css" rel="stylesheet" type="text/css" />
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
        
        footer .section-authers
        {
            color: #fff;
            text-align: center;
        }
        footer .section-authers h3
        {
            margin: 0;
            display: inline-block;
            color: #fff;
            font: 18px Arial, Helvetica, sans-serif;
        }
        footer .section-authers p 
        {
            display: inline-block;
            margin-left: 10px;
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
        
       
</style>
</head>
<body>
<div class="mainbox1" >

    <form id="form1" runat="server">
    
    <div class="firstbox">
    
        <p style="margin-left:17%; margin-top:5px; color:white; height: 15px; width: 509px;"><i style="color:white; margin-left:10%;
   color:white;"class="fa fa-phone"></i>&nbsp 0471 2434343<i style="color:white;
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
    
         
        
        
        <img src="images/logo1.jpg" style=" margin-left:10%; margin-top:20px;" /></div>
        <div class="secondbox2">
        
        
    
     <p style="margin-left:12%;">
     
         <asp:Button ID="Button1" runat="server" Text="HOME" Height="30" Width="100" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" onclick="Button1_Click" />
         
         <asp:Button ID="Button2" runat="server" Text="CONTACT" Height="30" Width="100" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" onclick="Button2_Click" />
         <asp:Button ID="Button3" runat="server" Text="ABOUT" Height="30" Width="100" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" onclick="Button3_Click" />
         <asp:Button ID="Button4" runat="server" Text="NOTIFICATION" Height="30" 
             Width="130" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" onclick="Button4_Click"/>
        <div style=" margin-left:75%; margin-top:-45px;">
            <div class="dropdown">
                <asp:Button ID="Button5" runat="server" Text="REGISTER" Height="30" Width="100" BackColor="#ea1717"
                BorderStyle="None" ForeColor="White" onclick="Button5_Click" />
                <div class="dropdown-content">
                <a href="Company/companyregn.aspx">JOB PROVIDER</a>
                <a href="JobSeeker/jsregn.aspx">JOB SEEKER</a>
        
                </div>
                </div>
                </div>
        
        </p>
    
     
        </div>
        </div>

    
        <div style="top: 274px; left: 196px; position: absolute; height: 335px; width: 883px">
            <table border="0" cellpadding="0" cellspacing="0" class="text-big-content" 
                width="100%">
                <tr bgcolor="#FFFFFF">
                    <td bgcolor="#FFFFFF" class="bank-heading" colspan="2" 
                        style="padding-bottom:5px;border-bottom:2px #EE0606 solid;" valign="bottom" 
                        width="65%">
                        About us</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td bgcolor="#FFFFFF" class="content" colspan="2" valign="bottom">
                        &nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td align="left">
                        Employtimes provides the perfect platform for the young candidates to seize the 
                        best job opportunity suiting their backgrounds by screening them the tonnes of 
                        available Job opportunities. The platform is provided for candidates from 
                        backgrounds like Accounts/Finance, IT/ITES, Pharmaceuticals, Marketing, 
                        Manufacturing and many other sectors.</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td bgcolor="#FFFFFF" class="content" colspan="2" valign="bottom">
                        &nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td align="left">
                        Employtimes comprises of HR professionals who hold rich experience in the field 
                        of consultation. Apart from Job openings, the candidates are provided with 
                        various other information like Bank exam schedule, Latest walk-in, government 
                        job,etc. Some interactive features like Dream company messenger,Resume services, 
                        Job mailers,etc are provided to keep the candidates updated every moment.</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td align="left" class="content">
                        &nbsp;</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td align="left">
                        More and more features and innovations are under way with our penchant for 
                        cutting-edge technologies and continuous effort to give the highest level of 
                        service.</td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td bgcolor="#FFFFFF" class="content" colspan="2" valign="bottom">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    
    <footer>
    <div class="container">

        <div class="row">
            <div class="col-3 section-subscribe">
                <form>
                    <input type="email" name="name" placeholder="Email" />
                    <input type="submit" name="name" value="Subscribe" />
                </form>
            </div>
            <div class="col-3 section-authers">
                <h3>Meet Makers</h3>
                <p>Noel Manuel & Muneersha</p>
            </div>
            <div class="col-3 section-help">
                <p>Need Help ?<a href="#help">Help</a></p>
            </div>
        </div>
    </div>
</footer>
</form>
</body>
</html>
