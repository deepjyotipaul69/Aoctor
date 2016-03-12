using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication2.cerebro
{
    public partial class AddPharmacy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string name = t1.Text.Equals("") ? "NULL" : "'" + t1.Text + "'";
            string address = t2.Text.Equals("") ? "NULL" : "'" + t2.Text + "'";
            string city = t3.Text.Equals("") ? "NULL" : "'" + t3.Text + "'";
            string area = t4.Text.Equals("") ? "NULL" : "'" + t4.Text + "'";
            string phone1 = t5.Text.Equals("") ? "NULL" : "'" + t5.Text + "'";
            string phone2 = t6.Text.Equals("") ? "NULL" : "'" + t6.Text + "'";
            string phone3 = t7.Text.Equals("") ? "NULL" : "'" + t7.Text + "'";
            string email = t8.Text.Equals("") ? "NULL" : "'" + t8.Text + "'";
            string website = t9.Text.Equals("") ? "NULL" : "'" + t9.Text + "'";
            string delivery = dd1.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string discount = dd2.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string payment = dd3.SelectedValue;
            string ambulance = dd4.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string oxygen = dd5.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string hours = dd6.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string open1 = t10.Text.Equals("") ? "NULL" : "'" + t10.Text + "'";
            string close1 = t11.Text.Equals("") ? "NULL" : "'" + t11.Text + "'";
            string open2 = t12.Text.Equals("") ? "NULL" : "'" + t12.Text + "'";
            string close2 = t13.Text.Equals("") ? "NULL" : "'" + t13.Text + "'";
            string open3 = t14.Text.Equals("") ? "NULL" : "'" + t14.Text + "'";
            string close3 = t15.Text.Equals("") ? "NULL" : "'" + t15.Text + "'";
            string sunday = dd7.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string monday = dd8.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string tuesday = dd9.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string wednesday = dd10.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string thursday = dd11.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string friday = dd12.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string saturday = dd13.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string features = t16.Text.Equals("") ? "NULL" : "'" + t16.Text + "'";
            string active = dd14.SelectedValue;
            string advert = dd15.SelectedValue;
            string verified = dd16.SelectedValue;
            string pharmaid = pid.Text;
            string feedback = fee.Text.Equals("") ? "NULL" : "'" + fee.Text + "'";
            string pincode = pin.Text.Equals("") ? "NULL" : "'" + pin.Text + "'";
            string highh = hhead.Text.Equals("") ? "NULL" : "'" + hhead.Text + "'";
            string highs = hsub.Text.Equals("") ? "NULL" : "'" + hsub.Text + "'";

            MySqlConnection con = Connection.Connect();
            con.Open();
            int i = new MySqlCommand("INSERT INTO pharmacy(pharma_id,pharma_name,pharma_address,pharma_city,pharma_area,pharma_contact_no,pharma_contact_no2,pharma_contact_no3,pharma_email,pharma_website,pharma_home_delivery,pharma_discount_available,pharma_payment_option,pharma_ambulance_available,pharma_oxygen_cylinder_available,pharma_24_hrs_available,pharma_open_time_1,pharma_close_time_1,pharma_open_time_2,pharma_close_time_2,pharma_open_time_3,pharma_close_time_3,pharma_sunday,pharma_monday,pharma_tuesday,pharma_wednesday,pharma_thursday,pharma_friday,pharma_saturday,pharma_feedback,pharma_added_feature,pharma_active,pharma_advert,pharma_verified,pharma_pin_code,pharma_highlight_head,pharma_highlight_subhead)" +
                "VALUES(" + pharmaid + "," + name + ",	" + address + ",	" + city + ",	" + area + ",	" + phone1 + ",	" + phone2 + ",	" + phone3 + ",   " + email + ",	" + website + ",	" + delivery + ",	" + discount + ",	'" + payment + "',	" + ambulance + ",	" + oxygen + ", " + hours + ",	" + open1 + ",	" + close1 + ",	 " + open2 + ",	" + close2 + ",  " + open3 + ",	" + close3 + ",	" + sunday + ",	" + monday + ",	" + tuesday + ",	" + wednesday + ",	" + thursday + ",	" + friday + ",	" + saturday + ",	" + feedback + ",	" + features + ",	'" + active + "',	'" + advert + "',	'" + verified + "',	" + pincode + ",	" + highh + ",	" + highs + ")", con).ExecuteNonQuery();
            con.Close();
            if (i > 0) Response.Redirect("AddPharmacy.aspx?s=s");
            else Response.Redirect("AddPharmacy.aspx?s=f");
        }
    }
}