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
    public partial class girisyap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["Email"] != null && Request.Cookies["Sifre"] != null)
                {
                    Email.Text = Request.Cookies["Email"].Value;
                    Sifre.Attributes["value"] = Request.Cookies["Sifre"].Value;
                    beni_hatirla.Checked = true;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String baglantiAdi = ConfigurationManager.ConnectionStrings["Veritabanım"].ConnectionString;

            using (SqlConnection baglanti = new SqlConnection(baglantiAdi))
            {

                SqlCommand sorgu = new SqlCommand("select * from kullanici where email='" + Email.Text + "' and sifre='" + Sifre.Text + "'", baglanti);
                baglanti.Open();
                SqlDataAdapter sda = new SqlDataAdapter(sorgu);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    if (beni_hatirla.Checked)
                    {
                        Response.Cookies["Email"].Value = Email.Text;
                        Response.Cookies["Sifre"].Value = Sifre.Text;

                        Response.Cookies["Email"].Expires = DateTime.Now.AddDays(30);
                        Response.Cookies["Sifre"].Expires = DateTime.Now.AddDays(30);
                    }
                    else
                    {
                        Response.Cookies["Email"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["Sifre"].Expires = DateTime.Now.AddDays(-1);
                    }

                    Session["email"] = Email.Text;
                    Response.Redirect("~/urunler");
                }
                else
                {
                    mesaj.Text = "Email veya şifrenizi hatalı girdiniz.";
                }
                baglanti.Close();
            }
        }

        protected void Sifre_TextChanged(object sender, EventArgs e)
        {

        }
    }
}