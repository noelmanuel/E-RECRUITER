<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="approvejs.aspx.cs" Inherits="Admin_approvejs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h4 style=" position:absolute; margin-top:-19%;">JOBSEEKER APPROVAL</h4>
<p style="  margin-top:-16%;">
    <asp:GridView ID="Gridjsapprove" runat="server" AutoGenerateColumns="False" DataKeyNames="usname" GridLines="None" 
        Height="184px" Width="974px" 
        onselectedindexchanged="Gridjsapprove_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="usname" HeaderText="UserName">
            <HeaderStyle BackColor="#1AB188" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Name">
            <HeaderStyle BackColor="#1AB188" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email Address">
            <HeaderStyle BackColor="#1AB188" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField HeaderText="Approve/Reject" SelectText="Approve" 
                ShowSelectButton="True">
            <HeaderStyle BackColor="Red" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="Red" HorizontalAlign="Center" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    </p>
</asp:Content>

