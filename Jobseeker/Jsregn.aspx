<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Jsregn.aspx.cs" Inherits="Jobseeker_Jsregn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>E-RECRUITER</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="../login-box.css" rel="stylesheet" type="text/css" />
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
            height:60px;
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
             <img src="../images/logo1.jpg" style=" margin-left:30%; margin-top:20px;" />
        </div>

        <div class="secondbox2">

            <p style="margin-left:9%;">
     
                <asp:Button ID="Button1" runat="server" Height="30px" Text="HOME" 
                Width="100px" OnClick="Button1_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" />
                <asp:Button ID="Button2" runat="server" Height="30px" Text="CONTACT" 
                Width="100px" OnClick="Button2_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" />
                <asp:Button ID="Button3" runat="server" Height="30px" Text="ABOUT" 
                Width="100px" OnClick="Button3_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" />
                <asp:Button ID="Button6" runat="server" Height="30px" Text="NOTIFICATION" 
                Width="130px" OnClick="Button3_click" BackColor="#1AB188" 
                BorderStyle="None" ForeColor="White" />

            </p>
        </div>
     </div>


     <div style="width:100%;height:600px;background-color:Blue;">
        
    
     
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
                <h4 style="color:#1AB188;">Need Help?</h4>
                <a href="#help" style=" text-decoration:none; color:#fff; margin-top:-14px; position:absolute;">Help</a></br>
                <a href="../contact.aspx" style=" text-decoration:none; color:#fff; margin-top:-14px; position:absolute;">Contact</a>
            </div>
        </div>
    </div>
</footer>
</form>
</body>
</html>
