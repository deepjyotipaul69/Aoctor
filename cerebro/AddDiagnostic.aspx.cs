using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication2.cerebro
{
    public partial class AddDiagnostic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string name = t1.Text;
            string city = t2.Text;
            string address = t3.Text.Equals("") ? "NULL" : "'" + t3.Text + "'";
            string area = t4.Text;
            string phone1 = t5.Text.Equals("") ? "NULL" : "'" + t5.Text + "'";
            string phone2 = t6.Text.Equals("") ? "NULL" : "'" + t6.Text + "'";
            string phone3 = t7.Text.Equals("") ? "NULL" : "'" + t7.Text + "'";
            string open1 = t8.Text.Equals("") ? "NULL" : "'" + t8.Text + "'";
            string close1 = t9.Text.Equals("") ? "NULL" : "'" + t9.Text + "'";
            string open2 = t10.Text.Equals("") ? "NULL" : "'" + t10.Text + "'";
            string close2 = t11.Text.Equals("") ? "NULL" : "'" + t11.Text + "'";
            string delivery = dd1.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string hours = dd2.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string discount = dd3.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string card = dd4.SelectedValue;
            string ambulance = dd5.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string ambulancen = t12.Text.Equals("") ? "NULL" : "'" + t12.Text + "'";
            string type = dd6.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string active = dd7.SelectedValue;
            string advert = dd8.SelectedValue;
            string verified = dd9.SelectedValue;
            string head = t13.Text.Equals("") ? "NULL" : "'" + t13.Text + "'";
            string subhead = t14.Text.Equals("") ? "NULL" : "'" + t14.Text + "'";
            string diaid = did.Text;
            string blood = bba.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string medicla = mo.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string medi = mn.Text.Equals("") ? "NULL" : "'" + mn.Text + "'";
            string email = eid.Text.Equals("") ? "NULL" : "'" + eid.Text + "'";
            string webs = wb.Text.Equals("") ? "NULL" : "'" + wb.Text + "'";
            string pinco = pin.Text.Equals("") ? "NULL" : "'" + pin.Text + "'";
            string prope = ppt.Text.Equals("") ? "NULL" : "'" + ppt.Text + "'";
            string pharma = po.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string tes = to.Text.Equals("") ? "NULL" : "'" + to.Text + "'";

            MySqlConnection con = Connection.Connect();
            con.Open();
            int i = new MySqlCommand("INSERT INTO diagnostic(diag_id,diag_name,diag_city,diag_address,diag_area,diag_phone_1,diag_phone_2,diag_phone_3,diag_open_time,diag_close_time,diag_open_time_1,diag_close_time_1,diag_report_home_delivery,diag_24_hours,diag_discounts,diag_card_payment,diag_ambulance,diag_ambulance_number,diag_highlight_head,diag_highlight_subhead,diag_type,diag_active,diag_advert,diag_verified,diag_blood_bank,diag_mediclaim_option,diag_mediclaim_names,diag_email_id,diag_website,diag_pincode,diag_propertytype,diag_pharmacy_option,diag_test_option)" +
                "VALUES(" + diaid + ",'" + name + "',	'" + city + "',	" + address + ",	'" + area + "',	" + phone1 + ",	" + phone2 + ",	" + phone3 + ",   " + open1 + ",	" + close1 + ",	" + open2 + ",	" + close2 + ",	" + delivery + ",	" + hours + ",	" + discount + ", '" + card + "',	" + ambulance + ",	" + ambulancen + ",	 " + head + ",	" + subhead + ",  " + type + ",	'" + active + "',	'" + advert + "',	'" + verified + "',	" + blood + ",	" + medicla + ",	" + medi + ",	" + email + ",	" + webs + ",	" + pinco + ",	" + prope + ",	" + pharma + ",	" + tes + ")", con).ExecuteNonQuery();
            con.Close();
            if (i > 0) Response.Redirect("AddDiagnostic.aspx?s=s");
            else Response.Redirect("AddDiagnostic.aspx?s=f");
        }
    }
}