<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VALIDATION_FORM.aspx.cs" Inherits="VALIDATION_CONTROLS.VALIDATION_FORM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 39px;
        }
        .auto-style4 {
            height: 39px;
            width: 287px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>STUDENTS REGISTRATION FORM</h2>
        </div>
        <div>
        </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Silver" Font-Size="Large" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">STUDENT NAME</td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Width="375px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Please Enter Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">STUDENT EMAIL</td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Width="372px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Email is Invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">RE-ENTER EMAIL</td>
                    <td>
                        <asp:TextBox ID="ReEnterEmailTextBox" runat="server" Width="370px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ReEnterEmailTextBox" Display="Dynamic" ErrorMessage="Please Re-Enter Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailTextBox" ControlToValidate="ReEnterEmailTextBox" Display="Dynamic" ErrorMessage="Email is not identical" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">CLASS</td>
                    <td>
                        <asp:TextBox ID="ClassTextBox" runat="server" Width="369px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ClassTextBox" Display="Dynamic" ErrorMessage="Please Enter Class" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ClassTextBox" Display="Dynamic" ErrorMessage="Class Should be from 1 to 12" ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">FEES</td>
                    <td>
                        <asp:TextBox ID="FeesTextBox" runat="server" Width="373px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FeesTextBox" Display="Dynamic" ErrorMessage="Please Enter Fees" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="FeesTextBox" Display="Dynamic" ErrorMessage="Fees Should be from 2000.00 to 5000.00" ForeColor="Red" MaximumValue="5000" MinimumValue="2000" SetFocusOnError="True" Type="Double">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">GENDER</td>
                    <td>
                        <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="GenderGroup" Text="Male" />
                        <asp:RadioButton ID="FemaleRadioButton" runat="server" GroupName="GenderGroup" Text="Female" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Please select a gender" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Height="42px" Text="SUBMIT" Width="109px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
