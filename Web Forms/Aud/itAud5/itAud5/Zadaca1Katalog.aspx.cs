using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace itAud5
{
    public partial class Zadaca1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkOne_Click(object sender, EventArgs e)
        {
            Response.Redirect("Zadaca1Proizvodi.aspx?id=1&name=Item One");
        }

        protected void lnkTwo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Zadaca1Proizvodi.aspx?id=2&name=Item Two");
        }

        protected void lnkThree_Click(object sender, EventArgs e)
        {
            Response.Redirect("Zadaca1Proizvodi.aspx?id=3&name=Item Three");
        }
    }
}