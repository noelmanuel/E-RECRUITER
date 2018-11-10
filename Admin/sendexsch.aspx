<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="sendexsch.aspx.cs" Inherits="Admin_sendexsch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.lab
{
    
    border-radius:10px;
    padding:3%;
    border:1px solid black;
    text-align:center;
    font-size:medium;
    font-weight:bold;
    margin-left:25%;
    margin-top:2%;
    }
    .leftbo
{
    
    border-radius:10px;
    padding:3%;
    border:1px solid black;

    
    font-size:medium;
    
    margin-left:25%;
    margin-top:2%;
   
    }
    .exam
    {
        text-align:center;
        margin-top:18px;
        
        }
        .schprb
        {
            margin-top:8px;
            }
            
            .gridh
            {
                border-radius:5px;
                font-size:large;
               
                
                }
                .gri
                {
                    position:absolute;
                    margin-top:2%;
                    margin-left:9%;
                    
                    
                    }
                

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" width:99%; height:auto; border:1px solid White; margin-top:-15%;">
<h3 style=" color:#1ab188;">SENT SCHEDULE TO ELIGIBLE JOBSEEKERS  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp ELIGIBLE CANDIDATES</h3></br>

<div style=" width:100%;">
<div style=" height:60px; width:250px; border:2px solid #ce8c45; display:inline-block; border-radius:10px;">
    <asp:Label  runat="server" Text="Company" Height="60" Width="240" Font-Bold="True" Font-Size="Large" CssClass="exam"></asp:Label></div>
<div style=" height:60px; width:250px; border:2px solid #ce8c45; display:inline-block; border-radius:10px;">
    <asp:Label runat="server" Text="Job Title" Height="60" Width="240" Font-Bold="True" Font-Size="Large" CssClass="exam"></asp:Label></div>
    <div style=" display:inline-block; margin-left:20%; margin-top:3.5%; position:absolute; top: -100px; left: 452px; width: 175px;">

                        <asp:GridView ID="GridView1" 
                        runat="server" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="usname" ForeColor="#333333" GridLines="None" 
                        onrowcommand="GridView1_RowCommand" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged1" Width="262px" Height="113px" 
                        
                        
                        >
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="usname" HeaderText="Name" >
                        <HeaderStyle Height="50px" Width="240px" BorderColor="#CE8C45" 
                            BorderStyle="Solid" BorderWidth="2px" CssClass="gridh" ForeColor="Black" />
                        <ItemStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" 
                            />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#507CD1"  ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1"  ForeColor="#333333" />
                    <HeaderStyle  ForeColor="White"  />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>

                </div>
</div>



<div style=" width:100%; margin-top:1%;">
<div style=" height:60px; width:250px; border:1px solid #000; display:inline-block;  border-radius:10px;">
    <asp:Label ID="Label1" runat="server"  CssClass="gri" Height="60" Width="240"></asp:Label></div>
<div style=" height:60px; width:250px; border:1px solid #000; display:inline-block; border-radius:10px;">
    <asp:Label ID="Label2" runat="server"  CssClass="gri"></asp:Label></div>
</div>
<p></br></p>





<asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Send Schedule" Height="40" Width="120" ForeColor="White" BackColor="#1AB188" BorderStyle="None" />
</div>
</asp:Content>

