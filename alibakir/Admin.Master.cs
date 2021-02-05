using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace alibakir
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("~/girisyap.aspx");
            }
            if (!IsPostBack)
            {
                if (Session["email"].ToString() != "admin@test.com")
                {
                    stokLink.Visible = false;
                }
            }
        }
        protected void cikisyap_Click(object sender, EventArgs e)
        {
            Session["email"] = null;
            Response.Redirect("~/Default.aspx");
        }
    }
}