using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace itAud5
{
    public partial class Zadaca1Plakjanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList list;
            int vkupno = 0;
            if(Session["kosnicka"] != null)
            {
                list = (ArrayList)Session["kosnicka"];
                lstPlati.DataSource = list;
                lstPlati.DataBind();

                foreach (string s in list)
                {
                    string[] parts = s.Split(' ');
                    vkupno += Convert.ToInt32(parts[1]);
                }

                lblVkupno.Text = vkupno.ToString();
            }
        }
    }
}