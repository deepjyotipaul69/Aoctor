<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddChamber.aspx.cs" Inherits="WebApplication2.cerebro.AddChamber" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chamber Information</title>
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
                <legend>Add Doctor Chamber Information</legend>
                <h3 style="font-weight: bolder; color: blueviolet">Information for Doctor-Chamber</h3>
                <div>
                    <h4>Select Doctor</h4>
                    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="doc_id" Height="828" SelectionMode="Single" Style="display: inline-block;"></asp:ListBox>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT doc_id, CONCAT(doc_id,' - ',doc_fname,' ', doc_lname) as name, CONCAT(CONCAT(doc_city,'-'), doc_area) as area FROM doctor order by doc_fname"></asp:SqlDataSource>
                </div>
                
                   <div id="pharm" runat="server" style="margin-left:100px;">
                    <h4>Chamber Info</h4>
                    <table id="tab1" style="width: 100%;">
                        <tr>
                            <td>
                                <label>Chamber Name</label><br />
                                <asp:TextBox required runat="server" ID="tb1" />
                            </td>
                            <td>
                                <label>Address</label><br />
                                <asp:TextBox runat="server" ID="tb2" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Fees</label><br />
                                <asp:TextBox required runat="server" ID="tb3" />
                            </td>
                            <td>

                                <label>City</label><br />
                                <asp:TextBox required runat="server" ID="tb4" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Area</label><br />
                                <asp:TextBox required runat="server" ID="tb5" /></td>
                            <td>
                                <label>Open Time 1</label><br />
                                <asp:TextBox runat="server" ID="tb6" /></td>
                        </tr>
                        
                        <tr>
                            <td>
                                <label>Close Time 1</label><br />
                                <asp:TextBox runat="server" ID="tb7" /></td>
                            <td>
                                <label>Open Time 2</label><br />
                                <asp:TextBox runat="server" ID="tb8" /></td>
                        </tr>
                        <tr>
                            <td>
                                <label>Close Time 2</label><br />
                                <asp:TextBox runat="server" ID="tb9" /></td>
                            <td>
                                <label>Open Time 3</label><br />
                                <asp:TextBox runat="server" ID="tb10" /></td>
                        </tr>
                        <tr>
                            <td>
                                <label>Close Time 3</label><br />
                                <asp:TextBox runat="server" ID="tb11" /></td>
                            <td>
                                <label>Active</label><br />
                                <asp:DropDownList runat="server" ID="dd1">
                                    <asp:ListItem Text="Yes" />
                                    <asp:ListItem Text="No" />
                                </asp:DropDownList>
                            </td>
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
                                <label>Pincode</label><br />
                                <asp:TextBox runat="server" ID="pin" />                            
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Chamber Phone 1</label><br />
                                <asp:TextBox runat="server" ID="ph1" /></td>
                            <td>
                                <label>Chamber Phone 2</label><br />
                                <asp:TextBox runat="server" ID="ph2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">                            
                                <label>Comments</label><br />
                                <asp:TextBox runat="server" ID="comm" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>Highlight Head</label><br />
                                <asp:TextBox runat="server" ID="tb12" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>Highlight Text</label><br />
                                <asp:TextBox runat="server" ID="tb13" /></td>
                        </tr>
                    </table>

                    <h2 style="text-align: right;">
                    <asp:Button ID="docpharma" Text="Insert Doctor Chamber Information" runat="server" OnClick="docpharma_Click" /></h2>
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
