<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="View_State.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 364px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style2">USERNAME</td>
                    <td>
                        <asp:TextBox ID="UserTextBox" runat="server" Width="252px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">PASSWORD</td>
                    <td>
                        <asp:TextBox ID="PassTextBox" runat="server" Width="248px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="SubmitButton" runat="server" Height="39px" OnClick="SubmitButton_Click" Text="SUBMIT" Width="86px" />
                        <asp:Button ID="RestoreButton" runat="server" Height="39px" OnClick="RestoreButton_Click" Text="RESTORE" Width="86px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
