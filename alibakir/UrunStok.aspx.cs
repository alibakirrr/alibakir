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
    public partial class stok_duzenleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else if (Session["email"].ToString() != "admin@test.com")
            {
                Response.Redirect("~/Default.aspx");
            }

            String baglantiAdi = ConfigurationManager.ConnectionStrings["Veritabanım"].ConnectionString;
            if (!IsPostBack)
            {
                using (SqlConnection baglanti = new SqlConnection(baglantiAdi))
                {
                    SqlCommand sorgu = new SqlCommand("select id,ad from Urunler", baglanti);
                    baglanti.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(sorgu);
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    stokList.DataSource = ds;
                    stokList.DataTextField = "ad";
                    stokList.DataValueField = "id";
                    stokList.DataBind();
                    baglanti.Close();
                }
            }
           

            tablo(baglantiAdi);
        }
        void tablo(String baglantiAdi) {
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


        protected void guncel_Click(object sender, EventArgs e)
        {
            String baglantiAdi = ConfigurationManager.ConnectionStrings["Veritabanım"].ConnectionString;

            using (SqlConnection baglanti = new SqlConnection(baglantiAdi))
            {
                SqlCommand sorgu = new SqlCommand("Update Urunler set adet='"+adet.Text+"' where id="+ stokList.SelectedValue, baglanti);
                baglanti.Open();
                sorgu.ExecuteNonQuery();
                tablo(baglantiAdi);
                baglanti.Close();

            }

            using (SqlConnection baglanti = new SqlConnection(baglantiAdi))
            {
                SqlCommand sorgu = new SqlCommand("Update Urunler set ucret ='" + ucret.Text + "' where id=" + stokList.SelectedValue, baglanti);
                baglanti.Open();
                sorgu.ExecuteNonQuery();
                tablo(baglantiAdi);
                baglanti.Close();
            }


        }

    }
}