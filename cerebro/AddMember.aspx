<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="WebApplication2.cerebro.AddMember" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Member</title>
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
    <%try
      {
          string s = (string)Session["user"];
          s.IndexOf("S");
          if (s.Equals("admin"))
          {
    %>
    <div class="cent" style="width:30%;">
        <h3>Add New User</h3>
        <label>Username</label><br />
        <asp:TextBox runat="server" ID="usr" CssClass="tt" required /><br /><br />
        <label>Password</label><br />
        <asp:TextBox runat="server" TextMode="Password" ID="pwd" CssClass="tt" required /><br /><br />
        <label>Email</label><br />
        <asp:TextBox runat="server" TextMode="Email" ID="mail" CssClass="tt" required /><br /><br />
        <asp:CheckBox Text="Admin" runat="server" ID="isAdmin" />
        <asp:CheckBox Text="Active" runat="server" ID="isActive" /><br /><br />
        <asp:Button Text="Add Member" runat="server" CssClass="ttt" OnClick="Unnamed1_Click" /><br />
    
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

    <%}
          else
              Response.Redirect("Default.aspx");
      }

      catch (Exception)
      {
          Response.Redirect("Default.aspx");
      }
    %>

        <br /><br />
        <h3>Edit Members</h3>
        <asp:GridView runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False">
            <Columns>
                <asp:CommandField ShowEditButton="True">
                <ControlStyle ForeColor="#6699FF" />
                </asp:CommandField>
                <asp:BoundField DataField="cm_username" HeaderText="Username" SortExpression="cm_username"></asp:BoundField>
                <asp:BoundField DataField="cm_password" HeaderText="Password" SortExpression="cm_password"></asp:BoundField>
                <asp:BoundField DataField="cm_email" HeaderText="Email" SortExpression="cm_email"></asp:BoundField>
                <asp:BoundField DataField="cm_active" HeaderText="Active" SortExpression="cm_active"></asp:BoundField>
                <asp:BoundField DataField="admin" HeaderText="Admin" SortExpression="admin"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' DeleteCommand="DELETE FROM cerebro_members WHERE cm_id = ?" InsertCommand="INSERT INTO cerebro_members (cm_id, cm_username, cm_password, cm_email, cm_active, admin) VALUES (?, ?, ?, ?, ?, ?)" ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT * FROM cerebro_members" UpdateCommand="UPDATE cerebro_members SET cm_username = ?, cm_password = ?, cm_email = ?, cm_active = ?, admin = ? WHERE cm_id = ?">
            <DeleteParameters>
                <asp:Parameter Name="cm_id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cm_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="cm_username" Type="String"></asp:Parameter>
                <asp:Parameter Name="cm_password" Type="String"></asp:Parameter>
                <asp:Parameter Name="cm_email" Type="String"></asp:Parameter>
                <asp:Parameter Name="cm_active" Type="String"></asp:Parameter>
                <asp:Parameter Name="admin" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cm_username" Type="String"></asp:Parameter>
                <asp:Parameter Name="cm_password" Type="String"></asp:Parameter>
                <asp:Parameter Name="cm_email" Type="String"></asp:Parameter>
                <asp:Parameter Name="cm_active" Type="String"></asp:Parameter>
                <asp:Parameter Name="admin" Type="String"></asp:Parameter>
                <asp:Parameter Name="cm_id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
