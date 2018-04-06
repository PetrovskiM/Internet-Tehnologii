using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Web : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                mvWeb.ActiveViewIndex = 0;
            }
        }

        protected void btnNajava_Click(object sender, EventArgs e)
        {
            mvWeb.ActiveViewIndex = 1;
            txtKolichina1.Visible = true;
            txtKolichina2.Visible = true;
            txtKolichina3.Visible = true;
            imgLogo.Visible = true;
            lstZanrovi.Visible = true;
            chkFilmovi.Visible = true;
            lblCena.Visible = true;
            btnKupi.Visible = true;
        }

        protected void lstZanrovi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(lstZanrovi.SelectedIndex == 0)
            {
                chkFilmovi.DataSource = "";
                chkFilmovi.DataBind();
                chkFilmovi.Items.Insert(0, new ListItem("Forest Gump", "150"));
                chkFilmovi.Items.Insert(1, new ListItem("Keeping up with the Jonases", "120"));
                chkFilmovi.Items.Insert(2, new ListItem("Batman vs Superman 3D", "350"));
            }
            else if (lstZanrovi.SelectedIndex == 1)
            {
                chkFilmovi.DataSource = "";
                chkFilmovi.DataBind();
                chkFilmovi.Items.Insert(0, new ListItem("Good will hunting", "130"));
                chkFilmovi.Items.Insert(1, new ListItem("Masterminds", "170"));
                chkFilmovi.Items.Insert(2, new ListItem("Deadpool 3D", "300"));
            }
            else if (lstZanrovi.SelectedIndex == 2)
            {
                chkFilmovi.DataSource = "";
                chkFilmovi.DataBind();
                chkFilmovi.Items.Insert(0, new ListItem("A beautiful mind ", "100"));
                chkFilmovi.Items.Insert(1, new ListItem("Ted2", "180"));
                chkFilmovi.Items.Insert(2, new ListItem("The accountant", "200"));
            }
        }

        protected void btnKupi_Click(object sender, EventArgs e)
        {
            int cena = 0;
            int selectedCounter = 0;
            foreach(ListItem item in chkFilmovi.Items)
            {
                if(item.Selected && selectedCounter == 0)
                {

                    cena += Convert.ToInt16(item.Value) * Convert.ToInt32(txtKolichina1.Text);
                }
                if (item.Selected && selectedCounter == 1)
                {
                    cena += Convert.ToInt16(item.Value) * Convert.ToInt32(txtKolichina2.Text);
                }
                if (item.Selected && selectedCounter == 2)
                {
                    cena += Convert.ToInt16(item.Value) * Convert.ToInt32(txtKolichina3.Text);
                }
                selectedCounter++;
            }
            lblCena.Text = cena.ToString();
        }

        protected void chkFilmovi_SelectedIndexChanged(object sender, EventArgs e)
        {
            int counter = 0;
            foreach(ListItem item in chkFilmovi.Items)
            {
                if(item.Selected && counter == 0)
                {
                    RequiredFieldValidator3.Enabled = true;
                }
                else if(!item.Selected && counter == 0)
                {
                    RequiredFieldValidator3.Enabled = false;
                }
                if (item.Selected && counter == 1)
                {
                    RequiredFieldValidator4.Enabled = true;
                }
                else if (!item.Selected && counter == 1)
                {
                    RequiredFieldValidator4.Enabled = false;
                }
                if (item.Selected && counter == 2)
                {
                    RequiredFieldValidator5.Enabled = true;
                }
                else if (!item.Selected && counter == 2)
                {
                    RequiredFieldValidator5.Enabled = false;
                }
                counter++;
            }
        }
    }
}