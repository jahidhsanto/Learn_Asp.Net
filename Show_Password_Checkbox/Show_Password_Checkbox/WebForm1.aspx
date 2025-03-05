<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Show_Password_Checkbox.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 263px;
        }
    </style>

    <script type="text/javascript">
        function ShowPassword(checkBox) {
            var PasswordTextBox = document.getElementById('TextBox1');
            if (checkBox.checked == true) {
                PasswordTextBox.setAttribute("type", "text");
            } else {
                PasswordTextBox.setAttribute("type", "password");
            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style2">PASSWORD</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="178px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <%--<td><input type="checkbox" onchange="document.getElementById('TextBox1').type = this.checked ? 'text' : 'password'" /> Show Password</td>--%>
                    <td><input type="checkbox" onclick="ShowPassword(this)"/>Show Password</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
