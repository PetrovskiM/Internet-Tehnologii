using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Windows;

namespace Lab1_2
{
    public partial class Default3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProveri_Click(object sender, EventArgs e)
        {
            if(txtLozinka.Text.ToString().Equals("мрежно програмирање"))
            {
                txtPoraka.Focus();
                txtPoraka.ReadOnly = false;
            }
            else
            {
                Response.Write("Gresen password");
            }
        }

        protected void txtPoraka_TextChanged(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                btnPrvaStrana.Enabled = true;
            }
        }

        protected void btnPrvaStrana_Click(object sender, EventArgs e)
        {
            //btnPrvaStrana.PostBackUrl = "~/Default.aspx";
            Response.Redirect("Default.aspx");
        }
    }
}