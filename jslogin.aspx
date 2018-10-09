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
            height: 903px;
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

.fa-linkedin {
  background: #007bb5;
  color: white;
}
.fa-rss {
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
                
        

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
        
       
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
            background-color:#99CC00;
            color:White;
            
            
        }
        
       
    </style>
</head>
<body>
<div class="mainbox1" >

    <form id="form1" runat="server">
    
    <div class="firstbox">
    
        <p style="margin-left:17%; margin-top:5px; color:white; height: 15px; width: 509px;"><i style="color:white; margin-left:10%; color:white;"class="fa fa-phone"></i>&nbsp 0471 2434343<i style="color:white; margin-left:10%; color:white;"class="fa fa-television"></i>&nbsp Contact us:nonu@email.com</p>
        
        
        </div>
        <div class="secondbox">
        <p style="margin-left:70%; margin-top:4px; height: 17px; width: 204px;">
        <a href="#" class="fa fa-facebook"></a>
        <a href="#" class="fa fa-twitter"></a>
        <a href="#" class="fa fa-google"></a>
        <a href="#" class="fa fa-linkedin"></a>
        <a href="#" class="fa fa-rss"></a>
        </p>
    
     
        </div>
        </div>

<div class="mainbox2" >
    
    
    <div class="firstbox2">
    
         
        
        
        <img src="images/logo.jpg" style=" margin-left:30%; margin-top:20px;" /></div>
        <div class="secondbox2">
        
        
    
     <p style="margin-left:25%;">
            
            <asp:Button ID="Button1" runat="server" Height="30px" Text="HOME" 
                Width="100px" OnClick="Button1_click" BackColor="#99CC00" 
                BorderStyle="None" ForeColor="White" />
            <asp:Button ID="Button2" runat="server" Height="30px" Text="CONTACT" 
                Width="100px" OnClick="Button2_click" BackColor="#99CC00" 
                BorderStyle="None" ForeColor="White" />
            <asp:Button ID="Button3" runat="server" Height="30px" Text="ABOUT" 
                Width="100px" OnClick="Button3_click" BackColor="#99CC00" 
                BorderStyle="None" ForeColor="White" />
        <div style=" margin-left:65%; margin-top:-45px;">
            <div class="dropdown">
            <asp:Button ID="Button4" runat="server" Height="30px" Text="REGISTER" 
                Width="100px" OnClick="Button4_click" BackColor="Red" 
                BorderStyle="None" ForeColor="White"   />
                <div class="dropdown-content">
                <a href="searchjob.aspx">JOB PROVIDER</a>
                <a href="searchjob.aspx">JOB SEEKER</a>
        
                </div>
                </div>
                </div>
        
        </p>
    
     
        </div>
        </div>



<div style=" width:100%; height:800px;">
<img src="images/ggg.jpg" height="800px" width="100%">
<asp:Panel ID="Panel1" runat="server" defaultbutton="Button5">
<div style="padding: 100px 0 0 250px; height: 0px; width: 1px;">
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
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <h4>PASSWORD</h4></td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server"  Width="200px" Height="30px" TextMode="Password" CssClass="style7"></asp:TextBox>
                            
                        </td>
                    </tr>
                </table>
<br />
            <asp:Label ID="Label1" runat="server" EnableViewState="False" 
                style="color: #343843; color:Red;"></asp:Label>
                
<asp:Button ID="Button5" runat="server" Text="LOGIN" Width="100px" Height="50px" OnClick="Button5_Click"  CssClass="style8" />

    <br />
<br />

                <asp:HyperLink ID="HyperLink1" runat="server">Forgot Password?</asp:HyperLink>
                <br />

                <asp:HyperLink ID="HyperLink2" runat="server" 
                NavigateUrl="~/JobSeeker/jsregn.aspx" style="color: #343843">Sign Up</asp:HyperLink>






</div>

</div>


</div>
</asp:Panel >
</form>




<div style="height: 200px; width:100%; background-color:#343843;">

</div>









</body>
</html>
