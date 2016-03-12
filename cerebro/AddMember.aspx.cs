using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication2.cerebro
{
    public partial class AddMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string a = usr.Text;
            string b = pwd.Text;
            string c = mail.Text;
            string d = isActive.Checked ? "Y" : "N";
            string ee = isAdmin.Checked ? "Y" : "N";

            MySqlConnection con = Connection.Connect();
            con.Open();
            int i = new MySqlCommand("INSERT INTO cerebro_members(cm_username,cm_password,cm_email,cm_active,admin) VALUES('"+a+"','"+b+"','"+c+"','"+d+"','"+ee+"')", con).ExecuteNonQuery();
            con.Close();
            if (i > 0)
                Response.Redirect("AddMember.aspx?s=s");
            else
                Response.Redirect("AddMember.aspx?s=f");
        }
    }
}