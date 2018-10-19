<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> <head id="Head1" runat="server"> 
<title>E-RECRUITER</title> <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/> 
<link href="login-box.css" rel="stylesheet" type="text/css" /> 
<style type="text/css"> 
    
    body {
    padding: 0;
    margin: 0;
    height: 745px;
}

.mainbox1 {
    width: 100%;
    margin: 0;
    background-color: #3c3d41;
    height: 40px;
    top: 0;
    left: 0;
}

.firstbox {
    width: 50%;
    height: 40px;
    margin: 0;
    float: left;
    background-color: #3c3d41;
}

.secondbox {
    width: 50%;
    height: 40px;
    margin: 0;
    float: left;
    background-color: #3c3d41;
}

.mainbox2 {
    width: 100%;
    margin: 0;
    background-color: #fff;
    height: 60px;
    top: 0;
    left: 0;
    border-bottom: 3px solid #fffdc0;
}

.firstbox2 {
    width: 50%;
    height: 60px;
    margin: 0;
    float: left;
    background-color: #fff;
}

.secondbox2 {
    width: 50%;
    height: 60px;
    margin: 0;
    float: left;
    background-color: #fff;
}

.fa {
    padding: 5px;
    font-size: 10px;
    width: 10px;
    text-align: center;
    text-decoration: none;
    margin: 5px 2px;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
    background: #3B5998;
    color: white;
}

.fa-twitter {
    background: #55ACEE;
    color: white;
}

.fa-google {
    background: #dd4b39;
    color: white;
}

.fa-linkedin {
    background: #007bb5;
    color: white;
}

.fa-rss {
    background: #ff6600;
    color: white;
}

.style1 {
    width: 98%;
    height: 65px;
    margin-left: 0px;
}

.style3 {
    width: 110px;
    font-size: medium;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #fff;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
    background-color: #30c19a;
            color:White;
            
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}

.style6 {
    border-radius: 5px;
}

.style7 {
    color: #343843;
}

.style8 {
    margin-left: 66%;
    border: none;
    background-color: #1AB188;
    color: White;
}

.pan {
    position: absolute;
    margin-top: -40%;
}

header {
    background-color: #fff;
    padding: 20px;
    text-align: center;
    font-size: 20px;
    color: #3c3d41;
    font-family: Sans-Serif;
}

div.a {
    text-align: center;
    font-family: Sans-Serif;
    font-size: 20px;
}

{
    box-sizing: border-box;
}

.column {
    float: left;
    padding: 4px;
    height: 300px;
    margin-left: 4.3%;
}

.left,
.right {
    width: 27%;
    text-align: center;
}

.middle {
    width: 27%;
    text-align: center;
}

.row:after {
    content: "";
    display: table;
    clear: both;
}

footer {
    background: #3c3d41;
    position: absolute;
    width: 100%;
    padding: 2px 0;
    bottom: 0px;
}

.container {
    width: 1360px;
    margin: auto;
    height: 30px;
}

.row {
    width: 100%;
    margin: auto;
    position: relative;
}

.col-3 {
    width: 33%;
    display: inline-block;
    float: left;
}

footer .section-subscribe input[type="email"] {
    padding: 8px 15px;
}

footer .section-subscribe input[type="submit"] {
    background: #1AB188;
    padding: 9px 15px;
    margin-left: 15px;
    border: 0;
    color: #fff;
    font-weight: 800;
}

footer .section-help {
    text-align: right;
    color: #fff;
}

footer .section-help a {
    background: #1AB188;
    padding: 4px 15px;
    text-align: left;
    color: #fff;
    text-decoration: none;
    margin-left: 10px;
}
h2
{
    color:#fead00;}

</style>
</head>

<body>
    <div class="mainbox1">

        <form id="form1" runat="server">

            <div class="firstbox">

                <p style="margin-left:17%; margin-top:5px; color:white; height: 15px; width: 509px;"><i style="color:white; margin-left:10%;
   color:white;" class="fa fa-phone"></i>&nbsp 0471 2434343<i style="color:white;
      margin-left:10%; color:white;" class="fa fa-television"></i>&nbsp Contact us:erecruiter@gmail.com</p>

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

    <div class="mainbox2">

        <div class="firstbox2">

            <img src="images/logo1.jpg" style=" margin-left:30%; margin-top:20px;" /></div>
        <div class="secondbox2">

            <p style="margin-left:9%;">

                <asp:Button ID="Button1" runat="server" Height="30px" Text="HOME" Width="100px" OnClick="Button1_click" BackColor="#1AB188" BorderStyle="None" ForeColor="White" />
                <asp:Button ID="Button2" runat="server" Height="30px" Text="CONTACT" Width="100px" OnClick="Button2_click" BackColor="#1AB188" BorderStyle="None" ForeColor="White" />
                <asp:Button ID="Button3" runat="server" Height="30px" Text="ABOUT" Width="100px" OnClick="Button3_click" BackColor="#1AB188" BorderStyle="None" ForeColor="White" />
                <asp:Button ID="Button6" runat="server" Height="30px" Text="NOTIFICATION" Width="130px" OnClick="Button3_click" BackColor="#1AB188" BorderStyle="None" ForeColor="White" />

                <div style=" margin-left:70%; margin-top:-45px;">
                    <div class="dropdown">
                        <asp:Button ID="Button4" runat="server" Height="30px" Text="REGISTER" Width="130px" OnClick="Button4_click" BackColor="Red" BorderStyle="None" ForeColor="White" />
                        <div class="dropdown-content">
                            <a href="Company/companyregn.aspx">JOB PROVIDER</a>
                            <a href="JobSeeker/jsregn.aspx">JOB SEEKER</a>

                        </div>
                    </div>
                </div>

            </p>

        </div>
    </div>

    <header>
        <p>
            <h1>WHAT DRIVES US</h1></p>
        <p>
            <h4>Key Features Of Our Website</h4></p>
    </header>

    <div class="row">
        <div class="column left">
            <i class="fa fa-eye-slash" style="font-size:70px; text-align:center; padding:2px; padding-right:65px; color:#1AB188"> </i>
            <div class="header" style="color:#3c3d41; font-family:Sans-Serif">
            <h2>VISION</h2></div>
            <div class="a">
                <p><font color="#3c3d41">We are passionate about inspiring people to better themselves, to grab opportunities, and to believe in themselves.</font></p>
                
            </div>
        </div>
        <div class="column middle">
            <i class="fa fa-life-ring" style="font-size:70px; text-align:center; padding:4px; padding-right:65px; margin-top:1%; color:#1AB188"> </i>
            <div class="header" style="color:#3c3d41; font-family:Sans-Serif">
                <h2>SUPPORT</h2></div>
            <div class="a" >
                <p ><font color="#3c3d41">Search thousands of Jobs. Stay on top of the market with Job Alerts. Send your CV to recruiters and employers.</font></p>
            </div>
        </div>
        <div class="column right">
            <i class="fa fa-cog" style="font-size:70px; text-align:center; padding:2px; padding-right:65px; color:#1AB188"> </i>
            <div class="header" style="color:#3c3d41; font-family:Sans-Serif">
                
            <h2>SERVICES</h2></div>
            <div class="a">
                <p><font color="#3c3d41">Access millions of dollars in fee-based jobs. Distribute the job seeker details to employers. Get help filling your positions.
   </font> </p>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">

            
        </div>
    </footer>
    </form>
</body>

</html>
