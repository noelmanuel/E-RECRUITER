<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="presult.aspx.cs" Inherits="Admin_presult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h4 style=" position:absolute; margin-top:-19%;">SELECTION LIST</h4>
<div >
<asp:GridView ID="gd1" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" DataKeyNames="regno" GridLines="None" 
            onselectedindexchanged="gd1_SelectedIndexChanged" 
            
            style=" left: 0px; top:-20%; position: absolute; height: 237px; width: 938px" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellSpacing="1">
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="regno" HeaderText="Register No" >
                <HeaderStyle BackColor="#1AB188" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="compid" HeaderText="Company" >
                <HeaderStyle BackColor="#1AB188" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="jobtitle" HeaderText="Job Name" >
                <HeaderStyle BackColor="#1AB188" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="mark" HeaderText="Mark" >
                <HeaderStyle BackColor="#1AB188" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField HeaderText="Qualify/Disqualify" SelectText="Qualify" 
                    ShowSelectButton="True" >
                <HeaderStyle BackColor="Red" />
                <ItemStyle ForeColor="Red" HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:GridView>
        </div>
</asp:Content>

