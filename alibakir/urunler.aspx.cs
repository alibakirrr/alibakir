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
    public partial class Anasayfa : System.Web.UI.Page
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

                    SqlCommand sorgu = new SqlCommand("select Urunler.ad,Kategori.ad as 'kategori',Urunler.adet,Urunler.ucret from Urunler " +
                                                        "inner join Kategori on Kategori.id=Urunler.kategori", baglanti);
                    baglanti.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(sorgu);
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    baglanti.Close();
                }
            }
        }
    }
}