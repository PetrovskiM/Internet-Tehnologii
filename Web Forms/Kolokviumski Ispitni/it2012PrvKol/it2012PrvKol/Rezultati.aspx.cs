using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace it2012PrvKol
{
    public partial class Rezultati : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["votes1"] != null) { 
                int one = (int)Session["votes1"];
                lstRezultati.Items.Insert(0, one.ToString());
            }
            if (Session["votes2"] != null)
            {
                int two = (int)Session["votes2"];
                lstRezultati.Items.Insert(1, two.ToString());
            }
            if (Session["votes3"] != null)
            {
                int three = (int)Session["votes3"];
                lstRezultati.Items.Insert(2, three.ToString());
            }         
        }
    }
}