using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace alibakir
{
    public partial class profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("~/girisyap.aspx");
            }
            if (!IsPostBack)
            {
                String baglantiAdi = ConfigurationManager.ConnectionStrings["Veritabanım"].ConnectionString;

                using (SqlConnection baglanti = new SqlConnection(baglantiAdi))
                {

                    SqlCommand sorgu = new SqlCommand("select * from kullanici where email='" + Session["email"] + "'", baglanti);

                    baglanti.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(sorgu);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    if (dt.Rows.Count != 0)
                    {
                        id.Text = dt.Rows[0][0].ToString();
                        ad.Text = dt.Rows[0][1].ToString();
                        email.Text = dt.Rows[0][2].ToString();
                    }
                    baglanti.Close();
                }
            }
        }

        protected void guncelle_Click(object sender, EventArgs e)
        {
            String baglantiAdi = ConfigurationManager.ConnectionStrings["Veritabanım"].ConnectionString;
            using (SqlConnection baglanti = new SqlConnection(baglantiAdi))
            {
                baglanti.Open();
                SqlCommand command = new SqlCommand("update kullanici set ad='" + ad.Text + "',email='" + email.Text + "' where id='" + id.Text + "'", baglanti);
                command.ExecuteNonQuery();
                baglanti.Close();
            }
        }
    }
}