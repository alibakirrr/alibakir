<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="alibakir._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 40px;"></div>
    <div class="row">
        <div class="col"></div>
        <div class="col-8">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="photo/buji.png" class="d-block w-100" alt="1">
                        <div class="carousel-caption d-none d-md-block" style="background-color: rgba(0, 0, 0, 0.65)">
                            <h5>Son teknoloji parçalar!</h5>
                            <p>Türkiye Standartları Enstitüsü onaylı, kolay ulaşılan yedek parçalar.
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="photo/sanziman.jpg" class="d-block w-100" alt="2">
                        <div class="carousel-caption d-none d-md-block" style="background-color: rgba(0, 0, 0, 0.65)">
                            <h5>Garanti Süresi 10 Yıl</h5>
                            <p>Tercih ettiğiniz ürünümüze tam olarak 10 yıl destek sunuyoruz.</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev text-secondary" href="#carouselExampleFade" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" style="background-color: rgba(0, 0, 0, 0.65)" aria-hidden="true"></span>
                </a>
                <a class="carousel-control-next text-secondary" href="#carouselExampleFade" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon" style="background-color: rgba(0, 0, 0, 0.65)" aria-hidden="true"></span>
                </a>
            </div>
        </div>
        <div class="col"></div>
    </div>

    <div class="row text-center" style="margin-top: 35px;">
        <div class="col"></div>
        <div class="col-md-5">
            <h2>Yedek parça dünyasına adım atın!</h2>
            <hr style="width: 100%" />
        </div>
        <div class="col"></div>
    </div>

    <div class="row text-center" style="margin-top: 35px;">
        <div class="col-md-4">
            <div class="card shadow-sm">
                <img src="photo/guvenlik.jpg" class="d-block w-100" alt="1">
                <div class="card-body">
                    <p class="card-text">Sipariş ettiğiniz ve yapılması için bize bıraktığınız araç ve ürünler 7/24 güvenliğimiz altındadır.</p>

                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm">
                <img src="photo/araba.jpg" class="d-block w-100" alt="1">
                <div class="card-body">
                    <p class="card-text">Eski arabalardan tutun, son modem spor arabalara kadar her türlü ürüne ulaşım imkanı!</p>
                    <div class="d-flex justify-content-between align-items-center">
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm">
                <img src="photo/musteri.jpg" class="d-block w-100" alt="1">
                <div class="card-body">
                    <p class="card-text">Eski arabalardan tutun, son modem spor arabalara kadar her türlü ürüne ulaşım imkanı!</p>
                    <div class="d-flex justify-content-between align-items-center">
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
