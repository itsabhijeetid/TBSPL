using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.OleDb;

namespace TATA_BLUESCOPE
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        //OleDbConnection conn = new OleDbConnection("provider=10.0.92.141;user id = l2dba; password = dbal2; data source = M1LLSDB; persist security info = true;");
        string strcon = "server = localhost; user id = root; password = root; persist security info = true; database = tata_bluescope";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void show_Click(object sender, EventArgs e)
        {
            try
            {
                // Oracle
                //string qry = "select * from production";
                //OleDbDataAdapter da = new OleDbDataAdapter(qry, conn);
                //DataSet ds = new DataSet();
                //da.Fill(ds);
                //production_list.DataSource = ds;
                //production_list.DataBind();

                MySqlConnection con = new MySqlConnection(strcon);
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
     
                MySqlCommand cmd = new MySqlCommand("select * from production", con) ;
                MySqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    production_list.DataSource = dr;
                    production_list.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "'); </script>");
            }
        }
    }
}