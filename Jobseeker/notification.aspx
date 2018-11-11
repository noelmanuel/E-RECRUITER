<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/seeker.master" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="Jobseeker_notification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" border:1px solid black; width:120%; height:600%; position:absolute; margin-top:-10%; background-color:#1ab188;">
<div style=" border:1px solid black; width:35%; height:98.5%; position:absolute; margin-top:2px; margin-left:2px;">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/jobnot.jpg" Width="100%" Height="100%" />
</div>



<div style=" border:1px solid black; width:64%; height:98.5%; position:absolute; margin-left:35.5%; margin-top:2px; background-color:#fff;">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderStyle="Ridge"  
            CellPadding="3" DataKeyNames="compid" GridLines="None" 
            onrowcommand="GridView1_RowCommand" 
                       
            style="top: 1px; position: absolute; height: 133px; width: 100%" 
            BorderColor="White" BorderWidth="2px" CellSpacing="1">
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="cmpname" HeaderText="Company Name" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="jobtitle" HeaderText="Job Name" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="salary" HeaderText="Salary" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="loc" HeaderText="Work Location" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="des" HeaderText="Description" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="compid" HeaderText="Company Id" >
                    <ItemStyle HorizontalAlign="Center"  />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Apply">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnSubmit" ForeColor="Red" runat="server" 
                            CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" 
                            CommandName="Submit" Text='<%# Bind("compid") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <EditItemTemplate>
                    </EditItemTemplate>
                    <HeaderStyle BackColor="Red" />
                    <ItemStyle HorizontalAlign="Center" ForeColor="Red" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#F6B440" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:GridView>
        
</div>

</div>
</asp:Content>

