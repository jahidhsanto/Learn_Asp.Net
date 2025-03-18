<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="User_Authentication.ResetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Reset User Password</h2>
        
    <label>Admin Username:</label>
    <asp:Label ID="lblAdminUsername" runat="server" Text=""></asp:Label><br /><br />

    <label>Username (User to Reset):</label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br /><br />

    <label>New Password:</label>
    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox><br /><br />

    <asp:Button ID="btnReset" runat="server" Text="Reset Password" OnClick="btnReset_Click" /><br /><br />

    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>
