<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteqpaper.aspx.cs" Inherits="deleteqpaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Paper</title>
    <style type="text/css">
        .style1{
            width:1024px;
        }
        .style2{
            font-family:"Monotype Corsiva";
            font-size:xx-large;
            font-weight:bold;
            color:#3399FF;
            text-align:center;
            padding:0;
        }
        .style3{
            font-size:large;
            font-weight:bold;
            color:#FFFFFF;
            font-family:"Monotype Corsiva";
        }
        .style4{
            width:100%;
        }
        .style5{
            text-align:center;
        }
        .style12{
            text-align:center;
            width:165px;
        }
        .style14{
            text-align:center;
            width:166px;
        }
        .style15{
            text-align:center;
            width:165px;
            color:#FFFFFF;
            text-decoration:underline;
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
                <td class="style5">
                    <asp:DropDownList ID="testlist" runat="server" Height="20px" width="201px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-J1EFRCC;Initial Catalog=OnlneExamSystem;Integrated Security=True"
                        SelectCommand="select distinct [settype] from [question] order by [settype]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Button ID="dqpaper" runat="server" Font-Bold="True" Text="Delete Test" Width="200px" onclick="dqpaper_Click"></asp:Button>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="msg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#33333FF">&nbsp;</td>
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
