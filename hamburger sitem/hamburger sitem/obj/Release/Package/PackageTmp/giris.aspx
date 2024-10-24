<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="hamburger_sitem.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Giriş Yap</title>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3 class="text-center">Giriş Yap</h3>

            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="col-md-4 control-label">Kullanıcı Adı :</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="kad" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="col-md-4 control-label">Şifre :</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="sfr" CssClass="form-control" runat="server"></asp:TextBox>
                            <br />
                            <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" Text="Giriş Yap" OnClick="Button1_Click" Width="100px" />
                            <br />
                            <asp:Label ID="durum" runat="server" CssClass="text-danger" Font-Bold="True"></asp:Label>
                        </div>
                    </div>

                </div>
                <div class="col-md-3">
                </div>
            </div>



        </div>
    </form>
</body>
</html>
