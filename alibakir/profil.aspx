<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="alibakir.profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-4" style="margin-top: 30px; margin-bottom: 30px;">
        
        <h2 style="margin-bottom: 20px; margin-top: 10px;" >Profil Güncelleme</h2>
        <div class="card card-primary">
            <div class="card-body">
                <p class="card-text">
                   Kullanıcı ID: <asp:TextBox ID="id" CssClass="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                </p>

                <p class="card-text">
                   İsim: <asp:TextBox ID="ad" CssClass="form-control" runat="server"></asp:TextBox>
                </p>

                <p class="card-text">
                   Email: <asp:TextBox ID="email" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                </p>
            </div>
            <div class="card-footer">
                <asp:Button ID="guncelle" CssClass="btn btn-info" runat="server" OnClick="guncelle_Click" Text="Güncelle" />
            </div>
        </div>
    </div>
</asp:Content>
