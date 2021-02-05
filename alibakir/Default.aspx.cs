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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                this.MasterPageFile = "~/Site.Master";
            }
            else if (Session["Email"] != null)
            {

                this.MasterPageFile = "~/Admin.Master";
            }
        }
    }
}