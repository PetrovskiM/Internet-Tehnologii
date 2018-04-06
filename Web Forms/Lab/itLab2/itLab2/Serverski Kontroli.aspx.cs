using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace itLab2
{
    public partial class Serverski_Kontroli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                //fill ddlMeseci
                string[] meseci = { "Januari", "Fevruari", "Mart", "April", "Maj", "Juni", "Juli", "Avgust", "Septemvri", "Oktomvri", "Noemvri", "Dekemvri" };
                ddlMeseci.DataSource = meseci;
                ddlMeseci.DataBind();

                //fill ddlDenovi
                for(int i = 1; i <= 31; i++)
                {
                    ddlDenovi.Items.Add(i.ToString());
                }

                //fill ddlGodini
                int currentYear = DateTime.Now.Year;
                ddlGodini.Items.Add(currentYear.ToString());
                for(int i = 0; i < 4; i++)
                {
                    currentYear++;
                    ddlGodini.Items.Add(currentYear.ToString());
                }

                //fill ddlVreme
                for(int i = 0; i < 24; i++)
                {
                    if(i <= 9)
                    {
                        ddlVreme.Items.Add("0" + i.ToString() + ":00");
                    }
                    else
                    {
                        ddlVreme.Items.Add(i.ToString() + ":00");
                    }
                }
            }
        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            lblPatnik.Text = txtIme.Text + " " + txtPrezime.Text;
            if (lstSredstvo.SelectedItem != null)
            {
                lblSredstvo.Text = lstSredstvo.SelectedItem.ToString();
            }
            imgTransport.ImageUrl = lstSredstvo.SelectedValue;
            lblOd.Text = ddlOd.Text;
            lblDo.Text = ddlDo.Text;
            string vreme = ddlDenovi.Text + "." + ddlMeseci.Text + "." + ddlGodini.Text + " во " + ddlVreme.Text + " часот ";
            lblVreme.Text = vreme;
            lblZona.Text = rblZona.Text;
            lblKlasa.Text = rblKlasa.Text;

            string posluga = "";
            foreach(ListItem item in cblPosluga.Items)
            {
                if (item.Selected)
                {
                    posluga += item.Text +" ";
                }
            }
            lblPosluga.Text = posluga;

                pnlPanela1.Visible = true;

        }

        protected void txtIme_TextChanged(object sender, EventArgs e)
        {
            if (lblPatnik.Text != "")
            {
                lblPatnik.Text = txtIme.Text + " " + txtPrezime.Text;
            }
        }

        protected void txtPrezime_TextChanged(object sender, EventArgs e)
        {
            if(lblPatnik.Text != "")
            {
                lblPatnik.Text = txtIme.Text + " " + txtPrezime.Text;
            }
        }

        protected void ddlOd_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblOd.Text = ddlOd.Text;
        }

        protected void ddlDo_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblDo.Text = ddlDo.Text;
        }

        protected void ddlDenovi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(lblVreme.Text != "")
            {
                string vreme = ddlDenovi.Text + "." + ddlMeseci.Text + "." + ddlGodini.Text + " во " + ddlVreme.Text + " часот ";
                lblVreme.Text = vreme;
            }
        }

        protected void lstSredstvo_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSredstvo.Text = lstSredstvo.SelectedItem.ToString();
            imgTransport.ImageUrl = lstSredstvo.SelectedValue;
        }

        protected void rblZona_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblZona.Text = rblZona.Text;
        }

        protected void rblKlasa_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblKlasa.Text = rblKlasa.Text;
        }

        protected void cblPosluga_SelectedIndexChanged(object sender, EventArgs e)
        {
            string posluga = "";
            foreach (ListItem item in cblPosluga.Items)
            {
                if (item.Selected)
                {
                    posluga += item.Text + " ";
                }
            }
            lblPosluga.Text = posluga;
        }
    }
}