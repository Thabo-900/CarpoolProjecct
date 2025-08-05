<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Projectx.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 53%;
            height: 224px;
            margin-top: 61px;
            background-color: #99CCFF;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            width: 159px;
        }
        .auto-style7 {
            width: 159px;
        }
        .auto-style9 {
            height: 29px;
        }
        .auto-style10 {
            width: 159px;
            height: 29px;
        }
        .auto-style11 {
            height: 26px;
            width: 202px;
        }
        .auto-style12 {
            width: 202px;
        }
        .auto-style13 {
            height: 29px;
            width: 202px;
        }
        .auto-style14 {
            height: 16px;
            width: 202px;
        }
        .auto-style15 {
            height: 16px;
            width: 159px;
        }
        .auto-style16 {
            height: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3" style="text-align: center;" class="auto-style24">Registration Form&nbsp; </td>
                 </tr>
                <tr>
                    <td class="auto-style11">Username</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="fill correct username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Email</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Incorrect Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Password</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password incorrect" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Mobile</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter correct mobile" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Gender</td>
                    <td class="auto-style7">
                       <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="Gender" />
                       <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="Gender" />

                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 79px" Text="Submit" Width="195px" />
                    </td>
                    <td class="auto-style16"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
