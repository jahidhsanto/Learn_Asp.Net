<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="LOGIN_FORM_ASP.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-size: 30px;
        }

        table{
            margin: auto;
            width: 513px;
            border: 5px black ridge;
        }
        .auto-style3 {
            text-align: center;
            font-size: 30px;
            height: 46px;
        }
        .auto-style4 {
            height: 46px;
        }
        .link{
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td class="auto-style2" colspan="2">LOGIN</td>
                </tr>
                <tr>
                    <td>USERNAME</td>
                    <td>
                        <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserTextBox" Display="Dynamic" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>PASSWORD</td>
                    <td>
                        <asp:TextBox ID="PassTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PassTextBox" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Button ID="LoginButton" runat="server" Text="LOGIN" OnClick="LoginButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="link" colspan="2">
                        <a href="REGISTER.aspx">Not Registered Yet? Click Here</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
