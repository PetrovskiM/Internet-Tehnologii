using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace itKol1Zadaca2
{
    public partial class Glasaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = (string)Session["Name"];
            string votedName = (string)Session["VotedName"];
            if (name.Equals(votedName))
            {
                lblError.Text = name + "veke glasases";
                lblError.Visible = true;
                btnGlasaj.Enabled = false;
            }
            lstPredmeti.Items.Insert(0, new ListItem("predmet 4", "prof4"));
        }

        protected void lstPredmeti_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblProfesor.Text = lstPredmeti.SelectedValue;
        }

        protected void btnGlasaj_Click(object sender, EventArgs e)
        {
            if (lstPredmeti.SelectedIndex == 0)
            {
                if (Session["Predmet 1"] == null)
                {
                    Session["Predmet 1"] = 1;
                }
                else
                {
                    int votes = (int)Session["Predmet 1"];
                    votes++;
                    Session["Predmet 1"] = votes;
                }
            }
            if (lstPredmeti.SelectedIndex == 1)
            {
                if (Session["Predmet 2"] == null)
                {
                    Session["Predmet 2"] = 1;
                }
                else
                {
                    int votes = (int)Session["Predmet 2"];
                    votes++;
                    Session["Predmet 2"] = votes;
                }
            }

             if (lstPredmeti.SelectedIndex == 2){
                    if (Session["Predmet 3"] == null)
                    {
                        Session["Predmet 3"] = 1;
                    }
                    else
                    {
                        int votes = (int)Session["Predmet 3"];
                        votes++;
                        Session["Predmet 3"] = votes;
                    }
                }

            Session["Predmet"] = lstPredmeti.SelectedItem.ToString();
            Response.Redirect("UspesnoGlasanje.aspx");
        }
    }
}