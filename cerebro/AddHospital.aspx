<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddHospital.aspx.cs" Inherits="WebApplication2.cerebro.AddHospital" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Hospital</title>
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
        <div class="cent" style="width: 50%;">
            <fieldset style="padding: 20px;">
                <legend>Add Hospital</legend>
                <table style="width: 100%;">
                    <tr>
                        <td colspan="2">
                            <label>Hospital ID</label><br />
                            <asp:TextBox runat="server" ID="hid" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Name</label><br />
                            <asp:TextBox runat="server" ID="TextBox1" />
                        </td>
                        <td>
                            <label>Phone1</label><br />
                            <asp:TextBox runat="server" ID="TextBox2" />

                        </td>
                    </tr>
                    <tr>
                        <td>

                            <label>Phone2</label><br />
                            <asp:TextBox runat="server" ID="TextBox3" />
                        </td>
                        <td>

                            <label>Phone3</label><br />
                            <asp:TextBox runat="server" ID="TextBox4" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Phone4</label><br />
                            <asp:TextBox runat="server" ID="TextBox5" /></td>
                        <td>
                            <label>Website</label><br />
                            <asp:TextBox runat="server" ID="TextBox6" /></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Email</label><br />
                            <asp:TextBox runat="server" ID="TextBox7" /></td>
                        <td>
                            <label>Address</label><br />
                            <asp:TextBox runat="server" ID="TextBox8" /></td>
                    </tr>
                    <tr>
                        <td>
                            <label>City</label><br />
                            <asp:TextBox runat="server" ID="TextBox9" /></td>
                        <td>
                            <label>Area</label><br />
                            <asp:TextBox runat="server" ID="TextBox10" /></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Type</label><br />
                            <asp:TextBox runat="server" ID="TextBox11" /></td>
                        <td>
                            <label>Property Type</label><br />
                            <asp:TextBox runat="server" ID="TextBox12" /></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Discount Available</label><br />
                            <asp:DropDownList runat="server" ID="DD1">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Mediclaim</label><br />
                            <asp:DropDownList runat="server" ID="DD2">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Ambulance</label><br />
                            <asp:DropDownList runat="server" ID="DD3">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Blood Bank</label><br />
                            <asp:DropDownList runat="server" ID="DD4">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Burn Unit</label><br />
                            <asp:DropDownList runat="server" ID="DD5">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Snake Unit</label><br />
                            <asp:DropDownList runat="server" ID="DD6">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Feedback</label><br />
                            <asp:TextBox runat="server" ID="TextBox13" /></td>
                        <td>
                            <label>Added Benefits</label><br />
                            <asp:TextBox runat="server" ID="TextBox14" /></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Advertisement Option</label><br />
                            <asp:DropDownList runat="server" ID="advt">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Mode of Payment</label><br />
                            <asp:DropDownList runat="server" ID="tb16">
                                <asp:ListItem Text="Card Only" />
                                <asp:ListItem Text="Cash Only" />
                                <asp:ListItem Text="Card/Cash Both" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Diagnostic</label><br />
                            <asp:DropDownList runat="server" ID="diagno">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Department</label><br />
                            <asp:TextBox runat="server" ID="TextBox18" /></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Pharmacy</label><br />
                            <asp:DropDownList runat="server" ID="DD7">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>ICU</label><br />
                            <asp:DropDownList runat="server" ID="DD8">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>ICCU</label><br />
                            <asp:DropDownList runat="server" ID="DD9">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>NICU</label><br />
                            <asp:DropDownList runat="server" ID="DD10">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>SSC</label><br />
                            <asp:DropDownList runat="server" ID="DD11">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Super-Speciality</label><br />
                            <asp:DropDownList runat="server" ID="spec">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>Super-Speciality Address</label><br />
                            <asp:TextBox runat="server" ID="sspecaddr" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Packages</label><br />
                            <asp:DropDownList runat="server" ID="pack">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Highlight Head</label><br />
                            <asp:TextBox runat="server" ID="TextBox20" /></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Highlight Subhead</label><br />
                            <asp:TextBox runat="server" ID="TextBox21" /></td>
                        <td>
                            <label>Active</label>
                            <asp:DropDownList runat="server" ID="DD12">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Advertise</label>
                            <asp:DropDownList runat="server" ID="DD13">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Verified</label>
                            <asp:DropDownList runat="server" ID="DD14">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>Mediclaim Desc</label>
                            <asp:TextBox runat="server" ID="TextBox22" />
                        </td>
                    </tr>
                </table>
                <h2 style="text-align: right;">
                    <asp:Button Text="Insert Hospital" runat="server" OnClick="Unnamed_Click" /></h2>
            </fieldset>
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
