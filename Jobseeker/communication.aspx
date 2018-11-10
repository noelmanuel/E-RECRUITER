<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/seeker.master" AutoEventWireup="true" CodeFile="communication.aspx.cs" Inherits="Jobseeker_communication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
              margin-left:140%;
              position:absolute;
              margin-top:2%;
              
     
              }
              .panel
              {
                  position:absolute;
                  
                  }
     
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" width:116%; height:750%; border:1px solid White; margin-top:-13%;">

<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:80%;"><asp:Button ID="Button2" runat="server" Text="Inbox" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" onclick="inboxc" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:92%;"><asp:Button ID="Button3" runat="server" Text="Compose" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" OnClick="composec" CssClass="nob" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:104%;"><asp:Button ID="Button4" runat="server" Text="Sent Mail" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" OnClick="sentc" CssClass="nob" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:92%; margin-top:51%;"><asp:Button ID="btnreply" runat="server" Text="Reply" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" OnClick="btnrpy" CssClass="nob" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:104%; margin-top:51%;"><asp:Button ID="Button5" runat="server" Text="Clear" ForeColor="White" BackColor="#F6B440" Height="30" Width="120" CssClass="nob" /></div>



<div style=" border:1px solid #f6b440; width:100%; height:86%; margin-top:3%; background-color:#f6b440;">
<div style=" border:1px solid #f6b440; width:99%; height:97.5%; margin-left:5px; margin-top:5px; background-color:#fff;">
<div style=" margin-left:20px; margin-top:10px; position:absolute;">
<asp:Panel ID="pnlinbox" runat="server">
                <asp:LinkButton ID="lnkbtninbox" runat="server" Font-Bold="True" 
                    onclick="lnkbtninbox_Click" ForeColor="#1AB188">Inbox</asp:LinkButton>
                <asp:Label ID="lblinboxstatus" runat="server" ForeColor="Red"></asp:Label>&nbsp &nbsp
                                <asp:CheckBox ID="chkinboxselect" runat="server" Font-Bold="True" 
                                    Text="Select All" AutoPostBack="True" 
                                    oncheckedchanged="chkinboxselect_CheckedChanged" ForeColor="#1AB188" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="lnkinboxdelete" runat="server" Font-Bold="True" 
                                    onclick="lnkinboxdelete_Click" ForeColor="Red">Delete</asp:LinkButton><p></p>
                          
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
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="FromId" HeaderText="From">
                                            <FooterStyle Font-Bold="True" />
                                        <HeaderStyle BackColor="#1AB188" />
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Subject">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnksubject" CommandName="View" CommandArgument='<%# Bind("Id")%>' runat="server"><%# Eval("Subject")%></asp:LinkButton>
                                            </ItemTemplate>
                                            <FooterStyle Font-Bold="True" />
                                            <HeaderStyle BackColor="#1AB188" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="MDate" HeaderText="Date">
                                            <FooterStyle Font-Bold="True" />
                                        <HeaderStyle BackColor="#1AB188" />
                                        <ItemStyle HorizontalAlign="Center" />
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
				                
 		                        </asp:Panel>
                                </div>

                                <div style=" background-color:#f6b440; height:630%; width:5px; margin-left:58%; position:absolute;"></div>
                                <div style=" position:absolute;  margin-top:-5px;  ">
         <asp:Panel ID="pnlview" runat="server">                   
               
		<div style=" width:470px; height:26px; background-color:#1ab188;margin-top:11%; margin-left:137%; ">
                <h5 style="color:White; text-align:center; padding-top:4px; margin-top:1%; ">&nbsp MESSAGE</h5></div>
            
                 <asp:Label ID="lblviewcontent" runat="server" CssClass="lbl" Width="200" Height="200"></asp:Label>
                           
                           
                </asp:Panel>
                </div>

</div>

</div>



</div>
</asp:Content>

