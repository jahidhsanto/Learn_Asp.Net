<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="User_Authentication.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Create New User</h2>
    
    <label>Username:</label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br /><br />
    
    <label>Password:</label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br /><br />
    
    <label>Role:</label>
    <asp:DropDownList ID="ddlRole" runat="server">
        <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
        <asp:ListItem Text="Employee" Value="Employee"></asp:ListItem>
        <asp:ListItem Text="Manager" Value="Manager"></asp:ListItem>
    </asp:DropDownList><br /><br />
    
    <label>Employee ID:</label>
    <asp:TextBox ID="txtEmployeeID" runat="server"></asp:TextBox><br /><br />
    
    <asp:Button ID="btnCreateUser" runat="server" Text="Create User" OnClick="btnCreateUser_Click" /><br /><br />
    
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

</asp:Content>
