using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.cerebro
{
    public partial class AddChamber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void docpharma_Click(object sender, EventArgs e)
        {
            string docid = ListBox1.SelectedValue;
            string chamb = tb1.Text.Equals("") ? "NULL" : "'" + tb1.Text + "'";
            string address = tb2.Text.Equals("") ? "NULL" : "'" + tb2.Text + "'";
            string fee = tb3.Text.Equals("") ? "NULL" : "'" + tb3.Text + "'";
            string city = tb4.Text.Equals("") ? "NULL" : "'" + tb4.Text + "'";
            string area = tb5.Text.Equals("") ? "NULL" : "'" + tb5.Text + "'";
            string open1 = tb6.Text.Equals("") ? "NULL" : "'" + tb6.Text + "'";
            string close1 = tb7.Text.Equals("") ? "NULL" : "'" + tb7.Text + "'";
            string open2 = tb8.Text.Equals("") ? "NULL" : "'" + tb8.Text + "'";
            string close2 = tb9.Text.Equals("") ? "NULL" : "'" + tb9.Text + "'";
            string open3 = tb10.Text.Equals("") ? "NULL" : "'" + tb10.Text + "'";
            string close3 = tb11.Text.Equals("") ? "NULL" : "'" + tb11.Text + "'";
            string active = dd1.SelectedValue;
            string mon = dd2.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string tue = dd3.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string wed = dd4.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string thr = dd5.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string fri = dd6.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string sat = dd7.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string sun = dd8.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string hhead = tb12.Text.Equals("") ? "NULL" : "'" + tb12.Text + "'";
            string htext = tb13.Text.Equals("") ? "NULL" : "'" + tb13.Text + "'";
            string phone1 = ph1.Text.Equals("") ? "NULL" : "'" + ph1.Text + "'";
            string phone2 = ph2.Text.Equals("") ? "NULL" : "'" + ph2.Text + "'";
            string comme = comm.Text.Equals("") ? "NULL" : "'" + comm.Text + "'";
            string pinc = pin.Text.Equals("") ? "NULL" : "'" + pin.Text + "'";

            MySqlConnection con = Connection.Connect();
            con.Open();
            string s = "INSERT INTO chamber(cha_name,cha_address,cha_fees,doc_id,cha_city,cha_area,cha_open_time1,cha_close_time1,cha_open_time2,cha_close_time2,cha_open_time3,cha_close_time3,cha_monday,cha_tuesday,cha_wednesday,cha_thursday,cha_friday,cha_saturday,cha_sunday,cha_active,cha_highlight_head,cha_highlight_text,cha_phone_1,cha_phone_2,cha_pincode,cha_comments) " + 
                "VALUES(" + chamb + "," + address + "," + fee + "," + docid + "," + city + "," + area + "," + open1 + "," + close1 + "," + open2 + "," + close2 + "," + open3 + "," + close3 + "," + mon + "," + tue + "," + wed + "," + thr + "," + fri + "," + sat + "," + sun + ",'" + active + "'," + hhead + "," + htext + "," + phone1 + "," + phone2 + "," + pinc + "," + comme + ")";
            int i = new MySqlCommand(s, con).ExecuteNonQuery();
            con.Close();
            if (i > 0) Response.Redirect("AddChamber.aspx?s=s");
            else Response.Redirect("AddChamber.aspx?s=f");

        }
    }
}