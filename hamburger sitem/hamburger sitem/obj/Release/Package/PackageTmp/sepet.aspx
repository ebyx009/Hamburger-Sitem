<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="hamburger_sitem.sepet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
    <style type="text/css">
        .auto-style1 {
            width: 487px;
        }
        .auto-style2 {
            width: 1158px;
            height: 294px;
        }
        *{
            background-color:#1e1c2a;
        }
:root{
    --main-color:#ff702a;
    --text-color:#fff;
    --bg-color:#1e1c2a;
    --big-font:5rem;
    --h2-font:2.25rem;
    --p-font:0.9rem;
}
        table{
            font-weight:700;
            color:white;
        }
        h3{
            text-align:center;
            color:white;

        }
        h4{
            text-align:center;
            color:white;

        }
        table {
            border: 1px solid;
        }    
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h3 id="sonuc" runat="server" class="text-center text-danger"></h3>
        <h4 id="sonuc2" runat="server" class="text-center text-success"></h4>
        <h3 id="sonuc3" runat="server" class="text-center text-success"></h3>
        <table class="auto-style2">
            <tr>
                <th class="auto-style1">
                    Ürün Resim
                </th>
                <th>
                    Ürün İsim
                </th>
                <th>
                    Ürün Fiyat
                </th>

            </tr>
            <asp:Repeater ID="tekrar" runat="server" >
                <ItemTemplate>
                    <tr>
                        <td>
                            <img src="<%# Eval("burger_img") %>">
                        </td>
                        <td style="font-size:18px; font-weight:bold;">
                            
                            <h2><%# Eval("burger_name") %></h2>

                        </td>
                        <td style="font-size:18px; font-weight:bold;">

                            <h2><%# Eval("burger_price") %></h2>

                        </td>

                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>

    </form>
</body>
</html>
