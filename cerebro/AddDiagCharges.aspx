<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDiagCharges.aspx.cs" Inherits="WebApplication2.cerebro.AddDiagCharges" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Hospital Diagnostic Charges</title>
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

            <div class="cent" style="width: 90%;">
            <fieldset style="padding: 20px;">
                <legend>Add Hospital-Diagnostic Charges</legend>
                <h3 style="font-weight: bolder; color: blueviolet">Information for Doctor-Chamber</h3>
                <div>
                    <h4>Select Hospital</h4>
                    <asp:ListBox ID="dlist" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="hos_id" Height="600" SelectionMode="Single" Style="display: inline-block;"></asp:ListBox>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT hos_id, CONCAT(hos_id,' - ',hos_name) as name, CONCAT(CONCAT(hos_city,'-'), hos_area) as area FROM hospital order by hos_name"></asp:SqlDataSource>
                </div>
                
                   <div id="pharm" runat="server" style="margin-left:100px;">
                    <table id="tab1" style="width: 100%;">
                        <tr>
                            <td>
                                <label>Diagnostic Test Name</label><br />
                                <asp:DropDownList runat="server" ID="tst" DataSourceID="SqlDataSource2" DataTextField="diag_testname" DataValueField="diag_testname"></asp:DropDownList>
                            </td>
                            <td>
                                <label>Charges</label><br />
                                <asp:TextBox required runat="server" ID="dt1" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Open Time 1</label><br />
                                <asp:TextBox runat="server" ID="dt2" />
                            </td>
                            <td>

                                <label>Close Time 1</label><br />
                                <asp:TextBox runat="server" ID="dt3" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Open Time 2</label><br />
                                <asp:TextBox runat="server" ID="dt4" /></td>
                            <td>
                                <label>Close Time 2</label><br />
                                <asp:TextBox runat="server" ID="dt5" /></td>
                        </tr>
                        
                        <tr>
                            <td>
                                <label>Open Time 3</label><br />
                                <asp:TextBox runat="server" ID="dt6" /></td>
                            <td>
                                <label>Close Time 3</label><br />
                                <asp:TextBox runat="server" ID="dt7" /></td>
                        </tr>
                        <tr>
                            <td>
                                <label>Area</label><br />
                                <asp:TextBox required runat="server" ID="dt8" /></td>
                            <td>
                                <label>Monday</label><br />
                                 <asp:DropDownList runat="server" ID="d1">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>    
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Tuesday</label><br />
                                <asp:DropDownList runat="server" ID="d2">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Wednesday</label><br />
                                <asp:DropDownList runat="server" ID="d3">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Thursday</label><br />
                                <asp:DropDownList runat="server" ID="d4">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Friday</label><br />
                                <asp:DropDownList runat="server" ID="d5">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Saturday</label><br />
                                <asp:DropDownList runat="server" ID="d6">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>Sunday</label><br />
                                <asp:DropDownList runat="server" ID="d7">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                            </tr>
                        <tr>
                             <td>
                                <label>Active</label><br />
                                <asp:DropDownList runat="server" ID="d8">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT diag_testname FROM diagnostic_test_list"></asp:SqlDataSource>
                    <h2 style="text-align: right;">
                    <asp:Button ID="diagcharge" Text="Insert Charges" runat="server" OnClick="diagcharge_Click" /></h2>
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
