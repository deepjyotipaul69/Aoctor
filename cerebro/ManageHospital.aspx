<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageHospital.aspx.cs" Inherits="WebApplication2.cerebro.ManageHospital" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Hospitals</title>
    <link href="../css/images/icon.png" rel="shortcut icon" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <%try
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
    <br />
    <form id="form1" runat="server">
        <div>
            <div class="cent">
                <br />
                <a href="AddHospital.aspx" style="padding: 15px; background-color: lightskyblue;">Add Hospital</a>
                <a href="AddDiagCharges.aspx" style="padding: 15px; background-color: lightskyblue;">Add Hospital-Diagnostic Charges</a><br /><br />
             </div>   
            <br />
                <div style="font-family:Signika; color:firebrick; border:2px solid deepskyblue;text-align:center;margin:0 auto;width:50vw;">
                <h3>Please use the below criteria to search a Hospital</h3>
            <asp:Label Text="Hospital Name" runat="server" />
            <asp:TextBox runat="server" ID="hospiname" placeholder="Enter Hospital Name" Font-Size="Large" />&nbsp&nbsp
            <asp:Button Text="Search" runat="server" BackColor="Turquoise" /><br /><br />
                </div>
                
            <div class="cent" style="overflow-x:scroll;"><!--horizontal scroll-->
                <br />
                <asp:GridView runat="server" DataSourceID="SqlDataSource1" AlternatingRowStyle-BackColor="#E2FBEB" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True">
                            <ControlStyle Font-Underline="True" ForeColor="Blue"></ControlStyle>
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource runat="server"
                    ID="SqlDataSource1"
                    ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>'
                    DeleteCommand="DELETE FROM hospital WHERE hos_id = ?"
                    InsertCommand="INSERT INTO hospital (hos_id, hos_name, hos_phone_no, hos_phone_no2, hos_phone_no3, hos_phone_no4, hos_website, hos_email, hos_address, hos_city, hos_area, hos_type, hos_property_type, hos_discount_available, hos_mediclaim, hos_ambulance, hos_blood_bank, hos_burn_unit, hos_snake_unit, hos_feedback, hos_added_benefits, hos_advertisement_option, hos_mode_of_payment, hos_diagnostics, hos_department, hos_pharmacy, hos_icu, hos_iccu, hos_nicu, hos_ssc, hos_packages, hos_highlight_head, hos_highlight_subhead, hos_active, hos_views, hos_advert, hos_verified, hos_mediclaim_desc, hos_super_speciality, hos_superspeciality_address) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
                    ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>'
                    SelectCommand="SELECT * FROM hospital"
                    FilterExpression="hos_name like '%{0}%'"
                    UpdateCommand="UPDATE hospital SET hos_name = ?, hos_phone_no = ?, hos_phone_no2 = ?, hos_phone_no3 = ?, hos_phone_no4 = ?, hos_website = ?, hos_email = ?, hos_address = ?, hos_city = ?, hos_area = ?, hos_type = ?, hos_property_type = ?, hos_discount_available = ?, hos_mediclaim = ?, hos_ambulance = ?, hos_blood_bank = ?, hos_burn_unit = ?, hos_snake_unit = ?, hos_feedback = ?, hos_added_benefits = ?, hos_advertisement_option = ?, hos_mode_of_payment = ?, hos_diagnostics = ?, hos_department = ?, hos_pharmacy = ?, hos_icu = ?, hos_iccu = ?, hos_nicu = ?, hos_ssc = ?, hos_packages = ?, hos_highlight_head = ?, hos_highlight_subhead = ?, hos_active = ?, hos_views = ?, hos_advert = ?, hos_verified = ?, hos_mediclaim_desc = ?, hos_super_speciality = ?, hos_superspeciality_address = ? WHERE hos_id = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="hos_id" Type="Decimal"></asp:Parameter>
                    </DeleteParameters>
                    <FilterParameters>
                        <asp:ControlParameter Name="hosname" ConvertEmptyStringToNull="false" ControlID="hospiname" PropertyName="Text" />
                    </FilterParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="hos_id" Type="Int32"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="hos_id" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="hos_name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_phone_no" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_phone_no2" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_phone_no3" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_phone_no4" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_website" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_address" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_city" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_area" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_type" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_property_type" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_discount_available" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_mediclaim" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_ambulance" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_blood_bank" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_burn_unit" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_snake_unit" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_feedback" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_added_benefits" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_advertisement_option" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_mode_of_payment" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_diagnostics" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_department" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_pharmacy" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_icu" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_iccu" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_nicu" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_ssc" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_packages" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_highlight_head" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_highlight_subhead" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_active" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_views" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="hos_advert" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_verified" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_mediclaim_desc" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_super_speciality" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_superspeciality_address" Type="String"></asp:Parameter>
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="hos_name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_phone_no" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_phone_no2" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_phone_no3" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_phone_no4" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_website" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_address" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_city" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_area" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_type" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_property_type" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_discount_available" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_mediclaim" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_ambulance" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_blood_bank" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_burn_unit" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_snake_unit" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_feedback" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_added_benefits" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_advertisement_option" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_mode_of_payment" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_diagnostics" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_department" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_pharmacy" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_icu" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_iccu" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_nicu" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_ssc" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_packages" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_highlight_head" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_highlight_subhead" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_active" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_views" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="hos_advert" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_verified" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_mediclaim_desc" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_super_speciality" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_superspeciality_address" Type="String"></asp:Parameter>
                        <asp:Parameter Name="hos_id" Type="Decimal"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
        </div>
    </div>
    </form>
    <br />
    <br />
    <%}
          else Response.Redirect("Default.aspx");
      }
      catch (Exception) { Response.Redirect("Default.aspx"); } %>
</body>
</html>
