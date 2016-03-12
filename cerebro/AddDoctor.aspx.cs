using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.cerebro
{
    public partial class AddDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            
            string docid = did.Text;
            string firstn = fname.Text;
            string lastn = lname.Text;
            string registration = reg.Text.Equals("") ? "NULL" : "'" + reg.Text + "'";
            string addr = address.Text.Equals("") ? "NULL" : "'" + address.Text + "'";
            string cit = city.Text.Equals("") ? "NULL" : "'" + city.Text + "'";
            string are = area.Text.Equals("") ? "NULL" : "'" + area.Text + "'";
            string cnt1 = cont1.Text.Equals("") ? "NULL" : "'" + cont1.Text + "'";
            string cnt2 = cont2.Text.Equals("") ? "NULL" : "'" + cont2.Text + "'";
            string cnt3 = cont3.Text.Equals("") ? "NULL" : "'" + cont3.Text + "'";
            string specialization = spec.SelectedValue;
            string degr = deg.Text.Equals("") ? "NULL" : "'" + deg.Text + "'";
            string mail = email.Text.Equals("") ? "NULL" : "'" + email.Text + "'";
            string call = oncall.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string app = appo.SelectedValue.Equals("Yes") ? "'Yes'" : "NULL";
            string verified = ver.SelectedValue;
            string active = act.SelectedValue;
            string pcode = pin.Text.Equals("") ? "NULL" : "'" + pin.Text + "'";
            string hhead = hea.Text.Equals("") ? "NULL" : "'" + hea.Text + "'";
            string hsub = sub.Text.Equals("") ? "NULL" : "'" + sub.Text + "'";
            
            MySqlConnection con = Connection.Connect();
            con.Open();
            string x="INSERT INTO doctor(doc_id,doc_fname,doc_lname,doc_registration_number,doc_address,doc_city,doc_area,doc_contact_number,doc_contact_number2,doc_contact_number3,doc_specialization,doc_degree,doc_email,doc_on_call,doc_appointment,doc_verified,doc_active,doc_hightlight,doc_subhighlight,doc_pincode)" +
                "VALUES(" + docid + ",'" + firstn + "','" + lastn + "'," + registration + "," + addr + "," + cit + "," + are + "," + cnt1 + "," + cnt2 + "," + cnt3 + ",'" + specialization + "'," + degr + "," + mail + "," + call + "," + app + ",'" + verified + "','" + active + "'," + hhead + "," + hsub + "," + pcode + ")";
            int i = new MySqlCommand(x, con).ExecuteNonQuery();            
            con.Close();
            if(i>0) Response.Redirect("AddDoctor.aspx?s=s");
            else Response.Redirect("AddDoctor.aspx?s=f");
        }
    }
}