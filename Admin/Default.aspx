<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="id">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="role_id" HeaderText="role_id" SortExpression="role_id"></asp:BoundField>
                    <asp:BoundField DataField="role_name" HeaderText="role_name" SortExpression="role_name"></asp:BoundField>
                    <asp:BoundField DataField="menu_id" HeaderText="menu_id" SortExpression="menu_id"></asp:BoundField>
                    <asp:BoundField DataField="menu_name" HeaderText="menu_name" SortExpression="menu_name"></asp:BoundField>
                    <asp:BoundField DataField="menu_url" HeaderText="menu_url" SortExpression="menu_url"></asp:BoundField>
                    <asp:BoundField DataField="menu_allowed" HeaderText="menu_allowed" SortExpression="menu_allowed"></asp:BoundField>
                    <asp:BoundField DataField="className" HeaderText="className" SortExpression="className"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Data_stu6ConnectionString %>' SelectCommand="SELECT * FROM [Assign_Role]"></asp:SqlDataSource>
        </div>
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
    </form>
</body>
</html>
