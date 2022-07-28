using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace TATA_BLUESCOPE
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = "server = localhost; user id = root; password = root; persist security info = true; database = tata_bluescope";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Login button 
        protected void btn_Login_Click(object sender, EventArgs e)
        {
            try
            {
                Session["role"] = null;
                MySqlConnection con = new MySqlConnection(strcon);
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                MySqlCommand cmd = new MySqlCommand("select * from userlogin where userid = '"+ txt_Username.Text.Trim()+ "' AND password = '"+ txt_password.Text+ "'",con);
                MySqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                     while (dr.Read())
                     {
                        Response.Write("<script> alert('Login Successful'); </script>");
                        Session["role"] = "user";
                    }
                    Response.Redirect("shiftdata.aspx");
                    
                }
                else
                {
                    Response.Write("<script> alert('Wrong User ID or Password'); </script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "'); </script>");
            }
        }
    }
}