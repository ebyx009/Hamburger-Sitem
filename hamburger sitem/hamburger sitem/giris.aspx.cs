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
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["kullanici_adi"] != null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (kad.Text == "" || sfr.Text == "")
            {
                durum.Text = "Alanlar boş bırakılamaz";
            }
            else
            {

            }
            string yol = "workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss";
            SqlConnection baglan = new SqlConnection();
            baglan.ConnectionString = yol;
            baglan.Open();
            SqlCommand uyeler = new SqlCommand("select * from uyeler where kad=@ad and sifre=@sifrem", baglan);
            uyeler.Parameters.AddWithValue("@ad", kad.Text);
            uyeler.Parameters.AddWithValue("@sifrem", sfr.Text);
            SqlDataReader dr = uyeler.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("kullanici_adi", dr[4].ToString());
                Session.Add("id", dr["id"].ToString());
                Session.Timeout = 1;
                Response.Redirect("index.aspx");
            }
            else
            {
                durum.Text = " Kayıt yok";
            }

        }
    }
}