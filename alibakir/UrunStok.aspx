<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrunStok.aspx.cs" Inherits="alibakir.stok_duzenleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group col-md-4" style="margin-top:40px; margin-bottom:20px;">
        <div class="form-group">
            <p>Stok düzenlemek için bir ürün seçiniz.</p>
            Stok Listesi:
            <asp:DropDownList ID="stokList" CssClass="form-select" runat="server" Font-Bold="True" Font-Italic="True">
            </asp:DropDownList>
        </div>
        <br />
        <div class="form-group" style="margin-bottom: 20px;">
            Adet:
            <asp:TextBox ID="adet" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

         <div class="form-group" >
            Fiyat:
            <asp:TextBox ID="ucret" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <br />
        <div class="form-group">
            <asp:Button ID="guncel" runat="server" CssClass="btn btn-success" Text="Güncelle" OnClick="guncel_Click" />
        </div>
    </div>

      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-light table-hover">
                <Columns>
                    <asp:BoundField DataField="ad" HeaderText="Ürün Adı" />
                    <asp:BoundField DataField="kategori" HeaderText="Ürün Kategorisi" />
                    <asp:BoundField DataField="adet" HeaderText="Ürün Adedi" />
                    <asp:BoundField DataField="ucret" HeaderText="Ürün Ücreti" />
                </Columns>
            </asp:GridView>

</asp:Content>
