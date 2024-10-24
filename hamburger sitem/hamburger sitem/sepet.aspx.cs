using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace hamburger_sitem
{
    public partial class sepet : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                if (Session["kullanici_adi"] == null)
                {
                    sonuc.InnerHtml = "Kullanıcı girişi yapılmamış.";
                    sonuc2.InnerHtml = "Kullanıcı girişine yönlendiriliyorsunuz.";
                    sonuc2.InnerHtml += "<meta http-equiv='refresh' content='3;url=giris.aspx'>";
                }
                else
                {
                    string urunid = Request.QueryString["id"];

                    SqlConnection bag = new SqlConnection("workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss");
                    bag.Open();
                    SqlCommand komut = new SqlCommand("SELECT * from sepet2 WHERE uyeid=@uyeid AND urunid=@urunid", bag);
                    komut.Parameters.AddWithValue("@uyeid", Session["id"].ToString());
                    komut.Parameters.AddWithValue("@urunid", urunid);
                    SqlDataReader okuyucu = komut.ExecuteReader();
                    if (okuyucu.Read())
                    {
                        okuyucu.Close(); // Okuyucu kapatılıyor
                    }
                    else
                    {
                        okuyucu.Close(); // Okuyucu kapatılıyor

                        SqlCommand komut2 = new SqlCommand("insert into sepet2(uyeid,urunid) values(@uyeid2,@urunid2)", bag);
                        komut2.Parameters.AddWithValue("@uyeid2", Session["id"].ToString());
                        komut2.Parameters.AddWithValue("@urunid2", urunid);
                        komut2.ExecuteNonQuery();
                    }

                    SqlDataAdapter adap = new SqlDataAdapter("SELECT burger_img, burger_name, burger_price FROM burger_info_tablo WHERE id=" + urunid, bag);
                    DataTable dt = new DataTable();
                    adap.Fill(dt);
                    tekrar.DataSource = dt;
                    tekrar.DataBind();
                    sonuc3.InnerHtml = "Ürün Sepete Eklendi.";

                    bag.Close();
                }
            }
        }

        private void UpdateSepetBilgileri(SqlConnection bag)
        {
            string uyeid = Session["id"].ToString();
            SqlDataAdapter adap = new SqlDataAdapter("SELECT * FROM sepet2 WHERE uyeid=@uyeid", bag);
            adap.SelectCommand.Parameters.AddWithValue("@uyeid", uyeid);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            tekrar.DataSource = dt;
            tekrar.DataBind();
            sonuc3.InnerHtml = "Ürün Sepete Eklendi.";
        }
    }
}