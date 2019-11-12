<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteuser.aspx.cs" Inherits="deleteuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete User</title>
        <style type="text/css">
        .style1{
            width:1024px;
        }
        .style2{
            font-family:Verdana;
            font-size:xx-large;
            font-weight:bold;
            color:#000099;
            text-align:center;
            padding:0;
        }
        .style3{
            font-size:large;
            font-weight:bold;
            color:#FFFFFF;
            font-family:"Comic Sans MS";
        }
        .style4{
            width:100%;
        }
        .style5{
            text-align:center;
        }
        .style12{
            text-align:center;
            width:166px;
            font-family:Tahoma;
        }

        .style15{
            text-align:center;
            width:165px;
            color:#FFFFFF;
            text-decoration:underline;
        }
        .styleText {
            font-family:Tahoma;
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
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="styleText style5">
                    <asp:DropDownList ID="userlist" runat="server" Height="22px" Width="200px" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="styleText style5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-J1EFRCC;Initial Catalog=OnlneExamSystem;Integrated Security=True"
                        SelectCommand="Select [username] from [login] where ([type] = @type)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="userlist" DefaultValue="user" Name="type" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align:center" class="styleText">
                    <asp:Button ID="duser" runat="server" Text="Delete User" Width="200px" style="font-weight:700" onclick="duser_click" />
                </td>
            </tr>

            <tr>
                <td class="styleText style5">
                    <asp:Label ID="msg" runat="server"></asp:Label>
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
