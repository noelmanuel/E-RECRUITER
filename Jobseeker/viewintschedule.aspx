<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/seeker.master" AutoEventWireup="true" CodeFile="viewintschedule.aspx.cs" Inherits="Jobseeker_viewintschedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" position:absolute; margin-top:-20%; top: 91px; left: 0px; height: 249px; width: 1006px;">
    <asp:GridView ID="Gridjsapprove" runat="server" AutoGenerateColumns="False" 
        Width="867px">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name">
            <HeaderStyle BackColor="#1AB188" HorizontalAlign="Center" Height="40px" 
                Width="200px" />
            <ItemStyle HorizontalAlign="Center" Height="40px" Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="compid" HeaderText="Company Name">
            <HeaderStyle BackColor="#1AB188" HorizontalAlign="Center" Height="40px" 
                Width="200px" />
            <ItemStyle HorizontalAlign="Center" Height="40px" Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="jobtitle" HeaderText="Job Post">
            <HeaderStyle BackColor="#1AB188" HorizontalAlign="Center" Height="40px" 
                Width="200px" />
            <ItemStyle HorizontalAlign="Center" Height="40px" Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="place" HeaderText="Place">
            <HeaderStyle BackColor="#1AB188" HorizontalAlign="Center" Height="40px" 
                Width="200px" />
            <ItemStyle HorizontalAlign="Center" Height="40px" Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="Date">
            <HeaderStyle BackColor="#1AB188" HorizontalAlign="Center" Height="40px" 
                Width="200px" />
            <ItemStyle Height="40px" HorizontalAlign="Center" Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="time" HeaderText="Time">
            <HeaderStyle BackColor="#1AB188" HorizontalAlign="Center" Height="40px" 
                Width="200px" />
            <ItemStyle HorizontalAlign="Center" Height="40px" Width="200px" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    </div>

</asp:Content>

