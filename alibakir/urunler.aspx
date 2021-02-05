<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="urunler.aspx.cs" Inherits="alibakir.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top: 25px; margin-bottom: 75px;">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-light table-hover border-dark border-top" >
              
                   <Columns>
                     
                    <asp:BoundField  DataField="ad" HeaderText="Ürün Adı" />
                    <asp:BoundField DataField="kategori" HeaderText="Ürün Kategorisi" />
                    <asp:BoundField DataField="adet" HeaderText="Ürün Adedi" />
                    <asp:BoundField DataField="ucret" HeaderText="Ürün Ücreti" />
                         
                </Columns>
      
            </asp:GridView></div>
</asp:Content>
