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



        <div style="width:100%; height:49px; background-color:#fff; border-bottom: 1px solid #282828">
            <asp:Image  runat="server" ImageUrl="~/images/logo1.jpg" CssClass="log" Width="150" Height="21" />
            <div style=" font-size:medium; margin-left:78.5%; margin-top:-25px;">
            <asp:Button ID="Button1" runat="server" Text="HOME" Height="30" Width="100" 
                    BackColor="#1AB188" BorderStyle="None" ForeColor="White" 
                    onclick="Button1_Click1" />
            <asp:Button ID="Button2" runat="server" Text="SIGN OUT" Height="30" Width="100" 
                    BackColor="Red" BorderStyle="None" ForeColor="White" onclick="Button2_Click1" />
            </div>
            </div>
    
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
        <div style="width:68%; height:600px; background-color:#e5e5e5; display:inline-block; ">
        <div style=" margin-left:5%; font-size:medium;">
        <asp:GridView ID="grdquestions" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" CellSpacing="1" DataKeyNames="code" GridLines="None" 
            onselectedindexchanged="grdquestions_SelectedIndexChanged" 
            
                
                
                
                style="top: 136px; position: absolute; height: 418px; width: 983px; left: 224px;">
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        QUESTIONS
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl2" runat="server" Text='<%#Eval("qns")%>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#F1701B" />
                    <ItemStyle CssClass="bo" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        OPTIONS
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:RadioButton ID="rdb1" runat="server" GroupName="g1" 
                            Text='<%#Eval("ch1")%>' /> &nbsp &nbsp 
                        <asp:RadioButton ID="rdb2" runat="server" GroupName="g1" 
                            Text='<%#Eval("ch2")%>' /> &nbsp &nbsp
                        <asp:RadioButton ID="rdb3" runat="server" GroupName="g1" 
                            Text='<%#Eval("ch3")%>' /> &nbsp &nbsp
                        <asp:RadioButton ID="rdb4" runat="server" GroupName="g1" 
                            Text='<%#Eval("ch4")%>' /> &nbsp &nbsp
                    </ItemTemplate>
                    <HeaderStyle BackColor="#F0CE30" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:GridView>
        
        <div style=" margin-top:36%;position:absolute; margin-left:48.5%;">
            <asp:Button ID="Button3" runat="server" Text="Submit" Height="30" Width="100" BackColor="#1AB188" OnClick="Button1_Click" BorderStyle="None" ForeColor="White" />
            <asp:Button ID="Button4" runat="server" Text="Stop" Height="30" Width="100" BackColor="Red" BorderStyle="None" ForeColor="White" />
            </div>
            </div>
        </div>
        <div style="width:19%; height:600px; background-color:black; display:inline-block; float:right; font-size:0;">

            <div style="width:100%; height:299px; background-color:#282828;   border-bottom:1px solid #999898;">
            <h5 style=" font-size:medium; position:absolute; color:#CEBF91; margin-left:4%;">CANDIDATE DETAILS</h5>

            <h6 style=" font-size:medium; position:absolute; color:#CEBF91; margin-left:5px; margin-top:80px;">Register No :</h6>
                <asp:Label ID="Label1" runat="server"  ForeColor="White" 
                    Font-Size="Medium" CssClass="lb3"></asp:Label><br />
            <h6 style=" font-size:medium; position:absolute; color:#CEBF91; margin-left:5px; margin-top:100px;">Name       :</h6>
                <asp:Label ID="Label2" runat="server"  ForeColor="White" 
                    Font-Size="Medium" CssClass="lb4"></asp:Label>
            <h6 style=" font-size:medium; position:absolute; color:#CEBF91; margin-left:5px; margin-top:140px;">Company Name :</h6>
                <asp:Label ID="Label3" runat="server"  ForeColor="White" 
                    Font-Size="Medium" CssClass="lb5"></asp:Label>
            <h6 style=" font-size:medium; position:absolute; color:#CEBF91; margin-left:5px; margin-top:160px;">Job Post     :</h6>
                <asp:Label ID="Label4" runat="server"  ForeColor="White" 
                    Font-Size="Medium" CssClass="lb6"></asp:Label>
            <h6 style=" font-size:medium; position:absolute; color:#CEBF91; margin-left:5px; margin-top:200px;">Total Time :</h6><asp:Label ID="Label5" runat="server" Text="10 Mins" ForeColor="White" Font-Size="Medium" CssClass="lb1"></asp:Label>
            <h6 style=" font-size:medium; position:absolute; color:#CEBF91; margin-left:5px; margin-top:220px;">No of Question :</h6>
                <asp:Label ID="Label6" runat="server" Text="5" ForeColor="White" 
                    Font-Size="Medium" CssClass="lb2"></asp:Label>
            </div><br />
            <div style="width:100%; height:149px; background-color:#282828; border-bottom:1px solid #999898;"></div><br />
            <div style="width:100%; height:148px; background-color:#282828; border-bottom:1px solid #999898;">
            <h5 style=" font-size:medium; position:absolute; color:#CEBF91; margin-left:6%; margin-top:10px;">Server Statistics</h5>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/server.jpg" CssClass="server" /></div>
        </div>

        
    
        <div style="width:100%; height:38px; background-color:#282828;"></div>
    
    
    
    
    
    
    
    </div>
    </form>
</body>
</html>
