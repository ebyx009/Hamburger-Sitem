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
    public partial class dinamiksite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 0;
            if (Request.QueryString["id"] != null)
            {
                int.TryParse(Request.QueryString["id"], out id);
            }

            if (id == 0)
            {
                return;
            }
            string yol = "workstation id=hamburgerss.mssql.somee.com;packet size=4096;user id=ebyx369_SQLLogin_1;pwd=podchoy9bd;data source=hamburgerss.mssql.somee.com;persist security info=False;initial catalog=hamburgerss";
            using (SqlConnection baglan = new SqlConnection(yol))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM urun WHERE id=@id", baglan);
                cmd.Parameters.AddWithValue("@id", id);
                baglan.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                urunadltrl.Text = dr["urunAd"].ToString();
                urunbilgiltrl.Text = dr["urunBilgi"].ToString();
                fytltrl.Text = dr["urunFiyat"].ToString() + " TL";
                urunimg.ImageUrl = dr["urunUrl"].ToString();
                dr.Close();
            }
        }
    }
}