<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageDiagnostic.aspx.cs" Inherits="WebApplication2.cerebro.ManageDiagnostic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Diagnostic</title>
    <link href="../css/images/icon.png" rel="shortcut icon" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style>
        tr td input{
            width:300px;
        }
    </style>
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
    <form id="form1" runat="server">
        <br /><br />
        <div class="cent">
            <a href="AddDiagnostic.aspx" style="padding:15px;background-color:lightskyblue;">Add Diagnostic</a>
        </div>
        <br />
            <div style="font-family:Signika; color:firebrick; border:2px solid deepskyblue;text-align:center;margin:0 auto;width:50vw;">
                <h3>Please use the below criteria to search a Diagnostic</h3>
            <asp:Label Text="Diagnostic Name" runat="server" />
            <asp:TextBox runat="server" ID="dianame" placeholder="Enter Diagnostic Name" Font-Size="Large" />&nbsp&nbsp
            <asp:Button Text="Search" runat="server" BackColor="Turquoise" /><br /><br />
                </div>
            <div class="cent" style="overflow-x:scroll;"><!--horizontal scroll-->
                <br />
            <asp:GridView ID="gv1" runat ="server" DataSourceID="SqlDataSource1" AlternatingRowStyle-BackColor="#E2FBEB" AllowPaging="true" AllowSorting="true">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                        <ControlStyle Font-Underline="True" ForeColor="Blue"></ControlStyle>
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' DeleteCommand="DELETE FROM diagnostic WHERE diag_id = ?" InsertCommand="INSERT INTO diagnostic (diag_id, diag_name, diag_city, diag_address, diag_area, diag_phone_1, diag_phone_2, diag_phone_3, diag_open_time, diag_close_time, diag_open_time_1, diag_close_time_1, diag_report_home_delivery, diag_24_hours, diag_discounts, diag_card_payment, diag_ambulance, diag_ambulance_number, diag_highlight_head, diag_highlight_subhead, diag_type, diag_active, diag_views, diag_advert, diag_verified, diag_blood_bank, diag_mediclaim_option, diag_mediclaim_names, diag_email_id, diag_website, diag_pincode, diag_propertytype, diag_pharmacy_option, diag_test_option) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT * FROM diagnostic" FilterExpression="diag_name like '%{0}%'" UpdateCommand="UPDATE diagnostic SET diag_name = ?, diag_city = ?, diag_address = ?, diag_area = ?, diag_phone_1 = ?, diag_phone_2 = ?, diag_phone_3 = ?, diag_open_time = ?, diag_close_time = ?, diag_open_time_1 = ?, diag_close_time_1 = ?, diag_report_home_delivery = ?, diag_24_hours = ?, diag_discounts = ?, diag_card_payment = ?, diag_ambulance = ?, diag_ambulance_number = ?, diag_highlight_head = ?, diag_highlight_subhead = ?, diag_type = ?, diag_active = ?, diag_views = ?, diag_advert = ?, diag_verified = ?, diag_blood_bank = ?, diag_mediclaim_option = ?, diag_mediclaim_names = ?, diag_email_id = ?, diag_website = ?, diag_pincode = ?, diag_propertytype = ?, diag_pharmacy_option = ?, diag_test_option = ? WHERE diag_id = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="diag_id" Type="Decimal"></asp:Parameter>
                    </DeleteParameters>
                    <FilterParameters>
                        <asp:ControlParameter Name="diagname" ConvertEmptyStringToNull="false" ControlID="dianame" PropertyName="Text" />
                    </FilterParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="diag_id" Type="Int32"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="diag_id" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="diag_name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_city" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_address" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_area" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_phone_1" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_phone_2" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_phone_3" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_open_time" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_close_time" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_open_time_1" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_close_time_1" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_report_home_delivery" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_24_hours" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_discounts" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_card_payment" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_ambulance" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_ambulance_number" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_highlight_head" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_highlight_subhead" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_type" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_active" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_views" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="diag_advert" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_verified" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_blood_bank" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_mediclaim_option" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_mediclaim_names" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_email_id" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_website" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_pincode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_propertytype" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_pharmacy_option" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_test_option" Type="String"></asp:Parameter>
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="diag_name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_city" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_address" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_area" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_phone_1" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_phone_2" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_phone_3" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_open_time" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_close_time" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_open_time_1" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_close_time_1" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_report_home_delivery" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_24_hours" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_discounts" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_card_payment" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_ambulance" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_ambulance_number" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_highlight_head" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_highlight_subhead" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_type" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_active" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_views" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="diag_advert" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_verified" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_blood_bank" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_mediclaim_option" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_mediclaim_names" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_email_id" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_website" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_pincode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_propertytype" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_pharmacy_option" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_test_option" Type="String"></asp:Parameter>
                        <asp:Parameter Name="diag_id" Type="Decimal"></asp:Parameter>
                    </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    <%}
      else Response.Redirect("Default.aspx");
      }
      catch (Exception) { Response.Redirect("Default.aspx"); }
    %>

</body>
</html>
