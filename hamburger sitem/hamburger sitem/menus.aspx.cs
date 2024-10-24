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
    public partial class menus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            string yol = "workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss";
            SqlConnection baglan = new SqlConnection();
                baglan.ConnectionString = yol;
                baglan.Open();
                SqlCommand cmdslider = new SqlCommand("select * from dbo.hamburger_tablo", baglan);
                SqlDataReader drslider = cmdslider.ExecuteReader();
                dl_slider.DataSource = drslider;
                dl_slider.DataBind();
                if (!IsPostBack)
                {
                    rptProducts.DataSource = GetProducts();
                    rptProducts.DataBind();
                }
            if (Session["kullanici_adi"] == null)
            {
                kull.InnerHtml = "Merhaba Gezgin :)";
                
            }
            else
            {
                kull.InnerHtml = "Merhaba " + Session["kullanici_adi"].ToString();
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


    }
}