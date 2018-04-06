using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace itKol1Zadaca2
{
    public partial class Najava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNajava_Click(object sender, EventArgs e)
        {
            Session["Name"] = txtIme.Text;
            Session["Email"] = txtEmail.Text;
            Response.Redirect("Glasaj.aspx");
        }
    }
}