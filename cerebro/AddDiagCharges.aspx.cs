using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.cerebro
{
    public partial class AddDiagCharges : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void diagcharge_Click(object sender, EventArgs e)
        {
            string hos = dlist.SelectedValue;
            string test = "'" + tst.SelectedValue + "'";
            string charge = dt1.Text;
            string open1 = dt2.Text.Equals("") ? "NULL" : "'" + dt2.Text + "'";
            string close1 = dt3.Text.Equals("") ? "NULL" : "'" + dt3.Text + "'";
            string open2 = dt4.Text.Equals("") ? "NULL" : "'" + dt4.Text + "'";
            string close2 = dt5.Text.Equals("") ? "NULL" : "'" + dt5.Text + "'";
            string open3 = dt6.Text.Equals("") ? "NULL" : "'" + dt6.Text + "'";
            string close3 = dt7.Text.Equals("") ? "NULL" : "'" + dt7.Text + "'";
            string area = dt8.Text.Equals("") ? "NULL" : "'" + dt8.Text + "'";
            string mon = d1.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string tue = d2.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string wed = d3.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string thu = d4.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string fri = d5.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string sat = d6.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string sun = d7.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string act = "'" + d8.SelectedValue + "'";

            MySqlConnection con = Connection.Connect();
            con.Open();
            int i = new MySqlCommand("INSERT INTO hospital_diagnostic_charge(hdiag_hos_id,hdiag_test_name,hdiag_charges,hdiag_area,hdiag_open_time1,hdiag_close_time1,hdiag_open_time2,hdiag_close_time2,hdiag_open_time3,hdiag_close_time3,hdiag_monday,hdiag_tuesday,hdiag_wednesday,hdiag_thursday,hdiag_friday,hdiag_saturday,hdiag_sunday,hdiag_active) " +
                "VALUES(" + hos + ",	" + test + ",	" + charge + ",	" + area + ",	" + open1 + ",	" + close1 + ",	" + open2 + ",	" + close2 + ",	" + open3 + ",	" + close3 + ",	" + mon + ",	" + tue + ",	" + wed + ",	" + thu + ",	" + fri + ",	" + sat + ",	" + sun + ",	" + act + ")", con).ExecuteNonQuery();
            con.Close();
            if (i > 0) Response.Redirect("AddDiagCharges.aspx?s=s");
            else Response.Redirect("AddDiagCharges.aspx?s=f");
        }
    }
}