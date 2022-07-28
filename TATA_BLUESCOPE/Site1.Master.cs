using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TATA_BLUESCOPE
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            { 
                if (Session["role"]==null)
                {
                    logout.Visible = false;
                    adminlogin.Visible = true;
                    logo_linkbtn.Visible = true;
                }
                else if (Session["role"] == "user")
                {
                    logout.Visible = true;
                    adminlogin.Visible = true;
                    logo_linkbtn.Visible = false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["role"] = null;
            logout.Visible = false;
            adminlogin.Visible = true;
            logo_linkbtn.Visible = true;
            Response.Redirect("login.aspx");
        }

        protected void adminlogin_Click(object sender, EventArgs e)
        {
            Session["role"] = "admin";
            logout.Visible = false;
            adminlogin.Visible = false;
            logo_linkbtn.Visible = true;
            Response.Redirect("admin.aspx");
        }
    }
}