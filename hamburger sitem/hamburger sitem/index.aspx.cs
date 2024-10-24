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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string yol = "workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss";

            SqlConnection baglan = new SqlConnection();
            baglan.ConnectionString = yol;
            baglan.Open();
            SqlCommand cmdslider = new SqlCommand("select * from dbo.hamburger_tablo", baglan);
            SqlDataReader drslider = cmdslider.ExecuteReader();
            if (!IsPostBack)
            {
                rptDuyuru.DataSource = Duyuru();
                rptDuyuru.DataBind();

            }

            if(Session["kullanici_adi"] == null)
            {
                kull.InnerHtml = "Merhaba Gezgin :)";
                cikisd.Visible = false;
            }
            else
            {
                kull.InnerHtml = "Merhaba " + Session["kullanici_adi"].ToString();
                girisd.Visible = false;
                cikisd.Visible = true;
            }

        }

        private SqlDataReader GetProducts()
        {
            string yol = "workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss";
            SqlConnection baglan = new SqlConnection();
            baglan.ConnectionString = yol;
            baglan.Open();
            string query = "SELECT * FROM dbo.burger_info_tablo";
            SqlCommand command = new SqlCommand(query, baglan);
            SqlDataReader reader = command.ExecuteReader();
            return reader;
        }

        private SqlDataReader Duyuru()
        {
            string yol = "workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss";
            SqlConnection baglan = new SqlConnection();
            baglan.ConnectionString = yol;
            baglan.Open();
            string query = "SELECT * FROM dbo.duyuru_tablo";
            SqlCommand command = new SqlCommand(query, baglan);
            SqlDataReader reader = command.ExecuteReader();
            return reader;

        }

        private SqlDataReader GetCart()
        {
            string yol = "workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss";
            string u_id = null;
            SqlConnection baglan = new SqlConnection(yol);
            baglan.Open();
            string query = "SELECT * FROM sepet WHERE uyeid=@p1";
            SqlCommand command = new SqlCommand(query, baglan);
            command.Parameters.AddWithValue("@p1", Session["id"].ToString());
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                u_id = reader["urunid"].ToString();
                reader.Close();
            }

            string sorgu = "SELECT * FROM oyunlar WHERE id IN (SELECT urunid FROM sepet2 WHERE uyeid=@p1)";
            SqlCommand cmd = new SqlCommand(sorgu, baglan);
            cmd.Parameters.AddWithValue("@p1", Session["id"].ToString());
            SqlDataReader rd = cmd.ExecuteReader();
            return rd;
        }
    }
}