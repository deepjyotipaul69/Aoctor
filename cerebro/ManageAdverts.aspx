<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageAdverts.aspx.cs" Inherits="WebApplication2.cerebro.ManageAdverts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Adverts</title>
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
            <a href="AddAdverts.aspx" style="padding:15px;background-color:lightskyblue;">Add Adverts</a>
        </div>
        <br />
                
            <div style="font-family:Signika; color:firebrick; border:2px solid deepskyblue;text-align:center;margin-left:72px; width:50vw;">
                <h3>Please use the below criteria to search a Advert</h3>
            <asp:Label ID="Label1" Text="Advert Name" runat="server" />
            <asp:TextBox runat="server" ID="advname" placeholder="Enter Advert Name" Font-Size="Large" />&nbsp&nbsp
            <asp:Button ID="Button1" Text="Search" runat="server" BackColor="Turquoise" /><br /><br />
                </div>

        <div class="cent">
            <br />
            <asp:GridView ID="gv1" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Right" AlternatingRowStyle-BackColor="#E2FBEB" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                        <ControlStyle Font-Underline="True" ForeColor="Blue"></ControlStyle>
                    </asp:CommandField>
                </Columns>
            </asp:GridView>



            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' DeleteCommand="DELETE FROM advertisement WHERE ad_id = ?" InsertCommand="INSERT INTO advertisement (ad_id, ad_link, ad_type, ad_filename) VALUES (?, ?, ?, ?)" ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT * FROM advertisement" FilterExpression="adname like '%{0}%'" UpdateCommand="UPDATE advertisement SET ad_link = ?, ad_type = ?, ad_filename = ? WHERE ad_id = ?">
                <FilterParameters>
                    <asp:ControlParameter Name="advertname" ConvertEmptyStringToNull="false" ControlId="advname" PropertyName="Text"/>
                </FilterParameters> 
                <DeleteParameters>
                    <asp:Parameter Name="ad_id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ad_id" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ad_link" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ad_type" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ad_filename" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ad_link" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ad_type" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ad_filename" Type="String"></asp:Parameter>
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
