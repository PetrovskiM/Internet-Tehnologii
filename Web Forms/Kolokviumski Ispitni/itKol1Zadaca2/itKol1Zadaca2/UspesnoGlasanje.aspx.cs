using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace itKol1Zadaca2
{
    public partial class UspesnoGlasanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = (string)Session["Name"];
            lblPredmet.Text = (string)Session["Predmet"];
            lblEmail.Text = (string)Session["Email"];
            Session["VotedName"] = lblName.Text;
        }

        protected void btnReztultati_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rezultati.aspx");
        }
    }
}