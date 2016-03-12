using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication2.cerebro
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = Connection.Connect();
            con.Open();

            MySqlDataReader dr = new MySqlCommand("SELECT * FROM cerebro_members WHERE cm_username='"+username.Text+"' AND cm_password='"+password.Text+"'",con).ExecuteReader();
            if (dr.Read())
            {
                Session["user"] = ((string)dr["admin"]).Equals("Y") ? "admin" : "user";
                Session["name"] = (string)dr["cm_username"];
            }

            Response.Redirect("Default.aspx");
        }
    }
}