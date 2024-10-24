<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="duyuru.aspx.cs" Inherits="hamburger_sitem.duyuru" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <title>Admin Panel</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <form runat="server" id="form1">

    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-secondary navbar-dark">
                <a href="dashboard.aspx" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>Chêf Burger</h3>
                </a>
                <div class="navbar-nav w-100">
                    <a href="dashboard.aspx" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>Yönetici Paneli</a>
                    <div class="nav-item dropdown">
                    </div>
                    <a href="urunler.aspx" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Ürünler</a>
                    <a href="calisanlar.aspx" class="nav-item nav-link"><i class="fa fa-table me-2"></i>Çalışanlar</a>
                    <a href="duyuru.aspx" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Duyurular</a>
                    <div class="nav-item dropdown">
                    </div>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                <a href="dashboard.aspx" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex">Ahmet</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">Profilim</a>
                            <a href="#" class="dropdown-item">Ayarlar</a>
                            <a href="#" class="dropdown-item">Çıkış Yap</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->


            <!-- Chart Start -->

                <div class="container-fluid pt-4 px-4">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Pills Navs & Tabs</h6>
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="pills-listele-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-listele" type="button" role="tab"
                                aria-controls="pills-listele" aria-selected="false">
                                Listele
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-ekle-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-ekle" type="button" role="tab" aria-controls="pills-ekle"
                                aria-selected="true">
                                Ekle 
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-duzenle-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-duzenle" type="button" role="tab"
                                aria-controls="pills-duzenle" aria-selected="false">
                                Düzenle
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-sil-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-sil" type="button" role="tab"
                                aria-controls="pills-sil" aria-selected="false">
                                Sil    
                            </button>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">

                        <%-- Listele-Start --%>

                        <div class="tab-pane fade show active" id="pills-listele" role="tabpanel" aria-labelledby="pills-listele-tab">
                            <div class="table-responsive">
                                <table class="duyuruliste table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Resim</th>
                                            <th scope="col">Başlık</th>
                                            <th scope="col">Açıklama</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="rpt_slider" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <th scope="row"><%#Eval("id") %></th>
                                                    <td>
                                                        <img src="<%#Eval("duyuru_img") %>" />
                                                    </td>
                                                    <td><%#Eval("duyuru_ismi") %></td>
                                                    <td><%#Eval("duyuru_aciklama") %></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <%-- Listele-End --%>

                        <%-- Ekle-Start --%>

                        <div class="tab-pane fade" id="pills-ekle" role="tabpanel" aria-labelledby="pills-ekle-tab">
                            <div class="row bg-secondary rounded align-items-center justify-content-center mx-0">
                                <div class="col-md-6 text-center">
                                    <div class="mb-3">
                                        <label class="form-label"> Duyuru Başlık</label>
                                        <input type="text" class="form-control" name="duyurubaslik" />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Duyuru Açıklama</label>
                                        <input type="text" aria-multiline="true" class="form-control" name="duyuruaciklama" />
                                    </div>
                                    <asp:FileUpload CssClass="form-control bg-dark" ID="fu_duyuruimg" runat="server" />
                                    <asp:Button CssClass="btn btn-primary" Text="Ekle" runat="server" OnClick="eklebtn_Click" />
                                </div>
                            </div>
                        </div>

                        <%-- Ekle-End --%>

                        <%-- Düzenle-Start --%>

                        <div class="tab-pane fade" id="pills-duzenle" role="tabpanel" aria-labelledby="pills-duzenle-tab">
                            <div class="row bg-secondary rounded align-items-center justify-content-center mx-0">
                                <div class="col-md-6 text-center">
                                    <div class="mb-3">
                                        <label class="form-label">ID</label>
                                        <input type="text" class="form-control" name="duyuruid" aria-describedby="duzenleHelp" />
                                        <div id="duzenleHelp" class="form-text">
                                            Düzenlenecek öğenin id değerini girin.
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Başlık</label>
                                        <input type="text" class="form-control" name="duyurubaslik" />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Açıklama</label>
                                        <input type="text" aria-multiline="true" class="form-control" name="duyuruaciklama" />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Resim</label>
                                        <asp:FileUpload CssClass="form-control bg-dark" ID="fu_duyuruduzenle" runat="server" />
                                    </div>
                                    <asp:Button CssClass="btn btn-primary" Text="Düzenle" runat="server" OnClick="duzenlebtn_Click" />
                                </div>
                            </div>
                        </div>

                        <%-- Düzenle-End --%>

                        <%-- Sil-Start --%>

                        <div class="tab-pane fade" id="pills-sil" role="tabpanel" aria-labelledby="pills-sil-tab">
                            <div class="row bg-secondary rounded align-items-center justify-content-center mx-0">
                                <div class="col-md-6 text-center">
                                    <div class="mb-3">
                                        <label class="form-label">ID</label>
                                        <input type="text" class="form-control" name="duyurusil" aria-describedby="silHelp" />
                                        <div id="silHelp" class="form-text">
                                            Silinecek öğenin id değerini girin.
                                        </div>
                                    </div>
                                    <asp:Button CssClass="btn btn-primary" Text="Sil" runat="server" OnClick="silbtn_Click" />
                                </div>
                            </div>
                        </div>

                        <%-- Sil-End --%>
                    </div>
                </div>
            </div>

            <!--ekle-->
                        <div class="tab-pane fade" id="pills-ekle" role="tabpanel" aria-labelledby="pills-ekle-tab">
                            <div class="row bg-secondary rounded align-items-center justify-content-center mx-0">
                                <div class="col-md-6 text-center">
                                    <div class="mb-3">
                                        <label class="form-label">Başlık</label>
                                        <input type="text" class="form-control" name="slidertitle" />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Açıklama</label>
                                        <input type="text" aria-multiline="true" class="form-control" name="sliderdesc" />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Resim</label>
                                        <asp:FileUpload CssClass="form-control bg-dark" ID="fu_sliderimg" runat="server" />
                                    </div>
                                    <asp:Button CssClass="btn btn-primary" Text="Ekle" runat="server" OnClick="eklebtn_Click" />
                                </div>
                            </div>
                        </div>            
            <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-secondary rounded-top p-4">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="#">Chêf Burger</a>, Tüm Haklar Saklıdır. 
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
        </form>
</body>
</html>
