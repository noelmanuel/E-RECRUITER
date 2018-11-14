<%@ Page Title="" Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="finallist.aspx.cs" Inherits="Jobprovider_finallist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style=" position:absolute; margin-top:-13%; color:#383860">FINAL LIST</h2>
<p style="  margin-top:-16%">
    <asp:GridView ID="gd2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" CellSpacing="1" DataKeyNames="regno" GridLines="None" 
            onselectedindexchanged="gd2_SelectedIndexChanged" 
            
            
        style="top: -35px; left: 50px; position: absolute; height: 133px; width: 881px; z-index: 1;">
            <RowStyle BackColor="#DEDFDE" ForeColor="#2a823e" />
            <Columns>
                <asp:BoundField DataField="regno" HeaderText="Register No:" >
                <HeaderStyle BackColor="#383860" />
                <ItemStyle HorizontalAlign="Center" BackColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="compid" HeaderText="Company" >
                <HeaderStyle BackColor="#383860" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" BackColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="jobtitle" HeaderText="Job Name" >
                <HeaderStyle BackColor="#383860" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" BackColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="mark" HeaderText="Mark" >
                <HeaderStyle BackColor="#383860" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" BackColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="status" HeaderText="Result" >
                <HeaderStyle BackColor="#383860" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" BackColor="White" />
                </asp:BoundField>
                <asp:CommandField HeaderText="Approve/Reject" SelectText="Approve" 
                    ShowSelectButton="True" >
                <HeaderStyle BackColor="Red" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" BackColor="White" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="#2a823e" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="#34a346" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#e2e2e2" Font-Bold="True" ForeColor="#ed3636" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#e6f2e8" />
        </asp:GridView>
            
</p>
</asp:Content>

