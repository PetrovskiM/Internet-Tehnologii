using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace itLab2
{
    public partial class Validacija : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                mvEmail.ActiveViewIndex = 0;
            //start at the first view
        }

        protected void btnSledno_Click(object sender, EventArgs e)
        {
            mvEmail.ActiveViewIndex = 1;
        }

        protected void btnBack2_Click(object sender, EventArgs e)
        {
            mvEmail.ActiveViewIndex = 0;
        }

        protected void btnSledno2_Click(object sender, EventArgs e)
        {
            mvEmail.ActiveViewIndex = 2;
        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                mvEmail.ActiveViewIndex = 3;
                string user = txtId.Text + "@finki.ukim.mk";
                lblUser.Text = user;
            }
            else
            {
                lblNo.Visible = true;
            }
        }

        protected void btnBack3_Click(object sender, EventArgs e)
        {
            mvEmail.ActiveViewIndex = 1;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string zanimanje = ddlZanimanje.SelectedItem.Text;
            int godini = Convert.ToInt16(args.Value);
            if (zanimanje.Equals("1") || zanimanje.Equals("2") && godini >= 5)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnPocetok_Click(object sender, EventArgs e)
        {
            mvEmail.ActiveViewIndex = 0;
        }
    }
}