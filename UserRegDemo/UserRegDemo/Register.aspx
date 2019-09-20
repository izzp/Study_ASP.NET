<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="UserRegDemo.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="2" cellspacing="0" class="auto-style1">
            <tr>
                <td>【用户注册】</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>用户名:</td>
                <td>
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="reqtxtUname" runat="server" ControlToValidate="txtUname" ErrorMessage="必须填写用户名">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>密码:</td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="reqtxtPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="必须填写密码">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>确认密码:</td>
                <td>
                    <asp:TextBox ID="txtRePwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="reqtxtPwd0" runat="server" ControlToValidate="txtRePwd" ErrorMessage="必须填写确认密码">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="comPwd" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtRePwd" Display="Dynamic" ErrorMessage="确认密码与密码不同">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>姓名:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="reqtxtName" runat="server" ControlToValidate="txtName" ErrorMessage="必须填写姓名">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>性别:</td>
                <td>
                    <asp:RadioButtonList ID="radioSex" runat="server" Width="140px">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>年龄:</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="reqtxtAge" runat="server" ControlToValidate="txtAge" ErrorMessage="必须填写有效的年龄" MaximumValue="100" MinimumValue="1" Type="Integer">*（1~100）</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="regtxtEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="必须填写有效的E-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">例:i@mezzp.com</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">QQ:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtQQ" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RegularExpressionValidator ID="regtxtQQ" runat="server" ControlToValidate="txtQQ" ErrorMessage="必须填写有效的QQ" ValidationExpression="\d{5,12}">例:12345</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="注册" />
                    <input id="Reset1" type="reset" value="重置" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="valError" runat="server" ShowMessageBox="True" ShowSummary="False" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
