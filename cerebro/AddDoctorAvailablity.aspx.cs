using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication2.cerebro
{
    public partial class AddDoctorAvailablity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hosp.Visible = false;
            dia.Visible = false;
            pharm.Visible = false;
        }

        protected void cat_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (cat.SelectedValue)
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
                    hosp.Visible = true;
                    dia.Visible = false;
                    pharm.Visible = false;
                    break;
                case "Diagnostic":
                    SqlDataSource2.SelectCommand = "SELECT * FROM diagnostic";
                    dest.DataSourceID = "SqlDataSource2";
                    dest.DataTextField = "diag_name";
                    dest.DataValueField = "diag_id";
                    SqlDataSource2.DataBind();
                    dest.DataBind();
                    hosp.Visible = false;
                    dia.Visible = true;
                    pharm.Visible = false;
                    break;
                case "Pharmacy":
                    SqlDataSource2.SelectCommand = "SELECT * FROM pharmacy";
                    dest.DataSourceID = "SqlDataSource2";
                    dest.DataTextField = "pharma_name";
                    dest.DataValueField = "pharma_id";
                    SqlDataSource2.DataBind();
                    dest.DataBind();
                    hosp.Visible = false;
                    dia.Visible = false;
                    pharm.Visible = true;
                    break;
                default:
                    break;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void dochos_Click(object sender, EventArgs e)
        {
            string docid = ListBox1.SelectedValue;
            string hosid = dest.SelectedValue;
            string area = t1.Text.Equals("") ? "NULL" : "'" + t1.Text + "'";
            string depar = dep.SelectedValue;
            string fee = t2.Text.Equals("") ? "NULL" : "'" + t2.Text + "'";
            string act = dh1.SelectedValue;
            string open1 = t3.Text.Equals("")?"NULL":"'"+t3.Text+"'";
            string close1 = t4.Text.Equals("") ? "NULL" : "'" + t4.Text + "'";
            string open2 = t5.Text.Equals("") ? "NULL" : "'" + t5.Text + "'";
            string close2 = t6.Text.Equals("") ? "NULL" : "'" + t6.Text + "'";
            string open3 = t7.Text.Equals("") ? "NULL" : "'" + t7.Text + "'";
            string close3 = t8.Text.Equals("") ? "NULL" : "'" + t8.Text + "'";
            string mon = dh2.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string tue = dh3.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string wed = dh4.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string thr = dh5.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string fri = dh6.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string sat = dh7.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string sun = dh8.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string comment = comme.Text.Equals("") ? "NULL" : "'" + comme.Text + "'";

            MySqlConnection con = Connection.Connect();
            con.Open();
            int i = new MySqlCommand("INSERT INTO doctor_hospital(doc_id,hos_id,hos_area,doc_department,doc_hos_fees,hos_open_time1,hos_close_time1,hos_open_time2,hos_close_time2,hos_open_time3,hos_close_time3,hos_monday,hos_tuesday,hos_wednesday,hos_thursday,hos_friday,hos_saturday,hos_sunday,hos_active,hos_Comments) " +
                "VALUES(" + docid + ",	" + hosid + ",	" + area + ",	'" + depar + "',	" + fee + ",	" + open1 + ",	" + close1 + ",	" + open2 + ",	" + close2 + ",	" + open3 + ",	" + close3 + ",	" + mon + ",	" + tue + ",	" + wed + ",	" + thr + ",	" + fri + ",	" + sat + ",	" + sun + ",	'" + act + "',	" + comment + ")", con).ExecuteNonQuery();
            con.Close();
            if (i > 0) Response.Redirect("AddDoctorAvailablity.aspx?s=s");
            else Response.Redirect("AddDoctorAvailablity.aspx?s=f");
        }

        protected void docdiag_Click(object sender, EventArgs e)
        {
            string docid = ListBox1.SelectedValue;
            string diagid = dest.SelectedValue;
            string act = dd1.SelectedValue;
            string fee = td1.Text.Equals("") ? "NULL" : "'" + td1.Text + "'";
            string open1 = td2.Text.Equals("") ? "NULL" : "'" + td2.Text + "'";
            string close1 = td3.Text.Equals("") ? "NULL" : "'" + td3.Text + "'";
            string open2 = td4.Text.Equals("") ? "NULL" : "'" + td4.Text + "'";
            string close2 = td5.Text.Equals("") ? "NULL" : "'" + td5.Text + "'";
            string mon = dd2.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string tue = dd3.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string wed = dd4.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string thu = dd5.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string fri = dd6.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string sat = dd7.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string sun = dd8.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string comments = comm.Text.Equals("") ? "NULL" : "'" + comm.Text + "'";

            MySqlConnection con = Connection.Connect();
            con.Open();
            int i = new MySqlCommand("INSERT INTO diagnostic_doctor(didoc_doc_id,didoc_diagnostic_id,didoc_fees,didoc_monday,didoc_tuesday,didoc_wednesday,didoc_thursday,didoc_friday,didoc_saturday,didoc_sunday,didoc_open_time,didoc_close_time,didoc_open_time_1,didoc_close_time_1,didoc_active,didoc_Comment) " +
                "VALUES(" + docid + ",	" + diagid + ", " + fee + ",	" + mon + ",	" + tue + ",	" + wed + ",	" + thu + ",	" + fri + ",	" + sat + ",	" + sun + ",	" + open1 + ",	" + close1 + ",	" + open2 + ",	" + close2 + ",	'" + act + "', " + comments + ")", con).ExecuteNonQuery();
            con.Close();
            if (i > 0) Response.Redirect("AddDoctorAvailablity.aspx?s=s");
            else Response.Redirect("AddDoctorAvailablity.aspx?s=f");

        }

        protected void docpharma_Click(object sender, EventArgs e)
        {
            string docid = ListBox1.SelectedValue;
            string pharmaid = dest.SelectedValue;
            string act = dp1.SelectedValue;
            string fee = tp1.Text.Equals("") ? "NULL" : "'" + tp1.Text + "'";
            string open1 = tp2.Text.Equals("") ? "NULL" : "'" + tp2.Text + "'";
            string close1 = tp3.Text.Equals("") ? "NULL" : "'" + tp3.Text + "'";
            string open2 = tp4.Text.Equals("") ? "NULL" : "'" + tp4.Text + "'";
            string close2 = tp5.Text.Equals("") ? "NULL" : "'" + tp5.Text + "'";
            string open3 = op3.Text.Equals("") ? "NULL" : "'" + op3.Text + "'";
            string close3 = cl3.Text.Equals("") ? "NULL" : "'" + cl3.Text + "'";
            string mon = dp2.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string tue = dp3.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string wed = dp4.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string thu = dp5.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string fri = dp6.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string sat = dp7.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string sun = dp8.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string commen = com.Text.Equals("") ? "NULL" : "'" + com.Text + "'";

            MySqlConnection con = Connection.Connect();
            con.Open();
            int i = new MySqlCommand("INSERT INTO doctor_pharmacy(dpharm_doc_id,dpharm_pharma_id,dpharm_fees,dpharm_monday,dpharm_tuesday,dpharm_wednesday,dpharm_thursday,dpharm_friday,dpharm_saturday,dpharm_sunday,dpharm_open_time,dpharm_close_time,dpharm_open_time_1,dpharm_close_time_1,dpharm_active,dpharm_comments,dpharm_open_time_2,dpharm_close_time_2) " +
                "VALUES(" + docid + ",	" + pharmaid + ",	" + fee + ",	" + mon + ",	" + tue + ",	" + wed + ",	" + thu + ",	" + fri + ",	" + sat + ",	" + sun + ",	" + open1 + ",	" + close1 + ",	" + open2 + ",	" + close2 + ",	'" + act + "',	" + commen + ",	" + open3 + ",	" + close3 + ")", con).ExecuteNonQuery();
            con.Close();
            if (i > 0) Response.Redirect("AddDoctorAvailablity.aspx?s=s");
            else Response.Redirect("AddDoctorAvailablity.aspx?s=f");
        }
    }
}