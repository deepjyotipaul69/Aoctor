using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication2.cerebro
{
    public partial class AddHospital : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string hosid = hid.Text;
            string name = TextBox1.Text.Equals("") ? "NULL" : "'" + TextBox1.Text + "'";
            string phone1 = TextBox2.Text.Equals("") ? "NULL" : "'" + TextBox2.Text + "'";
            string phone2 = TextBox3.Text.Equals("") ? "NULL" : "'" + TextBox3.Text + "'";
            string phone3 = TextBox4.Text.Equals("") ? "NULL" : "'" + TextBox4.Text + "'";
            string phone4 = TextBox5.Text.Equals("") ? "NULL" : "'" + TextBox5.Text + "'";
            string website = TextBox6.Text.Equals("") ? "NULL" : "'" + TextBox6.Text + "'";
            string email = TextBox7.Text.Equals("") ? "NULL" : "'" + TextBox7.Text + "'";
            string address = TextBox8.Text.Equals("") ? "NULL" : "'" + TextBox8.Text + "'";
            string city = TextBox9.Text.Equals("") ? "NULL" : "'" + TextBox9.Text + "'";
            string area = TextBox10.Text.Equals("") ? "NULL" : "'" + TextBox10.Text + "'";
            string type = TextBox11.Text.Equals("") ? "NULL" : "'" + TextBox11.Text + "'";
            string proptype = TextBox12.Text.Equals("") ? "NULL" : "'" + TextBox12.Text + "'";
            string discount = DD1.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string mediclaim = DD2.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string ambulance = DD3.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string blood = DD4.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string burn = DD5.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string snake = DD6.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string feedback = TextBox13.Text.Equals("") ? "NULL" : "'" + TextBox13.Text + "'";
            string benefits = TextBox14.Text.Equals("") ? "NULL" : "'" + TextBox14.Text + "'";
            string adoption = advt.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string pay = tb16.SelectedValue;
            string diag = diagno.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string dept = TextBox18.Text.Equals("") ? "NULL" : "'" + TextBox18.Text + "'";
            string pharma = DD7.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string icu = DD8.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string iccu = DD9.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string nicu = DD10.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string ssc = DD11.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string package = pack.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string high = TextBox20.Text.Equals("") ? "NULL" : "'" + TextBox20.Text + "'";
            string subhigh = TextBox21.Text.Equals("") ? "NULL" : "'" + TextBox21.Text + "'";
            string active = DD12.SelectedValue;
            string ad = DD13.SelectedValue;
            string verif = DD14.SelectedValue;
            string medidesc = TextBox22.Text.Equals("") ? "NULL" : "'" + TextBox22.Text + "'";
            string super = spec.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string supera = sspecaddr.Text.Equals("") ? "NULL" : "'" + sspecaddr.Text + "'";

            MySqlConnection con = Connection.Connect();
            con.Open();
            int i = new MySqlCommand("INSERT INTO hospital(hos_id,hos_name,hos_phone_no,hos_phone_no2,hos_phone_no3,hos_phone_no4,hos_website,hos_email,hos_address,hos_city,hos_area,hos_type,hos_property_type,hos_discount_available,hos_mediclaim,hos_ambulance,hos_blood_bank,hos_burn_unit,hos_snake_unit,hos_feedback,hos_added_benefits,hos_advertisement_option,hos_mode_of_payment,hos_diagnostics,hos_department,hos_pharmacy,hos_icu,hos_iccu,hos_nicu,hos_ssc,hos_packages,hos_highlight_head,hos_highlight_subhead,hos_active,hos_advert,hos_verified,hos_mediclaim_desc,hos_super_speciality,hos_superspeciality_address) " +
                "VALUES(" + hosid + "," + name + ",	" + phone1 + ",	" + phone2 + ",	" + phone3 + ",	" + phone4 + ",	" + website + ",	" + email + ",	" + address + ",	" + city + ",	" + area + ",	" + type + ",	" + proptype + ",	" + discount + ",	" + mediclaim + ",	" + ambulance + ",	" + blood + ",	" + burn + ",	" + snake + ",	" + feedback + ",	" + benefits + ",	" + adoption + ",	'" + pay + "',	" + diag + ",	" + dept + ",	" + pharma + ",	" + icu + ",	" + iccu + ",	" + nicu + ",	" + ssc + ",	" + package + ",	" + high + ",	" + subhigh + ",	'" + active + "',	'" + ad + "',	'" + verif + "',	" + medidesc + ",	" + super + ",	" + supera + ")", con).ExecuteNonQuery();
            con.Close();
            if (i > 0) Response.Redirect("AddHospital.aspx?s=s");
            else Response.Redirect("AddHospital.aspx?s=f");
        }
    }
}