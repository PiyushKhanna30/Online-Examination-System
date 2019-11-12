<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editqpaper.aspx.cs" Inherits="editqpaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Question Paper</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <style type="text/css">
        .style16{
            width:250px;
        }
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
    <div>
        <table align="center" class="style1">
            <tr>
                <td class="style2">Online Examination System</td>
            </tr>
            <tr>
                <td bgcolor="#3333FF">
                </td>
            </tr>
            <tr>
                    <td bgcolor="#99CCFF" style="color:#000099; font-size:medium; font-weight:700">
                    <table align="center" class="style4">
                        <tr>
                            <td class="style12">
                                <a href="adduser.aspx">Add User</a>
                            </td>
                            <td class="style12">
                                <a href="deleteuser.aspx">Delete User</a>
                            </td>
                            <td class="style12">
                                <a href="setqpaper.aspx">Set Q Paper</a>
                            </td>
                            <td class="style12">
                                <a href="paperview.aspx">Preview Q Paper</a>
                            </td>
                            <td class="style12">
                                <a href="deleteqpaper.aspx">Delete Q Paper</a>
                            </td>
                            <td class="style12">
                                <a href="reports.aspx">View Report</a>
                            </td>
                            <td class="style12">
                                <a href="adminlogout.aspx">Logout</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="styleText">
                    <asp:TextBox ID="question" runat="server" Height="50px" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="styleText">
                    <asp:TextBox ID="opt1" runat="server" Width="600px"></asp:TextBox>
                    <asp:RadioButton ID="radiobutton1" runat="server" GroupName="opt"></asp:RadioButton>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="styleText">
                    <asp:TextBox ID="opt2" runat="server" Width="600px"></asp:TextBox>
                    <asp:RadioButton ID="radiobutton2" runat="server" GroupName="opt"></asp:RadioButton>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="styleText">
                    <asp:TextBox ID="opt3" runat="server" Width="600px"></asp:TextBox>
                    <asp:RadioButton ID="radiobutton3" runat="server" GroupName="opt"></asp:RadioButton>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="styleText">
                    <asp:TextBox ID="opt4" runat="server" Width="600px" AutoPostBAck="True"></asp:TextBox>
                    <asp:RadioButton ID="radiobutton4" runat="server" GroupName="opt"></asp:RadioButton>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table align="center" class="style4">
                        <tr>
                            <td class="style16 styleText">
                                <asp:Button ID="update" runat="server" Font-Bold="True" Text="Update" OnClick="Button1_Click"></asp:Button>
                            </td>
                            <td class="style16 styleText">
                                <asp:Button ID="delete" runat="server" Font-Bold="True" Text="Delete" OnClick="Button2_Click"></asp:Button>
                                &nbsp;
                            </td>
                            <td class="style16 styleText">
                                <asp:Button ID="viewpaper" runat="server" Font-Bold="True" Text="View Paper" OnClick="Button3_Click"></asp:Button>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
           <tr>
                <td bgcolor="#3333FF">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td bgcolor="#666666" style="text-align:center">
                    <span class="style3">Designed by :- Sahil Mehra</span>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
