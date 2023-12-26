using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Graduation_Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["userid"] = 2;

            if (Session["email"] != null)
            {
                lblWelcome.Text = Session["email"].ToString();
            }
        }
    }
}