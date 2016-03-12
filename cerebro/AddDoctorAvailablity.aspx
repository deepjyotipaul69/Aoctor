<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDoctorAvailablity.aspx.cs" Inherits="WebApplication2.cerebro.AddDoctorAvailablity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Availability</title>
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
        <div class="cent" style="width: 70%;">
            <fieldset style="padding: 20px;">
                <legend>Add Doctor Availability Information</legend>

                <div>
                    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="doc_id" Height="500px" SelectionMode="Single" Style="display: inline-block;"></asp:ListBox>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT doc_id, CONCAT(doc_id,' - ',doc_fname,' ', doc_lname) as name, CONCAT(CONCAT(doc_city,'-'), doc_area) as area FROM doctor order by doc_fname"></asp:SqlDataSource>
                    <asp:DropDownList runat="server" ID="cat" OnSelectedIndexChanged="cat_SelectedIndexChanged" AutoPostBack="true" Style="display: inline-block;">
                        <asp:ListItem Text="Select a value..." />
                        <asp:ListItem Text="Hospital" />
                        <asp:ListItem Text="Pharmacy" />
                        <asp:ListItem Text="Diagnostic" />
                    </asp:DropDownList>
                    <asp:ListBox runat="server" ID="dest" DataSourceID="SqlDataSource2" Height="500" Style="display: inline-block;"></asp:ListBox>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>'></asp:SqlDataSource>
                </div>


                <div id="hosp" runat="server">
                    <h3 style="font-weight: bolder; color: blueviolet">Information for Doctor-Hospital</h3>
                    <table id="tab1" style="width: 100%;">
                        <tr>
                            <td>
                                <label>Hospital Area</label><br />
                                <asp:TextBox required runat="server" ID="t1" />
                            </td>
                            <td>
                                <label>Department</label><br />
                                <asp:DropDownList runat="server" ID="dep" DataSourceID="depdata" DataTextField="dep_name" DataValueField="dep_name">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Fees</label><br />
                                <asp:TextBox required runat="server" ID="t2" />
                            </td>
                            <td>

                                <label>Active</label><br />
                                <asp:DropDownList runat="server" ID="dh1">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Open Time 1</label><br />
                                <asp:TextBox runat="server" ID="t3" /></td>
                            <td>
                                <label>Close Time 1</label><br />
                                <asp:TextBox runat="server" ID="t4" /></td>
                        </tr>
                        <tr>
                            <td>
                                <label>Open Time 2</label><br />
                                <asp:TextBox runat="server" ID="t5" /></td>
                            <td>
                                <label>Close Time 2</label><br />
                                <asp:TextBox runat="server" ID="t6" /></td>
                        </tr>
                        <tr>
                            <td>
                                <label>Open Time 3</label><br />
                                <asp:TextBox runat="server" ID="t7" /></td>
                            <td>
                                <label>Close Time 3</label><br />
                                <asp:TextBox runat="server" ID="t8" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Monday</label><br />
                                <asp:DropDownList runat="server" ID="dh2">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Tuesday</label><br />
                                <asp:DropDownList runat="server" ID="dh3">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Wednesday</label><br />
                                <asp:DropDownList runat="server" ID="dh4">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Thursday</label><br />
                                <asp:DropDownList runat="server" ID="dh5">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Friday</label><br />
                                <asp:DropDownList runat="server" ID="dh6">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Saturday</label><br />
                                <asp:DropDownList runat="server" ID="dh7">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Sunday</label><br />
                                <asp:DropDownList runat="server" ID="dh8">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Comments</label><br />
                                <asp:TextBox runat="server" ID="comme" />
                            </td>
                        </tr>
                    </table>
                    <asp:SqlDataSource runat="server" ID="depdata" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT dep_name FROM department_list"></asp:SqlDataSource>
                    <h2 style="text-align: right;">
                    <asp:Button ID="dochos" Text="Insert Doctor Hospital Information" runat="server" OnClick="dochos_Click" /></h2>
                </div>


                <div id="dia" runat="server">
                    <h3 style="font-weight: bolder; color: blueviolet">Information for Doctor-Diagnostic</h3>
                    <table id="Table1" style="width: 100%;">
                        <tr>
                            <td>
                                <label>Active</label><br />
                                <asp:DropDownList runat="server" ID="dd1">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Fees</label><br />
                                <asp:TextBox runat="server" ID="td1" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Open Time 1</label><br />
                                <asp:TextBox required runat="server" ID="td2" />
                            </td>
                            <td>

                                <label>Close Time 1</label><br />
                                <asp:TextBox required runat="server" ID="td3" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Open Time 2</label><br />
                                <asp:TextBox runat="server" ID="td4" /></td>
                            <td>
                                <label>Close Time 2</label><br />
                                <asp:TextBox runat="server" ID="td5" /></td>
                        </tr>
                        <tr>
                            <td>
                                <label>Monday</label><br />
                                <asp:DropDownList runat="server" ID="dd2">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Tuesday</label><br />
                                <asp:DropDownList runat="server" ID="dd3">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Wednesday</label><br />
                                <asp:DropDownList runat="server" ID="dd4">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Thursday</label><br />
                                <asp:DropDownList runat="server" ID="dd5">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Friday</label><br />
                                <asp:DropDownList runat="server" ID="dd6">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Saturday</label><br />
                                <asp:DropDownList runat="server" ID="dd7">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Sunday</label><br />
                                <asp:DropDownList runat="server" ID="dd8">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Comments</label><br />
                                <asp:TextBox runat="server" ID="comm" />
                            </td>
                        </tr>
                    </table>
                    <h2 style="text-align: right;">
                    <asp:Button ID="docdiag" Text="Insert Doctor Diagnostic Information" runat="server" OnClick="docdiag_Click" /></h2>
                </div>




                <div id="pharm" runat="server">
                    <h3 style="font-weight: bolder; color: blueviolet">Information for Doctor-Pharmacy</h3>
                    <table id="Table2" style="width: 100%;">
                        <tr>
                            <td>
                                <label>Active</label><br />
                                <asp:DropDownList runat="server" ID="dp1">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Fees</label><br />
                                <asp:TextBox runat="server" ID="tp1" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Open Time 1</label><br />
                                <asp:TextBox required runat="server" ID="tp2" />
                            </td>
                            <td>

                                <label>Close Time 1</label><br />
                                <asp:TextBox required runat="server" ID="tp3" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Open Time 2</label><br />
                                <asp:TextBox runat="server" ID="tp4" /></td>
                            <td>
                                <label>Close Time 2</label><br />
                                <asp:TextBox runat="server" ID="tp5" /></td>
                        </tr>
                        <tr>
                            <td>
                                <label>Open Time 3</label><br />
                                <asp:TextBox runat="server" ID="op3" /></td>
                            <td>
                                <label>Close Time 3</label><br />
                                <asp:TextBox runat="server" ID="cl3" /></td>
                        </tr>
                        <tr>
                            <td>
                                <label>Monday</label><br />
                                <asp:DropDownList runat="server" ID="dp2">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Tuesday</label><br />
                                <asp:DropDownList runat="server" ID="dp3">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Wednesday</label><br />
                                <asp:DropDownList runat="server" ID="dp4">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Thursday</label><br />
                                <asp:DropDownList runat="server" ID="dp5">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Friday</label><br />
                                <asp:DropDownList runat="server" ID="dp6">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Saturday</label><br />
                                <asp:DropDownList runat="server" ID="dp7">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Sunday</label><br />
                                <asp:DropDownList runat="server" ID="dp8">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Comments</label><br />
                                <asp:TextBox runat="server" ID="com" />
                            </td>
                        </tr>
                    </table>
                    <h2 style="text-align: right;">
                    <asp:Button ID="docpharma" Text="Insert Doctor Pharmacy Information" runat="server" OnClick="docpharma_Click" /></h2>
                </div>

                
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
