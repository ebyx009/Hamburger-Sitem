<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dinamiksite.aspx.cs" Inherits="hamburger_sitem.dinamiksite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Fiyatlar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <style>
        #urunimg{
            text-align:center;
            margin:10px 570px;
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <header>
        <a href="" class="logo">Chêf Burger</a>
        <div class="bx bx-menu" id="menu-icon"></div>

        <ul class="navbar">
            <li><a href="index.aspx">Ana Menü</a></li>
            <li><a href="index.aspx">Hakkımızda</a></li>
            <li><a href="menus.aspx">Menüler</a></li>
            <li><a href="index.aspx">Servisler</a></li>
        </ul>
    </header>




                    <section>
        <div class="menu-container">
            <div class="box">
                <div class="box-img">
                    <asp:Image ID="urunimg" CssClass="productimg" runat="server" />
                </div>
                <h2><asp:Literal Text="text" ID="urunadltrl" runat="server" /></h2>
                <h3><asp:Literal Text="text" ID="urunbilgiltrl" runat="server" /></h3>
                <span><asp:Literal Text="text" ID="fytltrl" runat="server" /></span>
                <i class='bx bx-cart'></i>
            </div>
        </div>
    </section>



        </div>
    </form>
</body>
</html>
