<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="hamburger_sitem.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <script src="sliderengine/jquery.js"></script>
    <script src="sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderengine/amazingslider-1.css">
    <script src="sliderengine/initslider-1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <!-----Home Start----->
    <header>
        <a href="" class="logo">Chêf Burger</a>
        <div class="bx bx-menu" id="menu-icon"></div>

        <ul class="navbar">
            <li><a href="index.aspx">Ana Menü</a></li>
            <li><a href="#about">Hakkımızda</a></li>
            <li><a href="menus.aspx">Menüler</a></li>
            <li><a href="#services">Servisler</a></li>
            <li><a href="" id="kull" runat="server"></a></li> <%--Burası Navbara Eklediğim Merhaba Zİyaretçi ve Merhaba Kullanıcı İsmi Yeri--%>

        </ul>


    </header>

    <section class="home" id="home">
        <div class="home-text">
            <h1>Chêf Burger</h1>
            <h2>Burgerde <br>En Çok Tercih Edilen Yer</h2>
            <a href="giris.aspx" id="girisd" runat="server" class="btn">Giriş Yap</a> <%--Burası Giriş ve Çıkış butonları--%>
            <a href="cikis.aspx" id="cikisd" runat="server" class="btn">Çıkış Yap</a><%--Burası Giriş ve Çıkış butonları--%>


        </div>
        <div class="home-img">
            <img src="img/home.png">
        </div>

    </section>

    <!-----About Start----->

    <section class="about" id="about">
        <div class="about-img">
            <img src="img/about.png">

        </div>

        <div class="about-text">
            <span>Hakkımızda</span>
            <h2>Bize Yemeği Sorun <br> Biz Söyleyeyim </h2>
            <p>Türkiye'deki faaliyetlerine 1995 yılında ATA Grubu'na bağlı TAB Gıda Sanayi A.Ş.'nin Türkiye'deki ana geliştirici ve üretici haklarını alarak bünyesine katmasıyla başlayan Chêf Burger®, kısa sürede restoran zincirlerinin halkalarını çoğaltarak, vazgeçilmez lezzetlerin adresi olmuştur.</p>
            <a href="#" class="btn">Dahasını Öğren</a>
        </div>
    </section>
        <!-----Menu Start----->
<%--    <section>
        <div class="heading">
            <span>Food Menu</span>
            <h2>Fresh taste and great price</h2>

        </div>
        <div class="menu-container">
            <asp:Repeater ID="rptProducts" runat="server">
                <ItemTemplate>
            <a href="#">
            <div class="box">
                <div class="box-img">
                    <img src="<%# Eval("burger_img") %>">
                </div>
                <h2><%# Eval("burger_name") %></h2>
                <h3><%# Eval("burger_info") %></h3>
                <span><%# Eval("burger_price") %></span>
                <i class='bx bx-cart'></i>
            </div>
            </a>
              </ItemTemplate>
            </asp:Repeater>
        </div>
    </section>
                <div class="amazingslider-wrapper" id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:1000px;margin:0px auto 56px; height="300px" width="500px">
        <div class="amazingslider" id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
                <asp:DataList ID="dl_slider" runat="server">
                    <ItemTemplate>
                <li><img src="<%# Eval("resim_url") %>" alt="<%# Eval("resim_alt") %>"  title="<%# Eval("resim_title") %>" />
                </li>
                 </ItemTemplate>
                </asp:DataList>
                </ul>
 
        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="JavaScript Image Slideshow">JavaScript Image Slideshow</a></div>
        </div>
    </div>--%>
    <!-----Service Start----->
    <section class="services" id="services">
        <div class="heading">
            <h1><span>Duyurular</span></h1>
        </div>
            <div class="service-container">
            <asp:Repeater ID="rptDuyuru" runat="server">
                <ItemTemplate>
            <div class="s-box">
                <img src="<%#Eval("duyuru_img") %>" />
                <h3><%#Eval("duyuru_ismi") %></h3>
                <p><%#Eval("duyuru_aciklama") %></p>

            </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>

    </section>

    <!-----Call To Action Start----->
    <section class="cta">
        <h2>Burgerlerimiz Hakkında Sorun Mu Var <br> Hemen Sor </h2>
        <a href="#" class="btn">İletişime Geç</a>

    </section>
        <!-----Footer Start----->
    <section id="contact">
        <div class="footer">
            <div class="main">
                <div class="col">
                    <h4>Linkler</h4>
                    <ul>
                        <li><a href="#">Ana Menü</a></li>
                        <li><a href="#">Hakkımızda</a></li>
                        <li><a href="#">Menüler</a></li>
                        <li><a href="#">Servislerimiz</a></li>
                        <li><a href="#">İletişim</a></li>
                    </ul>

                </div>

                <div class="col">
                    <h4>Ayrıca Servislerimiz</h4>
                    <ul>
                        <li><a href="#">Website Tasarımı</a></li>
                        <li><a href="#">Website Kodlaması</a></li>
                        <li><a href="#">Marketing</a></li>
                        <li><a href="#">Yönetmenlik</a></li>
                        <li><a href="#">Grafik Tasarım</a></li>
                    </ul>

                </div>

                <div class="col">
                    <h4>Bilgi</h4>
                    <ul>
                        <li><a href="#">Hakkımızda</a></li>
                        <li><a href="#">Kargo Bilgileri</a></li>
                        <li><a href="#">Gizlilik Koşulları</a></li>
                        <li><a href="#">Şart ve Koşullar</a></li>
                    </ul>

                </div>

                <div class="col">
                    <h4>İletişime Geç</h4>
                    <div class="social">
                        <a href="#"><i class='bx bxl-facebook-circle'></i></a>
                        <a href="#"><i class='bx bxl-instagram'></i></a>
                        <a href="#"><i class='bx bxl-twitter' ></i></a>
                        <a href="#"><i class='bx bxl-youtube' ></i></a>
                    </div>

                </div>

            </div>

        </div>

    </section>
    <!-----JavaScript----->
    <script type="text/javascript" src="script.js"></script>
    <script src="script.js"></script>

        </div>
    </form>
</body>
</html>
