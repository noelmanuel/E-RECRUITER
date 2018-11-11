<%@ Page Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="presult.aspx.cs" Inherits="Admin_presult" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-size: xx-large;
            font-weight: bold;
            font-family: "Courier New", Courier, monospace;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 419px; width: 958px; top: 3px; left: 3px; position: absolute; text-align: center; background-color: #000066">
        &nbsp;&nbsp;<asp:GridView ID="gd1" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" DataKeyNames="regno" GridLines="None" 
            onselectedindexchanged="gd1_SelectedIndexChanged" 
            
            style="top: 126px; left: 272px; position: absolute; height: 133px; width: 421px" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellSpacing="1">
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="regno" HeaderText="Register No" />
                <asp:BoundField DataField="compid" HeaderText="Company" />
                <asp:BoundField DataField="jobtitle" HeaderText="Job Name" />
                <asp:BoundField DataField="mark" HeaderText="Mark" />
                <asp:CommandField HeaderText="Qualify/Disqualify" SelectText="Qualify" 
                    ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <span class="style5">SELECTION lIST</span></p>
</asp:Content>

