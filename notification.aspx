<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="notification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
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
         
         .note
         {
              margin-left:60%;
              margin-top:5%;
         }            }
        
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

            <div style=" font-size:medium; margin-left:55%; margin-top:-25px;">
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

        <div style=" margin-left:65%; margin-top:-30px;">
            <div class="dropdown">
            <asp:Button ID="Button4" runat="server" Height="30px" Text="REGISTER" 
                Width="130px" OnClick="Button4_click" BackColor="Red" 
                BorderStyle="None" ForeColor="White"   />
                <div class="dropdown-content">
                <a href="Jobprovider/providerregn.aspx">JOB PROVIDER</a>
                <a href="JobSeeker/jsregn.aspx">JOB SEEKER</a>
        
                </div>
            </div>
            </div>

       
        
       
        
        <div style="   position:absolute; margin-top:4%; margin-left:-86%; margin-top:10%; background-color:#fff; top: 22px; left: 1431px; margin-right: 0px;">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderStyle="Ridge"  
            CellPadding="3" DataKeyNames="compid" GridLines="None" 
           
                       
            style="top: 1px;left: 0px;" 
            BorderColor="White" BorderWidth="2px" CellSpacing="1" Height="326px" 
                Width="715px">
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="compid" HeaderText="Company Name" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="jobtitle" HeaderText="Job Name" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="salary" HeaderText="Salary" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="loc" HeaderText="Work Location" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="des" HeaderText="Experience" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="elgcourse" HeaderText="Eligible Course" >
                </asp:BoundField>
                <asp:BoundField DataField="elgbranch" HeaderText="Eligible Branch" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#F6B440" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:GridView>
        



       </div>
        </div>
        <div><asp:Image ID="Image2" runat="server" ImageUrl="~/images/noot.jpg" CssClass="note" /></div>
            

<div style="width:100%; height:45px; background-color:#282828; margin-top:18%;"><p style=" color:#1ab188; margin-left:85%; position:absolute; margin-top:5px; font-size:small;">COPYRIGHT OWNERS<br /> Noel & Muneersha</p></div>
    
    
    
    
    
    
    
    </div>
    </form>
</body>
</html>
