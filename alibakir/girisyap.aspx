<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="girisyap.aspx.cs" Inherits="alibakir.girisyap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top: 25px; margin-bottom: 75px;">
        <h1>Giriş Sayfası</h1>
        <div class="form-group col-md-3">
            <asp:TextBox ID="Email" TextMode="Email" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" ErrorMessage="Email boş bırakılamaz" ControlToValidate="email"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group col-md-3">
            <asp:TextBox ID="Sifre" TextMode="Password"  CssClass="form-control" placeholder="Şifre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger" ErrorMessage="Şifre boş bırakılamaz" ControlToValidate="Sifre"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group col-md-3">
            <asp:CheckBox ID="beni_hatirla" runat="server" />
            <asp:Label ID="Label1" runat="server" Text="Beni Hatırla"></asp:Label>
        </div>

        <div class="form-group col-md-3">
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Text="Giriş" OnClick="Button2_Click" />
            <asp:Label ID="mesaj" runat="server" CssClass="text-danger" Text=""></asp:Label>
        </div>
    </div>
    
    
</asp:Content>
