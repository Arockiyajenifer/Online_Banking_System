using System;

namespace Online_Banking1
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            pnlConfirm.Visible = false;
            pnlSuccess.Visible = true;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}