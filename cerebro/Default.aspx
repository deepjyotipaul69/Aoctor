<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.cerebro.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cerebro</title>
    <link href="../css/images/icon.png" rel="shortcut icon" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />

    <style>
        .tt {
            padding: 10px;
            font-size: 1.1em;
            width: 100%;
            border-radius:4px;
        }

        .ttt {
            width: 100%;
            padding-top: 20px;
            padding-bottom: 20px;
            float: right;
            cursor: pointer;
            background-color: #1DBEE5;
            border: 1px solid navy;
            border-radius: 0 0 5px 5px;
            font-size:large;
        }


        .ttt:hover, .ttt:active {
                    background-color: lawngreen;
                }

        .t {
            display:block;
            padding: 20px;
            border: 1px solid black;
            background-color: deepskyblue;
            -moz-transition: all 0.4s;
            -o-transition: all 0.4s;
            -webkit-transition: all 0.4s;
            transition: all 0.4s;
            border-radius: 7px;
        }

            .t:hover {
                background-color:gray;
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
                
            </div>
        </div>
    </header>
    <form id="form1" runat="server">

        <%try
          {
              string user = (string)Session["user"];
              string name = (string)Session["name"];
              user.IndexOf("S");
        %>
        <h2 style="font-family: Signika; font-weight: lighter; text-align: center; text-transform:capitalize">Welcome <%=name %></h2>
        <h5 style="text-align: right;"><a href="LogOut.aspx" id="sign" style="padding: 5px; border: 1px solid #1DBEE5; background-color: #1DBEE5; border-radius: 3px; padding-left: 30px; padding-right: 30px;">Sign Out</a></h5><br /><br />
        <div class="cent" style="width:27%; text-align:center; font-weight:bold;">
            <a class="t" href="ManageDoctor.aspx">Manage Doctors</a>&nbsp
            <a class="t" href="AddDoctorAvailablity.aspx">Manage Doctor Availability</a>&nbsp
            <a class="t" href="AddChamber.aspx">Manage Doctor Chamber Info</a><br />
            <a class="t" href="ManageHospital.aspx">Manage Hospitals</a>&nbsp
            <a class="t" href="ManagePharmacy.aspx">Manage Pharmacy</a>&nbsp
            <a class="t" href="ManageDiagnostic.aspx">Manage Diagnostic</a><br />
            <a class="t" href="ManageAdverts.aspx">Manage Adverts</a>&nbsp
            <%if (user.Equals("admin"))
              {            %>
            <a class="t" href="AddMember.aspx">Add Members</a>&nbsp
            <a class="t" href="DocSpec.aspx">Modify Doctor Specialization</a><br />
            <%}%>
        </div>
        <br />
        <br />

        <%
          }
          catch (Exception)
          {%>
        <div style="margin: 0 auto; width: 30vw; border-radius: 2px;box-shadow:0px 0px 2px black;">
            
            <h2 style="text-align: center; margin: 0; padding: 1.5em; border-radius:5px 5px 0 0; background-color: deepskyblue; font-family: 'Segoe UI'; font-weight: lighter;">Log In to Cerebro</h2>
            <div style="padding: 1.5em;">
            <label for="<%=username.ClientID %>">Username</label><br />
            <asp:TextBox CssClass="tt" runat="server" ID="username" placeholder="Username" autofocus Font-Size="large" Style="width: 98%;margin-bottom:8px;" /><br />
            <br />
            <label for="<%=password.ClientID %>">Password</label><br />
            <asp:TextBox CssClass="tt" TextMode="Password" runat="server" ID="password" placeholder="Password" Font-Size="Large" Style="width: 98%;margin-bottom:8px;" /><br />
            <br />
           </div>
            <asp:Button CssClass="ttt" Text="Sign In" runat="server" OnClick="Unnamed1_Click" />
        </div>
        <%
		
          } %>
    </form>
</body>
</html>
