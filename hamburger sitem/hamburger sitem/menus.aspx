<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menus.aspx.cs" Inherits="hamburger_sitem.menus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menus</title>
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
</head>5
<body>

        <header>
        <a href="" class="logo">Chêf Burger</a>
        <div class="bx bx-menu" id="menu-icon"></div>

        <ul class="navbar">
            <li><a href="index.aspx">Ana Menü</a></li>
            <li><a href="index.aspx">Hakkımızda</a></li>
            <li><a href="menus.aspx">Menüler</a></li>
            <li><a href="index.aspx">Servisler</a></li>
            <li><a href="" id="kull" runat="server"></a></li>


        </ul>
    </header>

    <section class="home" id="home">
        <div class="home-text">
            <h1>Chêf Burger</h1>
            <h2>Burgerde <br>En Çok Tercih Edilen Yer</h2>
        </div>
                <div class="home-img">
            <img src="img/home.png">
        </div>


    </section>
            <div class="cart-items-container">
          <asp:Repeater runat="server" ID="sepetrpt">
              <ItemTemplate>
        <div class="cart-item">
          <i class="fas fa-times"></i>
          <img src="<%# Eval("burger_img") %>" alt="" />
          <div class="content">
            <h3><%# Eval("burger_name") %></h3>
            <div class="price"><%# Eval("burger_price") %></div>
          </div>
        </div>
            </ItemTemplate>
          </asp:Repeater>
      </div>



        <section>
        <div class="heading">
            <span>Yemek Menüsü</span>
            <h2>Taze Tat ve Ucuz Yemek</h2>

        </div>
        <div class="menu-container">
            <asp:Repeater ID="rptProducts" runat="server">
                <ItemTemplate>
            <div class="box">
                <div class="box-img">
                    <img src="<%# Eval("burger_img") %>">
                </div>
                <h2><%# Eval("burger_name") %></h2>
                <h3><%# Eval("burger_info") %></h3>
                <span><%# Eval("burger_price") %></span>
                <button class="btn"><a href="/dinamiksite.aspx?id=<%#Eval("id") %>">Satın Al</a></button>
                <a href="sepet.aspx?id=<%#Eval("id") %>"><i class='bx bx-cart'></i></a>

            </div>
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
    </div>

</body>
</html>
