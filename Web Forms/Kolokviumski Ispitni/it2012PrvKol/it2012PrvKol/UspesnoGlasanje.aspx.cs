using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace it2012PrvKol
{
    public partial class UspesnoGlasanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblIme.Text = (string)Session["ime"];
            lblEmail.Text = (string)Session["email"];
            lblPredmet.Text = (string)Session["predmet"];

            Session["name"] = lblIme.Text;
            /* site da proveri
            //Ako e prazen user sessions 
            if (Session["users"] == null)
            {
                //Napravi lista object
                List<String> users = new List<string>();
                //stavi go imeto na toj sto glasal
                users.Add(lblIme.Text);
                //stavi go vo session variable
                Session["users"] = users;
            }
            else
            {
                //zemi session data
                List<String> users = (List<String>)Session["users"];
                //append
                users.Add(lblIme.Text);
                //vrati vo session data novata updated lista
                Session["users"] = users;
            }
            */
        }

        protected void btnRezultati_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rezultati.aspx");
        }
    }
}