using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.cerebro
{
    public partial class AddAdverts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ad_Click(object sender, EventArgs e)
        {
            string type = ad1.SelectedValue;
            string name = at1.Text;

            MySqlConnection con = Connection.Connect();
            con.Open();
            int i = 0;
            switch (type)
            {
                case "Hospital":
                    i = new MySqlCommand("INSERT INTO advertisement(ad_link,ad_type,ad_filename) " + "VALUES('HosDetails.aspx?id=" + dest.SelectedValue + "','" + type + "','" + name + "')", con).ExecuteNonQuery();
                    break;
                case "Diagnostic":
                    i = new MySqlCommand("INSERT INTO advertisement(ad_link,ad_type,ad_filename) " + "VALUES('DiagnosticDetails.aspx?id=" + dest.SelectedValue + "','" + type + "','" + name + "')", con).ExecuteNonQuery();
                    break;
                case "Pharmacy":
                    i = new MySqlCommand("INSERT INTO advertisement(ad_link,ad_type,ad_filename) " +"VALUES('PharmaDetails.aspx?id=" + dest.SelectedValue + "','" + type + "','" + name + "')", con).ExecuteNonQuery();
                    break;
                default:
                    break;
            }
            
            con.Close();
            if (i > 0) Response.Redirect("AddAdverts.aspx?s=s");
            else Response.Redirect("AddAdverts.aspx?s=f");
        }

        protected void ad1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (ad1.SelectedValue)
            {
                case "Select a value...":
                    SqlDataSource2.SelectCommand = "";
                    dest.DataSourceID = "";
                    SqlDataSource2.DataBind();
                    dest.DataBind();
                    break;
                case "Hospital":
                    SqlDataSource2.SelectCommand = "SELECT * FROM hospital";
                    dest.DataSourceID = "SqlDataSource2";
                    dest.DataTextField = "hos_name";
                    dest.DataValueField = "hos_id";
                    SqlDataSource2.DataBind();
                    dest.DataBind();
                    break;
                case "Diagnostic":
                    SqlDataSource2.SelectCommand = "SELECT * FROM diagnostic";
                    dest.DataSourceID = "SqlDataSource2";
                    dest.DataTextField = "diag_name";
                    dest.DataValueField = "diag_id";
                    SqlDataSource2.DataBind();
                    dest.DataBind();
                    break;
                case "Pharmacy":
                    SqlDataSource2.SelectCommand = "SELECT * FROM pharmacy";
                    dest.DataSourceID = "SqlDataSource2";
                    dest.DataTextField = "pharma_name";
                    dest.DataValueField = "pharma_id";
                    SqlDataSource2.DataBind();
                    dest.DataBind();
                    break;
                default:
                    break;
            }
        }
    }
}