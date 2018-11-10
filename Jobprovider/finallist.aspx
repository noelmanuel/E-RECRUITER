<%@ Page Title="" Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="finallist.aspx.cs" Inherits="Jobprovider_finallist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 style=" position:absolute; margin-top:-13%; color:#383860">FINAL LIST</h2>
<p style="  margin-top:-16%">
    <asp:GridView ID="Gridfinallist" runat="server" AutoGenerateColumns="False" DataKeyNames="regno" GridLines="None" 
        Height="184px" Width="974px" OnSelectedIndexChanged="Gridfinallist_SelectedIndexChanged" > 
        
        <Columns>
        
        <asp:BoundField DataField="regno" HeaderText="Register Number">
        <HeaderStyle BackColor="#383860" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="compid" HeaderText="Company">
            <HeaderStyle BackColor="#383860" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="jobtitle" HeaderText="Job Name">
            <HeaderStyle BackColor="#383860" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="mark" HeaderText="Mark">
            <HeaderStyle BackColor="#383860" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="status" HeaderText="Status">
            <HeaderStyle BackColor="#383860" ForeColor="White" />
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

