using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace alibakir
{
    public partial class kayitol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Kayit_Click(object sender, EventArgs e)
        {
            String baglantiAdi = ConfigurationManager.ConnectionStrings["Veritabanım"].ConnectionString;

            String sorgu = "Insert into kullanici(ad,email,sifre)" +
                "values('" + Isim.Text + "','" + Email.Text + "','" + Sifre.Text + "')";

            using (SqlConnection baglanti = new SqlConnection(baglantiAdi))
            {
                try
                {
                    baglanti.Open();
                    SqlCommand command = new SqlCommand(sorgu, baglanti);
                    command.ExecuteNonQuery();
                    baglanti.Close();

                    mesaj.CssClass = "text-success";
                    mesaj.Text = "Başarıyla kayıt oldunuz.";
                }
                catch (SqlException)
                {
                    mesaj.CssClass = "text-danger";
                    mesaj.Text = "Daha önce bu Email ile kayıt olunmuş!";
                }
            }
           
        }
    }
}