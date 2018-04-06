using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace itKol1Zadaca2
{
    public partial class Rezultati : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Predmet 1"] != null)
            {
                lstPoeni.Items.RemoveAt(0);
                lstPoeni.Items.Insert(0, Session["Predmet 1"].ToString());
            }

            if (Session["Predmet 2"] != null)
            {
                lstPoeni.Items.RemoveAt(1);
                lstPoeni.Items.Insert(1, Session["Predmet 2"].ToString());
            }

            if (Session["Predmet 3"] != null)
            {
                lstPoeni.Items.RemoveAt(2);
                lstPoeni.Items.Insert(2, Session["Predmet 3"].ToString());
            }
        }
    }
}