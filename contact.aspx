<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>E-RECRUITER</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="contact.css" rel="stylesheet" type="text/css" />
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
            border-bottom:2px solid #fcedb0;
        }
        
        .firstbox2
        {
            width:45%;
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
            height:25px;
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
        
        .ali
        {
            background-color:#1ab188;
            width:130px;
            height:35px;
            float:right;
            text-align:center;
            color:White;
            
            
            margin-right:1%;
            }
            a.fill-div
            {
                display:block;
                height:100%;
                width:100%;
                text-decoration:none;
                text-align:center;
                color:White;
                margin-top:6px;
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
    
         
        
        
        <img src="images/logo1.jpg" style=" margin-left:30%; margin-top:20px;" />
        
        </div>

        <div class="secondbox2">
        
        
    
    
     
     <p >
            
        <div class="ali"><a href="notification.aspx" class="fill-div">NOTIFICATION</a></div>
        <div class="ali"><a href="about.aspx" class="fill-div">ABOUT</a></div>
        <div class="ali"><a href="jslogin.aspx" class="fill-div">HOME</a></div>

        
        
    </p>
     
        </div>
        </div>

        
        <div>
        <img src="images/msg.jpg" height="75%" width="40%" style=" position:absolute;"></div>
        <div style=" height:73%; width:50%; border:2px solid #1ab188; margin-left:40%; margin-top:1%;">
           
        
        <h1 style="COLOR:#fead00; text-align:center;">GET IN TOUCH</h1></BR>
        <p style=" margin-left:2%;">
<form >
  <input type="text" name="name" class="question" id="nme" required autocomplete="off" />
  <label for="nme"><span>What's your name?</span></label></br>
  <input type="text" name="name" class="question" id="Text1" required autocomplete="off" />
  <label for="nme"><span>What's your email?</span></label>
  <textarea name="message" rows="2" class="question" id="msg" required autocomplete="off"></textarea>
  <label for="msg"><span>What's your message?</span></label>
  <input type="submit" value="Submit" />
</form>
</p>
        </div>
        

<footer>
    <div class="container">

    </div>
</footer>
</form>
</body>
</html>