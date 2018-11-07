<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="communication.aspx.cs" Inherits="Admin_communication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
   <style type="text/css">
    .name
    {
        position:absolute;
        margin-left:8%;
        margin-top:8%;
        border-radius:13px;
        border: 1px solid #e2dede;
        outline:none;
        padding-left:10px;
        
     }
     .email
    {
        position:absolute;
        margin-left:8%;
        margin-top:13%;
        border-radius:13px;
        border: 1px solid #e2dede;
        outline:none;
        padding-left:10px;
     }
     .sub
    {
        position:absolute;
        margin-left:8%;
        margin-top:18%;
        border-radius:13px;
        border: 1px solid #e2dede;
        outline:none;
        padding-left:10px;
        
        
     }
     .msg
    {
        position:absolute;
        margin-left:47%;
        margin-top:50px;
        border-radius:13px;
        border: 1px solid #e2dede;
        outline:none;
        padding-left:10px;
     }
     
     .but
    {
        position:absolute;
        margin-left:8%;
        margin-top:23%;
        border-radius:13px;
        border:none;
        outline:none;
        color:White;
        background-color:#E84C3D;
     }
     .but:hover
     {
         background-color:#f66153;
         }
      .nob
      {
          border:none;
          
          }
       
          
          .lbl
          {
              margin-left:61%;
              position:absolute;
              margin-top:-37%;
     
              }
     
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" height:530px; width:1200px; margin-top:-12%;">

<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:63.2%;">
    <asp:Button ID="Button2" runat="server" Text="Inbox" ForeColor="White" 
        BackColor="#F6B440" Height="30" Width="120" CssClass="nob" 
        onclick="inboxc" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:74%;">
    <asp:Button ID="Button3" runat="server" Text="Compose" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" OnClick="composec" CssClass="nob" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:84.5%;">
    <asp:Button ID="Button4" runat="server" Text="Sent Mail" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" OnClick="sentc" CssClass="nob" /></div>

<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-top:42%;">
    <asp:Button ID="btnreply" runat="server" Text="Reply" Font-Bold="true" OnClick="btnrpy" ForeColor="Red" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" /></div>

<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-top:42%; margin-left:130px;">
    <asp:Button ID="Button5" runat="server" Text="Clear" Font-Bold="true" ForeColor="Red" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" /></div>


<div style=" background-color:#f6b440; height:460px; width:1140px; position:absolute; margin-top:3%; ">
<div style=" background-color:#fff; height:430px; width:1105px; position:absolute; margin-top:15px; margin-left:17px;">
    
    <div style=" position:absolute; margin-left:2%; margin-top:2%;">

    
    
            <asp:Panel ID="pnlinbox" runat="server" Height="229px">
                <asp:LinkButton ID="lnkbtninbox" runat="server" Font-Bold="True" 
                    onclick="lnkbtninbox_Click" ForeColor="#1AB188">Inbox</asp:LinkButton>
                <asp:Label ID="lblinboxstatus" runat="server" ForeColor="Red"></asp:Label>&nbsp &nbsp
                                <asp:CheckBox ID="chkinboxselect" runat="server" Font-Bold="True" 
                                    Text="Select All" AutoPostBack="True" 
                                    oncheckedchanged="chkinboxselect_CheckedChanged" ForeColor="#1AB188" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="lnkinboxdelete" runat="server" Font-Bold="True" 
                                    onclick="lnkinboxdelete_Click" ForeColor="Red">Delete</asp:LinkButton><p></p>
                          <div>
                                <asp:GridView ID="grdinbox" runat="server" AutoGenerateColumns="False" 
                                    BackColor="#CCCCCC" BorderColor="#F6B440" BorderStyle="Solid" BorderWidth="1px" 
                                    CellPadding="4" CellSpacing="2" ForeColor="Black" Height="41px" 
                                    Width="537px" onrowcommand="grdinbox_RowCommand" 
                                    onrowdatabound="grdinbox_RowDataBound">
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <RowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Select" Visible="False">
                                            <ItemTemplate>
                                                <asp:Label ID="lblId" runat="server" Text='<%# Bind("Id")%>' Visible="false"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Select">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkinboxselect" runat="server" />
                                            </ItemTemplate>
                                            <FooterStyle Font-Bold="True" />
                                            <HeaderStyle BackColor="#1AB188" />
                                            <ItemStyle HorizontalAlign="Center" BackColor="White" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="FromId" HeaderText="From">
                                            <FooterStyle Font-Bold="True" />
                                        <HeaderStyle BackColor="#1AB188" />
                                        <ItemStyle HorizontalAlign="Center" BackColor="White" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Subject">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnksubject" CommandName="View" CommandArgument='<%# Bind("Id")%>' runat="server"><%# Eval("Subject")%></asp:LinkButton>
                                            </ItemTemplate>
                                            <FooterStyle Font-Bold="True" />
                                            <HeaderStyle BackColor="#1AB188" />
                                            <ItemStyle HorizontalAlign="Center" BackColor="White" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="MDate" HeaderText="Date">
                                            <FooterStyle Font-Bold="True" />
                                        <HeaderStyle BackColor="#1AB188" />
                                        <ItemStyle HorizontalAlign="Center" BackColor="White" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Status" Visible="False">
                                            <ItemTemplate>
                                                <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("MailStatus")%>'> </asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
				                <div>
 		                        </asp:Panel>
                </div>
		<div style=" background-color:#f6b440; height:193%; width:3px; margin-left:240%; margin-top:-25%; position:absolute;"></div>
        <div style=" position:absolute; margin-left:2%; margin-top:3.5%; ">
         <asp:Panel ID="pnlview" runat="server" Height="155px" Width="949px">                   
               
		<div style=" width:470px; height:26px; background-color:#1ab188; position:absolute; margin-left:60%; margin-top:-42.3%;  ">
                <h5 style="color:White; text-align:center; padding-top:2px; position:absolute; margin-left:43%; margin-top:1%; ">&nbsp MESSAGE</h5></div>
            
                 <asp:Label ID="lblviewcontent" runat="server" CssClass="lbl"></asp:Label>
                           
                           
                </asp:Panel>
                </div>



</div>
</div>
</div>
</asp:Content>

