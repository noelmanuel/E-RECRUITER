<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="images/www.jpg">
    <form id="form1" runat="server">
    <div style="height: 180px">
    
        &nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="175px" 
            ImageUrl="~/images/head.jpg" 
            style="top: 15px; left: 14px; position: absolute; width: 886px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/mainpic.jpg" 
            style="top: 15px; left: 905px; position: absolute; height: 311px; width: 316px" />
    <div style="top: 201px; left: 13px; position: absolute; height: 55px; width: 886px">
   

        <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" 
            ImageUrl="~/images/HOMEBT.jpg" onclick="ImageButton1_Click" Width="111px" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="53px" 
            ImageUrl="~/images/SEARBT.jpg" onclick="ImageButton2_Click" />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="53px" 
            ImageUrl="~/images/CSBT.jpg" onclick="ImageButton3_Click" />
        <asp:ImageButton ID="ImageButton4" runat="server" Height="53px" 
            ImageUrl="~/images/ABTBT.jpg" onclick="ImageButton4_Click" />
        <asp:ImageButton ID="ImageButton5" runat="server" Height="53px" 
            ImageUrl="~/images/CNTBT.jpg" onclick="ImageButton5_Click" />
        <asp:ImageButton ID="ImageButton6" runat="server" Height="53px" 
            ImageUrl="~/images/SIGNINBT.jpg" onclick="ImageButton6_Click" />
        <asp:ImageButton ID="ImageButton7" runat="server" Height="53px" 
            ImageUrl="~/images/SIGNUPBT.jpg" onclick="ImageButton7_Click" Width="110px" />
   

    </div>
    
        <div style="top: 268px; left: 10px; position: absolute; height: 335px; width: 883px">
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
    
    </div>
    </form>
</body>
</html>
