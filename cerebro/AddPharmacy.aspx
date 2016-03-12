<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPharmacy.aspx.cs" Inherits="WebApplication2.cerebro.AddPharmacy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Pharmacy</title>
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
                        <td colspan="2">
                            <label>Pharmacy ID</label><br />
                            <asp:TextBox required runat="server" ID="pid" />
                        </td>
                        </tr>    
                    <tr>
                        <td>
                            <label>Name</label><br />
                            <asp:TextBox required runat="server" ID="t1" />
                        </td>
                        <td>
                            <label>Address</label><br />
                            <asp:TextBox runat="server" ID="t2" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>City</label><br />
                            <asp:TextBox required runat="server" ID="t3" />
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
                            <label>Email ID</label><br />
                            <asp:TextBox runat="server" ID="t8" /></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Website</label><br />
                            <asp:TextBox runat="server" ID="t9" /></td>
                        <td>
                            <label>Home Delivery</label><br />
                            <asp:DropDownList runat="server" ID="dd1">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Discount Available</label><br />
                            <asp:DropDownList runat="server" ID="dd2">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Payment Option</label><br />
                            <asp:DropDownList runat="server" ID="dd3">
                                <asp:ListItem Text="Card Only" />
                                <asp:ListItem Text="Cash Only" />
                                <asp:ListItem Text="Cash/Card Both" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Ambulance Available</label><br />
                            <asp:DropDownList runat="server" ID="dd4">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Oxygen Cylinder Available</label><br />
                            <asp:DropDownList runat="server" ID="dd5">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>24 Hours</label><br />
                            <asp:DropDownList runat="server" ID="dd6">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Open Time 1</label><br />
                            <asp:TextBox runat="server" ID="t10" />
							</td>
                    </tr>
                    <tr>
                        <td>
                            <label>Close Time 1</label><br />
                            <asp:TextBox runat="server" ID="t11" /></td>
                        <td>
                            <label>Open Time 2</label><br />
                            <asp:TextBox runat="server" ID="t12" />
							</td>
                    </tr>
                    <tr>
                        <td>
                            <label>Close Time 2</label><br />
                            <asp:TextBox runat="server" ID="t13" />
							</td>
                        <td>
                            <label>Open Time 3</label><br />
                            <asp:TextBox runat="server" ID="t14" />
							</td>
                    </tr>
                    <tr>
                        <td>
                            <label>Close Time 3</label><br />
                            <asp:TextBox runat="server" ID="t15" />
							</td>
                        <td>
                            <label>Sunday Open</label><br />
                            <asp:DropDownList runat="server" ID="dd7">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Monday Open</label><br />
                            <asp:DropDownList runat="server" ID="dd8">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Tuesday Open</label><br />
                            <asp:DropDownList runat="server" ID="dd9">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Wednesday Open</label><br />
                            <asp:DropDownList runat="server" ID="dd10">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Thursday Open</label><br />
                            <asp:DropDownList runat="server" ID="dd11">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
					<tr>
                        <td>
                            <label>Friday Open</label><br />
                            <asp:DropDownList runat="server" ID="dd12">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Saturday Open</label><br />
                            <asp:DropDownList runat="server" ID="dd13">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>                        
                        <td>
                            <label>Added Features (If Any)</label><br />
                            <asp:TextBox runat="server" ID="t16" /></td>
                        <td>
                            <label>Active</label><br />
                            <asp:DropDownList runat="server" ID="dd14">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
					<tr>                        
                        <td>
                            <label>Advert</label><br />
                            <asp:DropDownList runat="server" ID="dd15">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                        <td>
                            <label>Verified</label><br />
                            <asp:DropDownList runat="server" ID="dd16">
                                <asp:ListItem Text="Yes" />
                                <asp:ListItem Text="No" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Feedback</label><br />
                            <asp:TextBox runat="server" ID="fee" /></td>
                        <td>
                            <label>Pincode</label><br />
                            <asp:TextBox runat="server" ID="pin" />
							</td>
                    </tr>
                    <tr>
                        <td>
                            <label>Highlight Head</label><br />
                            <asp:TextBox runat="server" ID="hhead" /></td>
                        <td>
                            <label>Highlight Sub Head</label><br />
                            <asp:TextBox runat="server" ID="hsub" />
							</td>
                    </tr>
                </table>
                <h2 style="text-align: right;">
                    <asp:Button Text="Insert Pharmacy" runat="server" OnClick="Unnamed_Click" /></h2>
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
