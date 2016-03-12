<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageDoctorHospital.aspx.cs" Inherits="WebApplication2.cerebro.ManageDoctorHospital" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="doc" AutoPostBack="true" runat="server" DataSourceID="SqlDataSource1" DataTextField="value" DataValueField="doc_id">
        </asp:DropDownList>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="select concat(doc_id,' - ',doc_fname,' ',doc_lname) as value,doc_id from doctor"></asp:SqlDataSource>
        <asp:DropDownList ID="hos" runat="server" DataSourceID="SqlDataSource2" DataTextField="hos_name" DataValueField="hos_id" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT CONCAT(hos_id,' - ',hos_name) as hos_name,hos_id from hospital where hos_id in(SELECT hos_id FROM doctor_hospital WHERE (doc_id = ?))">
            <SelectParameters>
                <asp:ControlParameter ControlID="doc" PropertyName="SelectedValue" Name="doc_id" Type="Decimal"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button Text="Search" runat="server" />

        <asp:GridView runat="server" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource3"
            ConnectionString='<%$ ConnectionStrings:aoctorConnectionString %>' DeleteCommand="DELETE FROM doctor_hospital WHERE id = ?" InsertCommand="INSERT INTO doctor_hospital (doc_id, hos_id, hos_area, doc_department, doc_hos_fees, hos_open_time1, hos_close_time1, hos_open_time2, hos_close_time2, hos_open_time3, hos_close_time3, hos_monday, hos_tuesday, hos_wednesday, hos_thursday, hos_friday, hos_saturday, hos_sunday, hos_active, hos_Comments, id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName='<%$ ConnectionStrings:aoctorConnectionString.ProviderName %>' SelectCommand="SELECT * FROM doctor_hospital WHERE ((doc_id = ?) AND (hos_id = ?))" UpdateCommand="UPDATE doctor_hospital SET doc_id = ?, hos_id = ?, hos_area = ?, doc_department = ?, doc_hos_fees = ?, hos_open_time1 = ?, hos_close_time1 = ?, hos_open_time2 = ?, hos_close_time2 = ?, hos_open_time3 = ?, hos_close_time3 = ?, hos_monday = ?, hos_tuesday = ?, hos_wednesday = ?, hos_thursday = ?, hos_friday = ?, hos_saturday = ?, hos_sunday = ?, hos_active = ?, hos_Comments = ? WHERE id = ?">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <FilterParameters>
                <asp:ControlParameter ControlID="doc" DbType="Decimal" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="hos" DbType="Decimal" PropertyName="SelectedValue" />
            </FilterParameters>
            <InsertParameters>
                <asp:Parameter Name="doc_id" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="hos_id" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="hos_area" Type="String"></asp:Parameter>
                <asp:Parameter Name="doc_department" Type="String"></asp:Parameter>
                <asp:Parameter Name="doc_hos_fees" Type="Double"></asp:Parameter>
                <asp:Parameter Name="hos_open_time1" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_close_time1" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_open_time2" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_close_time2" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_open_time3" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_close_time3" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_monday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_tuesday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_wednesday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_thursday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_friday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_saturday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_sunday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_active" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_Comments" Type="String"></asp:Parameter>
                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="doc" PropertyName="SelectedValue" Name="doc_id" Type="Decimal"></asp:ControlParameter>
                <asp:ControlParameter ControlID="hos" PropertyName="SelectedValue" Name="hos_id" Type="Decimal"></asp:ControlParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="doc_id" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="hos_id" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="hos_area" Type="String"></asp:Parameter>
                <asp:Parameter Name="doc_department" Type="String"></asp:Parameter>
                <asp:Parameter Name="doc_hos_fees" Type="Double"></asp:Parameter>
                <asp:Parameter Name="hos_open_time1" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_close_time1" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_open_time2" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_close_time2" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_open_time3" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_close_time3" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_monday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_tuesday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_wednesday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_thursday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_friday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_saturday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_sunday" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_active" Type="String"></asp:Parameter>
                <asp:Parameter Name="hos_Comments" Type="String"></asp:Parameter>
                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
