<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="contact.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    .mg
    {
        margin-top:12%;
        margin-left:4%;
        }
        .LNKDAS
        {
            
            color:#999898;
            font-size:medium;
            text-decoration:none;
            font-weight:bold;
            
            line-height:20%;
            
            
           
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
        .log
        {
            margin-top:15px;
            margin-left:16%;
            }
            .server
        {
            margin-top:45px;
            margin-left:14px;
            }
            
            .lb1
            {
                margin-top:200px;
                margin-left:95px;
                position:absolute;
                }
                .lb2
            {
                margin-top:221px;
                margin-left:125px;
                position:absolute;
                }
                  .lb3
            {
                margin-top:80px;
                margin-left:105px;
                position:absolute;
                }
                  .lb4
            {
                margin-top:100px;
                margin-left:70px;
                position:absolute;
                }
                  .lb6
            {
                margin-top:160px;
                margin-left:95px;
                position:absolute;
                }
                  .lb5
            {
                margin-top:140px;
                margin-left:135px;
                position:absolute;
                }
                .bo
                {
                    font-weight:bold;
                    }
    </style>
</head>

<body style=" margin:0; border:0; padding:0;">
<form id="Form1" runat="server">
    <div style=" font-size:0;">

        <div style="width:100%; height:35px; background-color:#282828;">
        <div style="height:18px; width:40%; color:White; font-size:small;"><i style= "color:white; margin-top:10px; margin-left:30%;"class="fa fa-phone"></i>&nbsp 0471 2434343 &nbsp &nbsp<i style="color:white;" class="fa fa-television"></i>&nbsp Contact us:erecruiter@gmail.com</div>
        <div style="height:35px; width:17%; font-size:medium; margin-left:83%; margin-top:-14px;">
        <a href="https://www.facebook.com/" class="fa fa-facebook"></a>
        <a href="https://twitter.com/" class="fa fa-twitter"></a>
        <a href="https://www.google.co.in/" class="fa fa-google"></a>
        <a href="https://www.linkedin.com/" class="fa fa-linkedin"></a>
        <a href="https://rss.com/" class="fa fa-rss"></a></div>
        </div>



        <div style="width:100%; height:49px;  border-bottom: 1px solid #282828">
            <asp:Image ID="Image1"  runat="server" ImageUrl="~/images/logo1.jpg" CssClass="log" Width="150" Height="21" />
            <div style=" font-size:medium; margin-left:40%; margin-top:-25px;">
            <asp:Button ID="Button1" runat="server" Text="HOME" Height="30" Width="100" 
                    BackColor="#1AB188" BorderStyle="None" ForeColor="White" 
                    onclick="Button1_Click1" />
            <asp:Button ID="Button2" runat="server" Text="SIGN OUT" Height="30" Width="100" 
                    BackColor="Red" BorderStyle="None" ForeColor="White" onclick="Button2_Click1" />
            </div>
            </div>

        
        <div>
        <img src="images/msg.jpg" height="75%" width="40%" style=" position:absolute;"></div>
        <div style=" height:73%; width:50%;  margin-left:40%; margin-top:4%;">
           
        
        <h1 style="COLOR:#fead00; text-align:center;">GET IN TOUCH</h1><br />
       

  <input type="text" name="name" class="question" id="nme" required autocomplete="off" />
  <label for="nme"><span>What's your name?</span></label></br>
  <input type="text" name="name" class="question" id="Text1" required autocomplete="off" />
  <label for="nme"><span>What's your email?</span></label>
  <textarea name="message" rows="2" class="question" id="msg" required autocomplete="off"></textarea>
  <label for="msg"><span>What's your message?</span></label>
  <input type="submit" value="Submit" />


       </div>
        

<div style="width:100%; height:38px; background-color:#282828; margin-top:17.5%;"></div>
    
    
    
    
    
    
    
    </div>
    </form>
</body>
</html>
