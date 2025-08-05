<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="Projectx.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 68%;
            background-color: #99CCFF;
            height: 277px;
        }
        .auto-style15 {
            width: 30%;
            height: 23px;
        }
        .auto-style16 {
            width: 97px;
            height: 23px;
        }
        .auto-style17 {
            width: 18%;
            height: 23px;
        }
        .auto-style18 {
            width: 30%;
            height: 30px;
        }
        .auto-style19 {
            width: 97px;
            height: 30px;
        }
        .auto-style20 {
            width: 18%;
            height: 30px;
        }
        .auto-style24 {
            height: 13px;
        }
        .auto-style25 {
            width: 30%;
            height: 4px;
        }
        .auto-style26 {
            width: 97px;
            height: 4px;
        }
        .auto-style27 {
            width: 18%;
            height: 4px;
        }
        .auto-style28 {
            width: 30%;
            height: 19px;
        }
        .auto-style29 {
            width: 97px;
            height: 19px;
        }
        .auto-style30 {
            width: 18%;
            height: 19px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3" style="text-align: center;" class="auto-style24">CU Carpool</td>

                </tr>
                <tr>
                    <td class="auto-style15">Username</td>
                    <td class="auto-style16">
                       <asp:TextBox ID="TextBox2" runat="server" Placeholder="Username"></asp:TextBox><br /><br />
                    </td>
                    <td class="auto-style17">&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="username required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">Password</td>
                    <td class="auto-style29">
                      <asp:TextBox ID="TextBox1" runat="server" Placeholder="Password"></asp:TextBox><br /><br />
                    </td>
                    <td class="auto-style30">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Incorrect password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />
                    </td>
                    <td class="auto-style18"></td>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td class="auto-style18">
                           <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                      Text="Login" Width="143px"
                     Style="margin-left: 216px; padding:10px 20px; background-color:#007bff; color:white; border:none; border-radius:5px;" />
                    </td>
                    <td class="auto-style19">
                     <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="Registration.aspx"
                    Style="display:inline-block; padding:10px 20px; background-color:#007bff; color:white; text-decoration:none; border:none; border-radius:5px;">
                    Register
                    </asp:HyperLink>


                    </td>
                    <td class="auto-style20"></td>
                </tr>
            </table>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>

