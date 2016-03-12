<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePharmacy.aspx.cs" Inherits="WebApplication2.cerebro.ManagePharmacy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Pharmacy</title>
    <link href="../css/images/icon.png" rel="shortcut icon" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body><%try
      {
          string s = (string)Session["user"];
          s.IndexOf("S");
          if (s.Equals("admin") || s.Equals("user"))
          {
    %>
    <header>
        <div class="cent">
            <div style="width: 30%; padding-top: 15px;">
                <a href="/">
                    <img src="../css/images/logo_red.png" style="width: 150px; height: auto; float: left;" /></a>
            </div>
            <div style="width: 39%; text-align: center;">
                <h1 style="color: white;">Cerebro</h1>
            </div>
            <div style="width: 28%;">
                <h5 style="text-align: right;"><a href="LogOut.aspx" id="sign" style="padding: 5px; border: 1px solid #1DBEE5; background-color: #1DBEE5; border-radius: 3px; padding-left: 30px; padding-right: 30px;">Sign Out</a></h5>
            </div>
        </div>
    </header>
    <form id="form1" runat="server">
          <br /><br />
        <div class="cent">
            <a href="AddPharmacy.aspx" style="padding:15px;background-color:lightskyblue;">Add Pharmacy</a>
        </div>
        <br />

        <div style="font-family:Signika; color:firebrick; border:2px solid deepskyblue;text-align:center;margin:0 auto;width:50vw;">
                <h3>Please use the below criteria to search a Pharmacy</h3>
            <asp:Label ID="Label1" Text="Pharmacy Name" runat="server" />
            <asp:TextBox runat="server" ID="pharname" placeholder="Enter Pharmacy Name" Font-Size="Large" />&nbsp&nbsp
            <asp:Button ID="Button1" Text="Search" runat="server" BackColor="Turquoise" /><br /><br />
                </div>

    <div class="cent" style="overflow-x:scroll;"><!--horizontal scroll-->
        <br />

        <asp:GridView runat="server" DataSourceID="SqlDataSource1" AlternatingRowStyle-BackColor="#E2FBEB" AllowSorting="True" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True">
                    <ControlStyle Font-Underline="True" ForeColor="Blue"></ControlStyle>
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' DeleteCommand="DELETE FROM pharmacy WHERE pharma_id = ?" InsertCommand="INSERT INTO pharmacy (pharma_id, pharma_name, pharma_address, pharma_city, pharma_area, pharma_contact_no, pharma_contact_no2, pharma_contact_no3, pharma_email, pharma_website, pharma_home_delivery, pharma_discount_available, pharma_payment_option, pharma_ambulance_available, pharma_oxygen_cylinder_available, pharma_24_hrs_available, pharma_open_time_1, pharma_close_time_1, pharma_open_time_2, pharma_close_time_2, pharma_open_time_3, pharma_close_time_3, pharma_sunday, pharma_monday, pharma_tuesday, pharma_wednesday, pharma_thursday, pharma_friday, pharma_saturday, pharma_feedback, pharma_added_feature, pharma_active, pharma_views, pharma_advert, pharma_verified, pharma_pin_code, pharma_highlight_head, pharma_highlight_subhead) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT * FROM pharmacy" FilterExpression="pharma_name like '%{0}%'" UpdateCommand="UPDATE pharmacy SET pharma_name = ?, pharma_address = ?, pharma_city = ?, pharma_area = ?, pharma_contact_no = ?, pharma_contact_no2 = ?, pharma_contact_no3 = ?, pharma_email = ?, pharma_website = ?, pharma_home_delivery = ?, pharma_discount_available = ?, pharma_payment_option = ?, pharma_ambulance_available = ?, pharma_oxygen_cylinder_available = ?, pharma_24_hrs_available = ?, pharma_open_time_1 = ?, pharma_close_time_1 = ?, pharma_open_time_2 = ?, pharma_close_time_2 = ?, pharma_open_time_3 = ?, pharma_close_time_3 = ?, pharma_sunday = ?, pharma_monday = ?, pharma_tuesday = ?, pharma_wednesday = ?, pharma_thursday = ?, pharma_friday = ?, pharma_saturday = ?, pharma_feedback = ?, pharma_added_feature = ?, pharma_active = ?, pharma_views = ?, pharma_advert = ?, pharma_verified = ?, pharma_pin_code = ?, pharma_highlight_head = ?, pharma_highlight_subhead = ? WHERE pharma_id = ?">
            <DeleteParameters>
                <asp:Parameter Name="pharma_id" Type="Decimal"></asp:Parameter>
            </DeleteParameters>
            <FilterParameters>
                <asp:ControlParameter Name="pharmaname" ConvertEmptyStringToNull="false" ControlID="pharname" PropertyName="Text" />
            </FilterParameters>
            <DeleteParameters>
                <asp:Parameter Name="pharma_id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pharma_id" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="pharma_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_address" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_city" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_area" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_contact_no" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_contact_no2" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_contact_no3" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_email" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_website" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_home_delivery" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_discount_available" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_payment_option" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_ambulance_available" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_oxygen_cylinder_available" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_24_hrs_available" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_open_time_1" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_close_time_1" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_open_time_2" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_close_time_2" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_open_time_3" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_close_time_3" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_sunday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_monday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_tuesday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_wednesday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_thursday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_friday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_saturday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_feedback" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_added_feature" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_active" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_views" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="pharma_advert" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_verified" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_pin_code" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_highlight_head" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_highlight_subhead" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pharma_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_address" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_city" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_area" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_contact_no" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_contact_no2" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_contact_no3" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_email" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_website" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_home_delivery" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_discount_available" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_payment_option" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_ambulance_available" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_oxygen_cylinder_available" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_24_hrs_available" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_open_time_1" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_close_time_1" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_open_time_2" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_close_time_2" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_open_time_3" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_close_time_3" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_sunday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_monday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_tuesday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_wednesday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_thursday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_friday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_saturday" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_feedback" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_added_feature" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_active" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_views" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="pharma_advert" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_verified" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_pin_code" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_highlight_head" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_highlight_subhead" Type="String"></asp:Parameter>
                <asp:Parameter Name="pharma_id" Type="Decimal"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form><%}
          else Response.Redirect("Default.aspx");
      }
      catch (Exception) { Response.Redirect("Default.aspx"); } %>
</body>
</html>
