using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication2.cerebro
{
    public partial class DocSpec : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            MySqlConnection con = Connection.Connect();
            con.Open();
            int i = new MySqlCommand("INSER INTO doctor_specialization_list(spec_specialization) VALUES('"+spec.Text+"')", con).ExecuteNonQuery();
            con.Close();
            if (i > 0)
                Response.Redirect("DocSpec.aspx?s=s");
            else
                Response.Redirect("DocSpec.aspx?s=f");
        }
    }
}