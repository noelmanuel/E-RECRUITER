<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jslogin.aspx.cs" Inherits="jslogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        .style1
        {
            width: 98%;
            height: 65px;
            margin-left: 0px;
        }
        .style3
        {
            width: 110px;
            font-size: medium;
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
        
       
        .style6
        {
            border-radius: 5px;
            
            
        }
         .style7
        {
            color:#343843;
            
            
        }
         .style8
        {
            margin-left:66%;
            border:none;
            background-color:#1AB188;
            color:White;
            
            
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
            height:45px;
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
    
         
        
        
        <img src="images/logo1.jpg" style=" margin-left:30%; margin-top:20px;" /></div>
        <div class="secondbox2">
        
        
    
     <p style="margin-left:9%;">
     
            
        <asp:Button ID="Button1" runat="server" Height="30px" Text="HOME" 
                Width="100px" OnClick="Button1_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White"  CausesValidation="false" />
            <asp:Button ID="Button2" runat="server" Height="30px" Text="CONTACT" 
                Width="100px" OnClick="Button2_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" CausesValidation="false"  />
            <asp:Button ID="Button3" runat="server" Height="30px" Text="ABOUT" 
                Width="100px" OnClick="Button3_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White"  CausesValidation="false" />
            <asp:Button ID="Button6" runat="server" Height="30px" Text="NOTIFICATION" 
                Width="130px" OnClick="Button4_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" CausesValidation="false"  />

        <div style=" margin-left:70%; margin-top:-45px;">
            <div class="dropdown">
            <asp:Button ID="Button4" runat="server" Height="30px" Text="REGISTER" 
                Width="130px" OnClick="Button4_click" BackColor="Red" 
                BorderStyle="None" ForeColor="White" CausesValidation="false"    />
                <div class="dropdown-content">
                <a href="Jobprovider/providerregn.aspx">JOB PROVIDER</a>
                <a href="JobSeeker/jsregn.aspx">JOB SEEKER</a>
        
                </div>
                </div>
                </div>
        
        </p>
    
     
        </div>
        </div>



<div style=" width:100%; height:580px;">
<img src="images/ggg.jpg" height="600px" width="100%">
<asp:Panel ID="Panel1" runat="server" defaultbutton="Button5" Height="16px" 
        CssClass="pan">
<div style="padding: 100px 0 0 250px; height: 1px; width: 117px; margin-top: 0px;">
<div id="login-box">

<H2>LOGIN</H2>
<br />
    <table class="style1">
        <tr>
            <td style="font-weight: 700; font-size: medium; " class="style6">
                <h4 >USERNAME</t4>
                        <td class="style6">
                            <asp:TextBox ID="txtuname" runat="server" Width="200px" Height="30px" 
                                CssClass="style7"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="txtuname" ErrorMessage="Enter your username"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <h4>PASSWORD</h4></td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server"  Width="200px" Height="30px" TextMode="Password" CssClass="style7"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                            
                        </td>
                    </tr>
                </table>
<br />
            <asp:Label ID="Label1" runat="server" EnableViewState="False" 
                style="color: #343843; color:Red;"></asp:Label>
                
<asp:Button ID="Button5" runat="server" Text="LOGIN" Width="100px" Height="50px" OnClick="Button5_Click"  CssClass="style8" />

    <br />
<br />

                <a href="passwordreset.aspx" style="color:Black; text-decoration:none;">Forgot Password?</a>
               

                





    </asp:Panel >

</div>

</div>


</div>

<footer>
    <div class="container">

        <div >
            <div style=" margin-top:1%;">
                <form >                   
                <asp:TextBox ID="sub" runat="server" Height="27" Width="400" placeholder="  E-MAIL" Visible="True"></asp:TextBox>
                <asp:Button ID="Button7" runat="server" Text="Subscribe" 
                Width="100px" OnClick="Button7_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" Height="33px" />
                </form>
            </div>
          
            <div style=" margin-left:80%; position:absolute; margin-top:-4%;">
                <h5 style="color:#1AB188;">COPYRIGHT OWNERS</h5>
                <a href="#help" style=" text-decoration:none; width:200px; font-size:smaller; color:#fff; margin-top:-14px; position:absolute;">Noel & Muneersha</a></br>
                
            </div>
        </div>
    </div>
</footer>
</form>
</body>
</html>