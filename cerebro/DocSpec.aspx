<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocSpec.aspx.cs" Inherits="WebApplication2.cerebro.DocSpec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Specializations</title>
    <link href="../css/images/icon.png" rel="shortcut icon" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style>
        .ttt {
            width: 300px;
            padding-top: 20px;
            padding-bottom: 20px;
            float: right;
            cursor: pointer;
            background-color: #1DBEE5;
            border: 1px solid navy;
            font-weight: bold;
        }
        .tt {
            padding: 10px;
            font-size: 1.1em;
            width: 100%;
        }
    </style>
</head>
<body>
    <%try
      {
          string s = (string)Session["user"];
          s.IndexOf("S");
          if (s.Equals("admin"))
          { %>
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
    </header><br /><br /><br />
    <form id="form1" runat="server">
    <div class="cent" style="width:30%;">
        <asp:Label Text="Specialization" runat="server" /><br />
        <asp:TextBox runat="server" ID="spec" CssClass="tt" /><br /><br /><br />
        <asp:Button Text="Add" runat="server" CssClass="ttt" OnClick="Unnamed2_Click" />
        <%try
          {
              string f = Request["s"];
              if (f.Equals("s")) 
              { 
                  %>
        <asp:Label Text="Successfully added!" runat="server" style="color:limegreen;" />
        <%
              } 
              else
              { 
                  %>
        <asp:Label Text="Failed" runat="server" style="color:red;" />
        <%
              }
          }
          catch (Exception) { } %>
        <br /><br /><br /><br /><br /><br />
        <h2 style="text-align:center;">Add Specialization</h2>

        <div style="font-family:Signika; color:firebrick; border:2px solid deepskyblue;text-align:center;width:35vw;">
                <h3>Please use the below criteria to search a Specialization</h3>
            <asp:Label ID="Label1" Text="Specialization Name" runat="server" />
            <asp:TextBox runat="server" ID="spname" placeholder="Enter Specialization Name" Font-Size="Large" />&nbsp&nbsp
            <asp:Button ID="Button1" Text="Search" runat="server" BackColor="Turquoise" /><br /><br />
                </div>
        <br /><br />
        <asp:GridView runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="spec_id" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowEditButton="true" ShowDeleteButton="True">
                    <ControlStyle ForeColor="#6699FF"></ControlStyle>
                </asp:CommandField>

                <asp:BoundField DataField="spec_specialization" HeaderText="Specialization" SortExpression="spec_specialization"></asp:BoundField>

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT * FROM doctor_specialization_list" DeleteCommand="DELETE FROM doctor_specialization_list WHERE spec_id = ?" InsertCommand="INSERT INTO doctor_specialization_list (spec_id, spec_specialization) VALUES (?, ?)" FilterExpression="spec_specialization like '%{0}%'" UpdateCommand="UPDATE doctor_specialization_list SET spec_specialization = ? WHERE spec_id = ?">
            <DeleteParameters>
                <asp:Parameter Name="spec_id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <FilterParameters>
                    <asp:ControlParameter Name="pharmaname" ConvertEmptyStringToNull="false" ControlId="spname" PropertyName="Text"/>
                </FilterParameters>
            <InsertParameters>
                <asp:Parameter Name="spec_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="spec_specialization" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="spec_specialization" Type="String"></asp:Parameter>
                <asp:Parameter Name="spec_id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
    <%}
          else
              Response.Redirect("Default.aspx");
      }

      catch (Exception)
      {
          Response.Redirect("Default.aspx");
      } %>
</body>
</html>
