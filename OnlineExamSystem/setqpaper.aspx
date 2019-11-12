<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setqpaper.aspx.cs" Inherits="setqpaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Set Question Paper</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" class="style1">
            <tr>
                <td class="style2">Online Examination System</td>
            </tr>
            <tr>
                <td bgcolor="#3333FF">&nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#99CCFF" style="color=#000099"; font-size:medium; font-weight:700">
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
                            <td class="style14">
                                <a href="paperview.aspx">Preview Q Paper</a>
                            </td>
                            <td class="style14">
                                <a href="deleteqpaper.aspx">Delete Q Paper</a>
                            </td>
                            <td class="style14">
                                <a href="reports.aspx">View Report</a>
                            </td>
                            <td class="style5">
                                <a href="adminlogout.aspx">Logout</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="testlist" runat="server" height="20px" width="150px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype"></asp:DropDownList>
                    <asp:TextBox ID="testname" runat="server" Visible="False"></asp:TextBox>
                    <asp:Button ID="ntest" runat="server" Font-Bold="True" Text="New Test" Width="88px" onclick="ntest_click"></asp:Button>
                    <asp:Label ID="msg1" runat="server" ForeColor="Blue"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-J1EFRCC;Initial Catalog=OnlneExamSystem;Integrated Security=True"
                        SelectCommand="select distinct [settype] from [question] order by [settype]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="question" runat="server" height="50px" width="600px" Font-Bold="True"></asp:TextBox>
                    <asp:Label ID="msg2" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="opt1" runat="server" width="600px" Font-Bold="True"></asp:TextBox>
                    <asp:RadioButton ID="radiobutton1" runat="server" Checked="True" GroupName="opt"></asp:RadioButton>
                    <asp:Label ID="msg3" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="opt2" runat="server" width="600px" Font-Bold="True"></asp:TextBox>
                    <asp:RadioButton ID="radiobutton2" runat="server" GroupName="opt"></asp:RadioButton>
                    <asp:Label ID="msg4" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="opt3" runat="server" width="600px" Font-Bold="True"></asp:TextBox>
                    <asp:RadioButton ID="radiobutton3" runat="server" GroupName="opt"></asp:RadioButton>
                    <asp:Label ID="msg5" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="opt4" runat="server" width="600px" Font-Bold="True"></asp:TextBox>
                    <asp:RadioButton ID="radiobutton4" runat="server" GroupName="opt"></asp:RadioButton>
                    <asp:Label ID="msg6" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="msg7" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" class="style4">
                        <tr>
                            <td class="style16">
                                <asp:Button ID="submit" runat="server" Font-Bold="True" Text="Add Question" OnClick="Button2_Click"></asp:Button>
                            </td>
                            <td>
                                <asp:Button ID="paperview" runat="server" Font-Bold="True" Text="View Paper" OnClick="paperview_Click"></asp:Button>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
