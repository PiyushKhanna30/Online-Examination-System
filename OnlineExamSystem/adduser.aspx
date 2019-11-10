<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adduser.aspx.cs" Inherits="adduser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add User</title>
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
            font-family:"Monotype Corsiva"
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
            width:165px;
        }
        .style15{
            width:650px;
        }
        .style16{
            width:27px;
        }
        .style17
        {
            width:576px;
            font-weight:700;
        }
        .style18{
            width:99px;
        }
        .style19{
            width:25px;
        }
        .style20{
            text-align:center;
            width:165px;
            color:#FFFFFF;
            text-decoration:underline;
        }
    </style>
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
                <td bgcolor="#99CCFF" style="color:#000099; font-size:medium; font-weight:700">
                    <table align="center" class="style4">
                        <tr>
                            <td class="style20">
                                <a href="adduser.aspx">Add User</a>
                            </td>
                            <td class="style12">
                                <a href="deleteuser.aspx">Delete User</a>
                            </td>
                            <td class="style12">
                                <a href="setqpaper.aspx">Set Q Paper</a>
                            </td>
                            <td class="style14">
                                <a href="paperview.aspx">Perview Q Paper</a>
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
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" class="style15">
                        <tr>
                            <td class="style16">&nbsp;</td>
                            <td class="style17">
                                <table align="center" class="style4">
                                    <tr>
                                        <td colspan="3">
                                            Register a student here:
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Username</td>
                                        <td>:</td>
                                        <td>
                                            <asp:TextBox ID="name" runat="server" width="200px"></asp:TextBox>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Password</td>
                                        <td>:</td>
                                        <td>
                                            <asp:TextBox ID="pass" runat="server" width="200px"></asp:TextBox>
                                            
                                        </td>
                                    </tr>
                                    </table>
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
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">&nbsp;</td>
                <td>
                    <asp:Button ID="create" runat="server" Text="Create" height="28px" width="95px" Font-Bold="true" BackColor="Black" ForeColor="Yellow" OnClick="submit_Click"/>
                </td>
            </tr>
            <tr>
                <td class="style2">&nbsp;</td>
                <td><asp:Label runat="server" ID="mssg" EnableTheming="False"></asp:Label></td>
            </tr>
            <tr>
                <td bgcolor="#666666" class="auto-style3" style="text-align:"center" colspan="2">
                    <span class="style3">Designed by :- Sahil Mehra</span>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
