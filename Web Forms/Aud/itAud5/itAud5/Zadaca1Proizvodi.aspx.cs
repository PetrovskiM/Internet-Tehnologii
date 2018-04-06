using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace itAud5
{
    public partial class Zadaca1Proizvodi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList list;
            if(Session["kosnicka"] != null)
            {
                list = (ArrayList)Session["Kosnicka"];
                lstKosnicka.DataSource = list;
                lstKosnicka.DataBind();
            }

            if (!IsPostBack)
            {
                //Data
                string[] itemsOne = { "one", "two", "three" };
                int[] oneCeni = { 123, 424, 243 };

                string[] itemsTwo = { "fs", "twewero", "asfdw" };
                int[] twoCeni = { 7123, 88424, 4243 };

                string[] itemsThreee = { "ofdsfne", "zsd", "rewqz" };
                int[] threeCeni = { 1223, 4254, 2436 };

                //Get name and id from query string
               // lblKategorija.Text = Request.QueryString["name"];
               // int id = Convert.ToInt16(Request.QueryString["id"]);
                lblKategorija.Text = Request.QueryString[1];
                int id = Convert.ToInt16(Request.QueryString[0]);

                //Load info
                if (id == 1)
                {
                    lstItems.DataSource = itemsOne;
                    lstCeni.DataSource = oneCeni;
                }
                else if (id == 2)
                {
                    lstItems.DataSource = itemsTwo;
                    lstCeni.DataSource = twoCeni;
                }
                else if (id == 3)
                {
                    lstItems.DataSource = itemsThreee;
                    lstCeni.DataSource = threeCeni;
                }
                lstItems.DataBind();
                lstCeni.DataBind();
            }
        }

        protected void lstItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            int counter;
            if(ViewState["Counter"] == null)
            {
                counter = 1;
            }
            else {
                counter = (int)ViewState["Counter"] + 1;
            }
            ViewState["Counter"] = counter;
            lblPromeni.Text = counter.ToString();

            lstCeni.SelectedIndex = lstItems.SelectedIndex;
        }

        protected void btnDodadi_Click(object sender, EventArgs e)
        {
            ArrayList list;
            if(Session["kosnicka"] == null)
            {
                list = new ArrayList();
            }
            else
            {
                list = (ArrayList)Session["kosnicka"];
            }

            string itemData = lstItems.SelectedItem.Text + " " + lstCeni.SelectedItem.Text;
            list.Add(itemData);

            lstKosnicka.DataSource = list;
            lstKosnicka.DataBind();
            Session["kosnicka"] = list;
        }

        protected void btnKupi_Click(object sender, EventArgs e)
        {
            Response.Redirect("Zadaca1Plakjanje.aspx");
        }
    }
}