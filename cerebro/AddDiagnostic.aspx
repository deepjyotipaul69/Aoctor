<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDiagnostic.aspx.cs" Inherits="WebApplication2.cerebro.AddDiagnostic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Diagnostic</title>
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
    <form id="form1" runat ="server">
        <div class="cent" style="width: 50%;">
            <fieldset style="padding: 20px;">
                <legend>Add Diagnostic</legend>
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <label>Diagnostic ID</label><br />
                            <asp:TextBox required runat="server" ID="did" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Name</label><br />
                            <asp:TextBox required runat="server" ID="t1" />
                        </td>
                        <td>
                            <label>City</label><br />
                            <asp:TextBox required runat="server" ID="t2" />

                        </td>
                    </tr>
                    <tr>
                        <td>

                            <label>Address</label><br />
                            <asp:TextBox runat="server" ID="t3" />
                        </td>
                        <td>

                            <label>Area</label><br />
                            <asp:TextBox required runat="server" ID="t4" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Phone1</label><br />
                            <asp:TextBox runat="server" ID="t5" /></td>
                        <td>
                            <label>Phone2</label><br />
                            <asp:TextBox runat="server" ID="t6" /></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Phone3</label><br />
                            <asp:TextBox runat="server" ID="t7" /></td>
                        <td>
                            <label>Open Time 1</label><br />
                            <asp:TextBox runat="server" ID="t8" /></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Close Time 1</label><br />
                            <asp:TextBox runat="server" ID="t9" /></td>
                        <td>
                            <label>Open Time 2</label><br />
                            <asp:TextBox runat="server" ID="t10" /></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Close Time 2</label><br />
                            <asp:TextBox runat="server" ID="t11" /></td>
                        <td>
                            <label>Report Home Delivery</label><br />
                            <asp:DropDownList runat="server" ID="dd1">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>24 Hours Open</label><br />
                            <asp:DropDownList runat="server" ID="dd2">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Discount Available</label><br />
                            <asp:DropDownList runat="server" ID="dd3">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Payment Method</label><br />
                            <asp:DropDownList runat="server" ID="dd4">
                                <asp:ListItem Text="Card Only" />
                                <asp:ListItem Text="Cash Only" />
                                <asp:ListItem Text="Card/Cash Both" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Ambulance Available</label><br />
                            <asp:DropDownList runat="server" ID="dd5">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Ambulance Number</label><br />
                            <asp:TextBox runat="server" ID="t12" /></td>
                        <td>
                            <label>Diagnostic Type</label><br />
                            <asp:DropDownList runat="server" ID="dd6">
                                <asp:ListItem Text="Pathology / Radiology" />
                                <asp:ListItem Text="Pathology" />
                                <asp:ListItem Text="Radiology" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Active</label><br />
                            <asp:DropDownList runat="server" ID="dd7">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Advert</label><br />
                            <asp:DropDownList runat="server" ID="dd8">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Verified</label><br />
                            <asp:DropDownList runat="server" ID="dd9">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList>
                        </td>
                        <td>
                            <label>Bllod Bank</label><br />
                            <asp:DropDownList runat="server" ID="bba">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Mediclaim Option</label><br />
                            <asp:DropDownList runat="server" ID="mo">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList>
                        </td>
                        <td>
                            <label>Mediclaim Names</label><br />
                            <asp:TextBox runat="server" ID="mn" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Email ID</label><br />
                            <asp:TextBox runat="server" ID="eid" />
                        </td>
                        <td>
                            <label>Website</label><br />
                            <asp:TextBox runat="server" ID="wb" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Pincode</label><br />
                            <asp:TextBox runat="server" ID="pin" />
                        </td>
                        <td>
                            <label>Property Type</label><br />
                            <asp:TextBox runat="server" ID="ppt" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Pharmacy Option</label><br />
                            <asp:DropDownList runat="server" ID="po">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList>
                        </td>
                        <td>
                            <label>Test Options</label><br />
                            <asp:TextBox runat="server" ID="to" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>Highlight Head</label><br />
                            <asp:TextBox runat="server" ID="t13" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>Highlight Subhead</label><br />
                            <asp:TextBox runat="server" ID="t14" /></td>
                    </tr>
                </table>
                <h2 style="text-align: right;">
                    <asp:Button Text="Insert Diagnostic" runat ="server" OnClick="Unnamed_Click" /></h2>
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
