﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Jobprovider/provider.master" AutoEventWireup="true" CodeFile="viewsent.aspx.cs" Inherits="Jobprovider_viewsent" %>

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

<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:80%;"><asp:Button ID="Button2" runat="server" Text="Inbox" ForeColor="White" BackColor="#A03040" Height="30" Width="120" CssClass="nob" onclick="inboxc" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:92%;"><asp:Button ID="Button3" runat="server" Text="Compose" ForeColor="White" BackColor="#A03040" Height="30" Width="120" OnClick="composec" CssClass="nob" /></div>
<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:104%;"><asp:Button ID="Button4" runat="server" Text="Sent Mail" ForeColor="White" BackColor="#A03040" Height="30" Width="120" OnClick="sentc" CssClass="nob" /></div>

<div style=" background-color:#f6b440; height:30px; width:120px; position:absolute; margin-left:104%; margin-top:51%;"><asp:Button ID="Button5" runat="server" Text="Clear" ForeColor="White" BackColor="#A03040" Height="30" Width="120" CssClass="nob" /></div>



  <div style=" border:1px solid #383860; width:100%; height:86%; margin-top:3%; background-color:#383860;">
<div style=" border:1px solid #383860; width:99%; height:97.5%; margin-left:5px; margin-top:5px; background-color:#fff;">
<div style=" margin-left:20px; margin-top:10px; position:absolute;">
 
        
            
           
            
                <asp:Panel ID="pnlsent" runat="server">
                    <asp:LinkButton ID="lnkbtnsentmail" runat="server" Font-Bold="True" 
                    onclick="lnkbtnsentmail_Click" ForeColor="#1AB188">SentMail</asp:LinkButton>
                <asp:Label ID="lblsentstatus" runat="server" ForeColor="Red"></asp:Label> &nbsp &nbsp
                                <asp:CheckBox ID="chksentselect" runat="server" Text="Select All" 
                                    Font-Bold="True" AutoPostBack="True" 
                                    oncheckedchanged="chksentselect_CheckedChanged" ForeColor="#1AB188" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="lnksentdelete" runat="server" Font-Bold="True" 
                                    onclick="lnksentdelete_Click" ForeColor="Red">Delete</asp:LinkButton><p></p>
                          
                          
                                <asp:GridView ID="grdsentbox" runat="server" AutoGenerateColumns="False" 
                                    BackColor="#CCCCCC" BorderColor="#F6B440" BorderStyle="Solid" BorderWidth="1px" 
                                    CellPadding="4" CellSpacing="2" ForeColor="#000000" Height="41px" 
                                    Width="537px" onrowcommand="grdsentbox_RowCommand">
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <RowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Select" Visible="False">
                                        <ItemTemplate>
                                                <asp:Label ID="lblId" runat="server" Text='<%# Bind("Id")%>' Visible="false"></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Select">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chksentmail" runat="server" />
                                            </ItemTemplate>
                                            <FooterStyle Font-Bold="True" />
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="To" DataField="ToId">
                                            <FooterStyle Font-Bold="True" />
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Subject">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnksubjectselect" CommandName="View" CommandArgument='<%# Bind("Id")%>' runat="server"><%# Eval("Subject")%></asp:LinkButton>
                                            </ItemTemplate>
                                            <FooterStyle Font-Bold="True" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="Date" DataField="MDate">
                                            <FooterStyle Font-Bold="True" />
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                    </Columns>
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <SelectedRowStyle BackColor="#1ab188" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1ab188" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                            
                </asp:Panel>
                </div>

                                <div style=" background-color:#383860; height:630%; width:5px; margin-left:58%; position:absolute;"></div>
                                <div style=" position:absolute;  margin-top:-5px;  ">
               
                <asp:Panel ID="pnlview" runat="server">
                    
                           <div style=" width:470px; height:26px; background-color:#1ab188;margin-top:11%; margin-left:137%; ">
                <h5 style="color:White; text-align:center; padding-top:4px; margin-top:1%; ">&nbsp MESSAGE</h5></div>
            
                 <asp:Label ID="lblviewcontent" runat="server" CssClass="lbl" Width="200" Height="200"></asp:Label>
                                <asp:Label ID="lblviewto" runat="server"></asp:Label>
                        
                </asp:Panel>
                </div>

</div>

</div>



</div>
</asp:Content>

