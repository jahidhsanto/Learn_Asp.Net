<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="User_Authentication.UserManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>User Management</h2>

    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

    <!-- Create User Form -->
    <h3>Create New User</h3>
    <table>
        <tr><td>Username:</td><td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td></tr>
        <tr><td>Password:</td><td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td></tr>
        <tr>
            <td>Role:</td>
            <td>
                <asp:DropDownList ID="ddlRole" runat="server">
                    <asp:ListItem Value="Admin">Admin</asp:ListItem>
                    <asp:ListItem Value="Employee">Employee</asp:ListItem>
                    <asp:ListItem Value="Manager">Manager</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr><td>Employee ID:</td><td><asp:TextBox ID="txtEmployeeID" runat="server"></asp:TextBox></td></tr>
        <tr><td colspan="2"><asp:Button ID="btnCreateUser" runat="server" Text="Create User" OnClick="btnCreateUser_Click" /></td></tr>
    </table>

    <hr />

    <!-- Update Role Form -->
    <h3>Update User Role</h3>
    <table>
        <tr><td>Username:</td><td><asp:TextBox ID="txtUpdateUsername" runat="server"></asp:TextBox></td></tr>
        <tr>
            <td>New Role:</td>
            <td>
                <asp:DropDownList ID="ddlNewRole" runat="server">
                    <asp:ListItem Value="Admin">Admin</asp:ListItem>
                    <asp:ListItem Value="Employee">Employee</asp:ListItem>
                    <asp:ListItem Value="Manager">Manager</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr><td colspan="2"><asp:Button ID="btnUpdateRole" runat="server" Text="Update Role" OnClick="btnUpdateRole_Click" /></td></tr>
    </table>

    <hr />

    <!-- Delete User Form -->
    <h3>Delete User</h3>
    <table>
        <tr><td>Username:</td><td><asp:TextBox ID="txtDeleteUsername" runat="server"></asp:TextBox></td></tr>
        <tr><td colspan="2"><asp:Button ID="btnDeleteUser" runat="server" Text="Delete User" OnClick="btnDeleteUser_Click" /></td></tr>
    </table>

    <hr />

    <!-- User List Table -->
    <h3>All Users</h3>
    <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Username" />
            <asp:BoundField DataField="Role" HeaderText="Role" />
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee ID" />
        </Columns>
    </asp:GridView>
</asp:Content>
