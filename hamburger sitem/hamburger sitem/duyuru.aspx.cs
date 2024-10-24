using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace hamburger_sitem
{
    public partial class duyuru : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string yol = "workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss";
            SqlConnection baglan = new SqlConnection();
            baglan.ConnectionString = yol;
            baglan.Open();
            string sorgu = "SELECT * FROM duyuru_tablo"; // duyuru tablosundan tüm değerleri seçmemizi sağlar.
            SqlCommand cmdslider = new SqlCommand("select * from dbo.duyuru_tablo", baglan);
            SqlDataReader drslider = cmdslider.ExecuteReader();

            rpt_slider.DataSource = drslider;
            rpt_slider.DataBind();
            drslider.Close();


        }

        protected void eklebtn_Click(object sender, EventArgs e)
        {
            if (fu_duyuruimg.HasFile)
            {
                fu_duyuruimg.SaveAs(Server.MapPath("/img/" + fu_duyuruimg.FileName)); // duyuru için gerekli olan resimi sunucuya ekliyor.
                string title = Request.Form["duyurubaslik"]; //duyurunun baslığını formdan talep ettiğimiz yer.
                string desc = Request.Form["duyuruaciklama"]; //duyurunun açıklamasını formdan talep ettiğimiz yer.
                string yol = "workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss";
                SqlConnection baglan = new SqlConnection();
                baglan.ConnectionString = yol;
                string ekle = "INSERT INTO duyuru_tablo (duyuru_ismi,duyuru_aciklama,duyuru_img) VALUES (@p1,@p2,@p3)"; //duyuru tablosundan isim,açıklama ve resimin değerleri
                SqlCommand cmd = new SqlCommand(ekle, baglan);
                baglan.Open();
                cmd.Parameters.AddWithValue("@p1", title); //parametrelerin değerleriyle birlikte duyurunun başlığını ekliyoruz.(başlık)
                cmd.Parameters.AddWithValue("@p2", desc); //parametrelerin değerleriyle birlikte duyurunun başlığını ekliyoruz.(aciklama)
                cmd.Parameters.AddWithValue("@p3", "/img/" + fu_duyuruimg.FileName); //parametrelerin değerleriyle duyurunun resimini ekliyoruz.
                cmd.ExecuteNonQuery();
            }            
        }

        protected void duzenlebtn_Click(object sender, EventArgs e)
        {
            if (fu_duyuruduzenle.HasFile)
            {
                fu_duyuruduzenle.SaveAs(Server.MapPath("/img/" + fu_duyuruduzenle.FileName));
                string title = Request.Form["duyurubaslik"]; //duyurunun baslığını formdan talep ettiğimiz yer.
                string desc = Request.Form["duyuruaciklama"]; //duyurunun açıklamasını formdan talep ettiğimiz yer.
                string id = Request.Form["id"]; //duyurunun idsini formdan talep ettiğimiz yer.
                string yol = "workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss";
                SqlConnection baglan = new SqlConnection();
                baglan.ConnectionString = yol;
                string duzenle = "UPDATE duyuru_tablo SET resim_url = @p1, resim_alt = @p2, resim_title = @p3 WHERE id = @p4"; //duyuru tablosundaki değerleri değiştirebileceğimiz kod satırı.
                SqlCommand cmd = new SqlCommand(duzenle, baglan);
                baglan.Open();
                cmd.Parameters.AddWithValue("@p1", "/img/" + fu_duyuruduzenle.FileName);//parametrelerin değerleriyle duyurunun resimini ekliyoruz.
                cmd.Parameters.AddWithValue("@p2", title);//parametrelerin değerleriyle birlikte duyurunun başlığını ekliyoruz.(başlık)
                cmd.Parameters.AddWithValue("@p3", desc);//parametrelerin değerleriyle birlikte duyurunun başlığını ekliyoruz.(aciklama)
                cmd.Parameters.AddWithValue("@p4", id);//parametrelerin değerleriyle birlikte duyurunun idsini ekliyoruz.
                cmd.ExecuteNonQuery();
            }
        }

        protected void silbtn_Click(object sender, EventArgs e)
        {
            string id = Request.Form["duyurusil"];//formdan duyuru sili talep ediyoruz.
            string yol = "workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss";
            SqlConnection baglan = new SqlConnection();
            baglan.ConnectionString = yol;
            string sil = "DELETE FROM duyuru_tablo WHERE id = @p1"; //duyuru tablosunun idsini sil.
            SqlCommand cmd = new SqlCommand(sil, baglan);
            baglan.Open();
            cmd.Parameters.AddWithValue("@p1", id);
            cmd.ExecuteNonQuery();

        }


    }
}