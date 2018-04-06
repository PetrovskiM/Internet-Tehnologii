using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aud23_8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCestitaj_Click(object sender, EventArgs e)
        {
            lblPoraka.Text = txbSodrzina.Text.ToString();
            string fontColor = ddlBojaFont.Text;
            lblPoraka.ForeColor = System.Drawing.Color.FromName(fontColor);
            lblPoraka.Font.Name = ddlFont.Text;
            lblPoraka.Font.Size = Convert.ToInt16(txbGoleminaFont.Text.ToString());
            pnlCestitka.BackColor = System.Drawing.Color.FromName(ddlBojaPozadina.Text);
            int border = Convert.ToInt16(ddlRamka.SelectedValue);
            pnlCestitka.BorderStyle = (BorderStyle)border;

            if (chbSlika.Checked)
            {
                imgPnl.Visible = true;
            }
            else
            {
                imgPnl.Visible = false;
            }
        }
    }
}