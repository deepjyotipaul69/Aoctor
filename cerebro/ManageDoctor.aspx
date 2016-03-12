<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageDoctor.aspx.cs" Inherits="WebApplication2.cerebro.Manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Doctor</title>
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
            <a href="AddDoctor.aspx" style="padding:15px;background-color:lightskyblue;">Add Doctor</a>
        </div>
        <br />
        <div style="font-family:Signika; color:firebrick; border:2px solid deepskyblue;text-align:center;margin:0 auto;width:50vw;">
                <h3>Please use the below criteria to search a doctor</h3>
            <asp:Label Text="First Name" runat="server" />
            <asp:TextBox runat="server" ID="first" placeholder="Enter First Name" Font-Size="Large" />&nbsp&nbsp
            <asp:Label Text="Last Name" runat="server" />
            <asp:TextBox runat="server" ID="lastname" placeholder="Enter Last Name" Font-Size="Large" />&nbsp&nbsp
            <asp:Button Text="Search" runat="server" BackColor="Turquoise" /><br /><br />
                </div>
        <div class="cent" style="overflow-x:scroll;"><!--horizontal scroll-->
            <br />
            <asp:GridView ID="gv1" runat="server" DataSourceID="SqlDataSource1" AlternatingRowStyle-BackColor="#E2FBEB" AllowPaging="True" AllowSorting="True" Font-Size="Large">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                        <ControlStyle Font-Underline="True" ForeColor="Blue"></ControlStyle>
                    </asp:CommandField>
                </Columns>
            </asp:GridView>



            <asp:SqlDataSource runat="server"
                ID="SqlDataSource1"
                ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>'
                DeleteCommand="DELETE FROM doctor WHERE doc_id = ?"
                InsertCommand="INSERT INTO doctor (doc_id, doc_fname, doc_lname, doc_registration_number, doc_address, doc_city, doc_area, doc_contact_number, doc_contact_number2, doc_contact_number3, doc_specialization, doc_degree, doc_email, doc_on_call, doc_appointment, doc_views, doc_verified, doc_active, doc_hightlight, doc_subhighlight, doc_pincode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
                ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>'
                SelectCommand="SELECT * FROM doctor"
                FilterExpression="doc_fname like '%{0}%' AND doc_lname like '%{1}'"
                UpdateCommand="UPDATE doctor SET doc_fname = ?, doc_lname = ?, doc_registration_number = ?, doc_address = ?, doc_city = ?, doc_area = ?, doc_contact_number = ?, doc_contact_number2 = ?, doc_contact_number3 = ?, doc_specialization = ?, doc_degree = ?, doc_email = ?, doc_on_call = ?, doc_appointment = ?, doc_views = ?, doc_verified = ?, doc_active = ?, doc_hightlight = ?, doc_subhighlight = ?, doc_pincode = ? WHERE doc_id = ?">
                <DeleteParameters>
                    <asp:Parameter Name="doc_id" Type="Decimal"></asp:Parameter>
                </DeleteParameters>
                <FilterParameters>
                    <asp:ControlParameter Name="First" ConvertEmptyStringToNull="false" ControlID="first" PropertyName="Text" />
                    <asp:ControlParameter Name="LastName" ConvertEmptyStringToNull="false" ControlID="lastname" PropertyName="Text" />
                </FilterParameters>
                <DeleteParameters>
                    <asp:Parameter Name="doc_id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="doc_id" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="doc_fname" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_lname" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_registration_number" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_city" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_area" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_contact_number" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_contact_number2" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_contact_number3" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_specialization" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_degree" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_on_call" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_appointment" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_views" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="doc_verified" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_active" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_hightlight" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_subhighlight" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_pincode" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="doc_fname" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_lname" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_registration_number" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_city" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_area" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_contact_number" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_contact_number2" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_contact_number3" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_specialization" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_degree" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_on_call" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_appointment" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_views" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="doc_verified" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_active" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_hightlight" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_subhighlight" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_pincode" Type="String"></asp:Parameter>
                    <asp:Parameter Name="doc_id" Type="Decimal"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    <%}
          else Response.Redirect("Default.aspx");
      }
      catch (Exception) { Response.Redirect("Default.aspx"); } %>
</body>
</html>
