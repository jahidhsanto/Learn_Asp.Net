<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="User_Authentication.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h2>Welcome, <asp:Label ID="lblUsername" runat="server" Text="User"></asp:Label></h2>
        <p>Your Role: <asp:Label ID="lblRole" runat="server" Text=""></asp:Label></p>
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
</asp:Content>
