<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reports.aspx.cs" Inherits="reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <style type="text/css"> 
        .style20{
            width:167px;
            text-align:center;
        }
        .style21{
            width:254px;
            text-align:center;
        }
        .style22{
            width:200px;
            text-align:center;
        }
    </style>
</head>
<body  bgcolor="#cccccc">
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
                <td class="styleText" bgcolor="#0066FF">
                    <table align="center" class="style4">
                        <tr>
                            <td class="style22">User</td>
                            <td class="style22">Date</td>
                            <td class="style21">Test Name</td>
                            <td class="style20">Marks</td>
                            <td class="style5">Total Marks</td>
                        </tr>
                        <%
                            while(dr.Read())
                            {
                                %>
                        <tr>
                            <td bgcolor="#FFFFCC" class="stryle22">
                                <%=dr.GetValue(0) %>
                            </td>
                            <td bgcolor="#FFFFCC" class="stryle22">
                                <%=dr.GetValue(1) %>
                            </td>
                            <td bgcolor="#FFFFCC" class="stryle21">
                                <%=dr.GetValue(2) %>
                            </td>
                            <td bgcolor="#FFFFCC" class="stryle20">
                                <%=dr.GetValue(3) %>
                            </td>
                            <td bgcolor="#FFFFCC" class="stryle5">
                                <%=dr.GetValue(4) %>
                            </td>
                        </tr>
                        <% 
                            }
                            con.Close();
                            %>
                             
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#3333FF">&nbsp;</td>
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
