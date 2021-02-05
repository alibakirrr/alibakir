<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kayitol.aspx.cs" Inherits="alibakir.kayitol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top: 25px; margin-bottom: 75px;">
        <h1>Kayıt Sayfası</h1>
    <div class="col-md-3">
        
        <div class="form-group" >
             <asp:TextBox ID="Isim" CssClass="form-control" placeholder="İsim" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" ErrorMessage="İsim boş bırakılamaz" ControlToValidate="Isim"></asp:RequiredFieldValidator>
         </div>
         <div class="form-group">
             <asp:TextBox ID="Email" TextMode="Email" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger" ErrorMessage="Email boş bırakılamaz" ControlToValidate="Email"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
             <asp:TextBox ID="Sifre" TextMode="Password" CssClass="form-control" placeholder="Şifre" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="text-danger" ErrorMessage="Şifre boş bırakılamaz" ControlToValidate="Sifre"></asp:RequiredFieldValidator>
        </div>
        <asp:Button ID="Kayit" runat="server" CssClass="btn btn-info" Text="Kayıt ol" OnClick="Kayit_Click" />
        <asp:Label ID="mesaj" runat="server" Text=""></asp:Label>
    </div>
    </div>
    
</asp:Content>
