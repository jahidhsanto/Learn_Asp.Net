<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Query_String.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
        .auto-style3 {
            width: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style3">STUDENT ID</td>
                    <td>
                        <asp:TextBox ID="IdTextBox" runat="server" Width="202px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">STUDENT NAME</td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Width="202px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">STUDENT AGE</td>
                    <td>
                        <asp:TextBox ID="AgeTextBox" runat="server" Width="202px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="SendButton" runat="server" Height="40px" OnClick="SendButton_Click" Text="SEND" Width="83px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
