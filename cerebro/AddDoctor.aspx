<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="WebApplication2.cerebro.AddDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Doctor</title>
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
            <div class="cent" style="width: 40%;">
                <fieldset>
                    <legend>Add Doctor</legend>

                    <table style="width: 100%;">
                        <tr>
                            <td colspan="2">
                                <asp:Label Text="Doc ID" runat="server" /><br />
                                <asp:TextBox required runat="server" ID="did" />
                           </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="First Name" runat="server" /><br />
                                <asp:TextBox required runat="server" ID="fname" />
                            </td>
                            <td>
                                <asp:Label Text="Last Name" runat="server" /><br />
                                <asp:TextBox required runat="server" ID="lname" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Reg. No." runat="server" /><br />
                                <asp:TextBox runat="server" ID="reg" /></td>
                            <td>
                                <asp:Label Text="Address" runat="server" /><br />
                                <asp:TextBox runat="server" ID="address" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="City" runat="server" /><br />
                                <asp:TextBox required runat="server" ID="city" /></td>
                            <td>
                                <asp:Label Text="Area" runat="server" /><br />
                                <asp:TextBox required runat="server" ID="area" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Contact 1" runat="server" /><br />
                                <asp:TextBox runat="server" ID="cont1" TextMode="Number" /></td>
                            <td>
                                <asp:Label Text="Contact 2" runat="server" /><br />
                                <asp:TextBox runat="server" ID="cont2" TextMode="Number" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Contact 3" runat="server" /><br />
                                <asp:TextBox runat="server" ID="cont3" TextMode="Number" /></td>
                            <td>
                                <asp:Label Text="Specialization" runat="server" /><br />
                                <asp:DropDownList runat="server" ID="spec" DataSourceID="SqlDataSource2" DataTextField="spec_specialization" DataValueField="spec_specialization"></asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Degree" runat="server" /><br />
                                <asp:TextBox required runat="server" ID="deg" /></td>
                            <td>
                                <asp:Label Text="Email" runat="server" /><br />
                                <asp:TextBox runat="server" ID="email" TextMode="Email" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Available on Call" runat="server" /><br />
                                <asp:DropDownList runat="server" ID="oncall">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList></td>
                            <td>
                                <asp:Label Text="Appointment" runat="server" /><br />
                                <asp:DropDownList runat="server" ID="appo">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Verified" runat="server" /><br />
                                <asp:DropDownList runat="server" ID="ver">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList></td>
                            <td>
                                <asp:Label Text="Active" runat="server" /><br />
                                <asp:DropDownList runat="server" ID="act">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Pincode" runat="server" /><br />
                                <asp:TextBox runat="server" ID="pin" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label Text="Highlight Head" runat="server" /><br />
                                <asp:TextBox runat="server" ID="hea" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label Text="Highlight Sub-Head" runat="server" /><br />
                                <asp:TextBox runat="server" ID="sub" /></td>
                        </tr>
                    </table>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT spec_specialization FROM doctor_specialization_list"></asp:SqlDataSource>
                    <asp:Button Text="Add Doctor" runat="server" OnClick="Unnamed_Click" />
                </fieldset>
                <asp:Label ID="lb" Text="" runat="server" />
            </div>
        </div>
    </form>
    <%}
          else Response.Redirect("Default.aspx");
      }
      catch (Exception) { Response.Redirect("Default.aspx"); } %>
</body>
</html>
