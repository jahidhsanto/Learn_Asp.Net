﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MY_FIRST_PROJECT.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CLICK" />
            <asp:Label ID="Label1" runat="server" Text="Label1" Visible="False"></asp:Label>

        </div>
    </form>
</body>
</html>
