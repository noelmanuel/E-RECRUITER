<%@ Page Language="C#" AutoEventWireup="true" CodeFile="takequiz.aspx.cs" Inherits="Jobseeker_takequiz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
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
    </style>
</head>

<body style=" margin:0; border:0; padding:0;">
<form runat="server">
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



        <div style="width:100%; height:49px; background-color:#fff; border-bottom: 1px solid #282828"></div>
    
        <div style="width:13%; height:600px; background-color:black; float:left;">
        
            <div style="width:100%; height:160px; background-color:black; border-bottom:1px solid #282828;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/EXAMM.jpg" Height="130" Width="" CssClass="mg" /></div>
            <div style="width:100%; height:380px; background-color:black; text-align:center;">
                
                <div style=" width:100%; height:30px; border-bottom:1px solid #282828; margin-top:30%;"><a href="#" class="LNKDAS">DASHBOARD</a></div>
                <div style=" width:100%; height:30px; border-bottom:1px solid #282828; margin-top:30%;"><a href="#" class="LNKDAS">DEMO TEST</a></div>
                <div style=" width:100%; height:30px; border-bottom:1px solid #282828; margin-top:30%;"><a href="#" class="LNKDAS">INSTRUTIONS</a></div>
                <div style=" width:100%; height:30px;  margin-top:30%;"><a href="#" class="LNKDAS">REPORT</a></div>
            </div>
        
        </div>
        <div style="width:68%; height:600px; background-color:blue; display:inline-block; "></div>
        <div style="width:19%; height:600px; background-color:black; display:inline-block; float:right; font-size:0;">

            <div style="width:100%; height:299px; background-color:#282828; border-bottom:1px solid #999898;"></div><br />
            <div style="width:100%; height:149px; background-color:#282828; border-bottom:1px solid #999898;"></div><br />
            <div style="width:100%; height:149px; background-color:#282828; border-bottom:1px solid #999898;"></div>
        </div>

        
    
        <div style="width:100%; height:38px; background-color:#282828;"></div>
    
    
    
    
    
    
    
    </div>
    </form>
</body>
</html>
