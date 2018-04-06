using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace it2012PrvKol
{
    public partial class Glasaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sIme = (string)Session["ime"];
            string vIme = (string)Session["name"];
            //Response.Write(sIme + " " + vIme);

            if (sIme.Equals(vIme))
            {
                lblIme.Text = sIme;
                lblIme.Visible = true;
                lblTekst.Visible = true;
                btnGlasaj.Enabled = false;
            }
            else
            {
                lblIme.Visible = false;
                lblTekst.Visible = false;
                btnGlasaj.Enabled = true;
            }
            /* ova e za site da gi proveurva
            //zemi data
            List<String> users = (List<String>)Session["users"];
            //proveri string po string
            foreach(String s in users)
            {
                //si nasol nekoj sto veke glasal
                if (s.Equals(Session["ime"]))
                {
                    lblIme.Text = sIme;
                    lblIme.Visible = true;
                    lblTekst.Visible = true;
                    btnGlasaj.Enabled = false;
                }
            }*/

        }

        protected void lstPredmeti_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblProfesor.Text = lstPredmeti.SelectedValue.ToString();
        }

        protected void btnGlasaj_Click(object sender, EventArgs e)
        {
            Session["predmet"] = lstPredmeti.SelectedItem.ToString();

            int countVotes = 0;
            switch (lstPredmeti.SelectedIndex)
            {
                case 0:
                    if(Session["votes1"] == null)
                    {
                        Session["votes1"] = 1;
                    }
                    else
                    {
                        countVotes = (int)Session["votes1"];
                        countVotes++;
                        Session["votes1"] = countVotes;
                    }
                    break;

                case 1:
                    if (Session["votes2"] == null)
                    {
                        Session["votes2"] = 1;
                    }
                    else
                    {
                        countVotes = (int)Session["votes2"];
                        countVotes++;
                        Session["votes2"] = countVotes;
                    }
                    break;

                case 2:
                    if (Session["votes3"] == null)
                    {
                        Session["votes3"] = 1;
                    }
                    else
                    {
                        countVotes = (int)Session["votes3"];
                        countVotes++;
                        Session["votes3"] = countVotes;
                    }
                    break;
                default:
                    break;
                }
                Response.Redirect("UspesnoGlasanje.aspx");
            }
        }
    }