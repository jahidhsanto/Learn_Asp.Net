<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REGISTER.aspx.cs" Inherits="LOGIN_FORM_ASP.REGISTER" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 481px;
            margin: auto;
            border: ridge 5px black;
        }
        .auto-style2 {
            text-align: center;
            font-size: 30px;
        }
        .auto-style3 {
            width: 142px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">SIGNUP FORM</td>
                </tr>
                <tr>
                    <td class="auto-style3">FIRST NAME</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="FirstNameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">LAST NAME</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="LastNameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">GENDER</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="GenderDropDownList" runat="server" Height="43px" Width="164px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="Select" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please Select a Gender" ForeColor="Red" SetFocusOnError="True" ControlToValidate="GenderDropDownList">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">EMAIL</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please Enter email" ForeColor="Red" SetFocusOnError="True" ControlToValidate="EmailTextBox">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">ADDRESS</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Please Enter Address" ForeColor="Red" SetFocusOnError="True" ControlToValidate="AddressTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">USERNAME</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Please Enter UserName" ForeColor="Red" SetFocusOnError="True" ControlToValidate="UsernameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">PASSWORD</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="PasswordTextBox">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Please Enter a Strong Password" ForeColor="Red" SetFocusOnError="True" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">CONFIRM PASSWORD</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ConfirmPasswordTextBox">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" Display="Dynamic" ErrorMessage="Password is not identical" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Height="41px" Text="SINGUP" Width="80px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <a href="LOGIN.aspx">GO TO LOGIN FORM</a>
                        </td>
                </tr>
            </table>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCCCCC" Font-Size="Larger" ForeColor="Red" />
        
        </div>
    </form>
</body>
</html>
