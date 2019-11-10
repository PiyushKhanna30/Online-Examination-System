<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
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
        .style3
        {
            font-size:large;
            font-weight:bold;
            color:#FFFFFF;
            font-family:"Monotype Corsiva";
        }
        .style4
        {
            width:100%;
        }
        .style5{
            text-align:center;
        }
        .style12
        {
            text-align:center;
            width:165px;
        }
        .style14{
            text-align:center;
            width:166px;
        }
        .style15{
            border-width:0px;
            width:300px;
            height:60px:
        }
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
    <div>
        <table align="center" class="style1">
            <tr>
                <td class="style2">Online Exam</td>
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
                    <table align="center" class="style4">
                        <tr>
                            <td bgcolor="#0066FF">
                                &nbsp;
                            </td>
                            <td style="text-align:center">
                                <table align="center" class="style4">
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href="adduser.aspx">Add User</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href="deleteuser.aspx">Delete User</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href="setqpaper.aspx">Set Question Paper</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href="paperview.aspx">Paper View</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href="deleteqpaper.aspx">Delete Q Paper</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href="reports.aspx">View  Report</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href="adminlogout.aspx">Admin Logout</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td bgcolor="#0066FF">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
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
