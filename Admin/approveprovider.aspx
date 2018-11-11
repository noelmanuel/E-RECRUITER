<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Admin/adminmaster.master" CodeFile="approveprovider.aspx.cs" Inherits="Admin_approveprovider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h4 style=" position:absolute; margin-top:-19%;">JOBPROVIDER APPROVAL</h4>
<p style="  margin-top:-16%;">
    <asp:GridView ID="Gridproviderapprove" runat="server" AutoGenerateColumns="False" DataKeyNames="compid" GridLines="None" 
        Height="184px" Width="974px" 
        onselectedindexchanged="Gridproviderapprove_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="compid" HeaderText="Username">
            <HeaderStyle BackColor="#1AB188" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
            </asp:BoundField>
          <asp:BoundField DataField="cmpname" HeaderText="Company Name">
          <HeaderStyle BackColor="#1AB188" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
            </asp:BoundField>
           <asp:BoundField DataField="email" HeaderText="Email">
           <HeaderStyle BackColor="#1AB188" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="website" HeaderText="Website">
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
           
        





