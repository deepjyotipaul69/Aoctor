<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdverts.aspx.cs" Inherits="WebApplication2.cerebro.AddAdverts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adverts</title>
    <link href="../css/images/icon.png" rel="shortcut icon" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style>
        td {
            padding: 10px;
            width: 50%;
        }

            td input, td select {
                width: 90%;
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
              lb.Text = "";
              try
              {
                  if (Request["s"].Equals("s"))
                  {
                      lb.Text = "Successfully Inserted";
                      lb.Style["color"] = "green";
                  }
                  else
                  {
                      lb.Text = "Insertion Failed!";
                      lb.Style["color"] = "red";
                  }
              }
              catch (Exception) { }
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
    <br />

    <form id="form1" runat="server">
        <div>
        <div class="cent" style="width: 70%;">
            <fieldset style="padding: 20px;">
                <legend>Add Adverts</legend>
                
                    <h3 style="font-weight: bolder; color: blueviolet">Advert Information</h3>
                    <marquee>
                        <asp:Label ID="Label5m" runat="server" Font-Bold="True" ForeColor="red" Text="News">Note: Please insert the name of Image file in the Image Filename box.</asp:Label>
                    </marquee>

                <div>
                    <asp:DropDownList runat="server" ID="ad1" OnSelectedIndexChanged="ad1_SelectedIndexChanged" AutoPostBack="true" Style="display: inline-block;">
                        <asp:ListItem Text="Select a value..." />
                        <asp:ListItem Text="Hospital" />
                        <asp:ListItem Text="Pharmacy" />
                        <asp:ListItem Text="Diagnostic" />
                    </asp:DropDownList>
                    <asp:ListBox runat="server" ID="dest" DataSourceID="SqlDataSource2" Height="500" Style="display: inline-block;"></asp:ListBox>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>'></asp:SqlDataSource>
                </div>
                    <table id="tab1" style="width: 100%;">
                        <tr>
                            <td colspan="2">
                                <label>Image Filename</label><br />
                                <asp:TextBox required runat="server" ID="at1" />
                            </td>
                        </tr>                     
                    </table>
                    <asp:SqlDataSource runat="server" ID="depdata" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT dep_name FROM department_list"></asp:SqlDataSource>
                    <h2 style="text-align: right;">
                    <asp:Button ID="ad" Text="Insert Advert" runat="server" OnClick="ad_Click" /></h2>
</fieldset>
                </div>
            <asp:Label ID="lb" Text="" runat="server" />
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
