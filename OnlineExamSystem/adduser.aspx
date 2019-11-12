<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adduser.aspx.cs" Inherits="adduser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add User</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <style type="text/css">
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
        .auto-style1 {
            text-align: center;
            padding: 0;
            width: 914px;
        }
        
        .auto-style2 {
            font-family: Tahoma;
            height: 23px;
            color:black;
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
                <td bgcolor="#3333FF" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#99CCFF" style="color:#000099; font-size:medium; font-weight:700" >
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
                                <a href="paperview.aspx">Perview Q Paper</a>
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
                <td class="auto-style2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <table align="center" class="style15">
                        <tr>
                            <td class="style16">&nbsp;</td>
                            <td class="style17">
                                <table align="center" class="style4">
                                    <tr>
                                        <td class="auto-style2" colspan="3">
                                            Register a student here:
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="styleText" style = "color:black" >Username</td>
                                        <td>:</td>
                                        <td style = "color:black" class="styleText">
                                            <asp:TextBox ID="name" runat="server" width="200px"></asp:TextBox>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style = "color:black" class="styleText">Password</td>
                                        <td>:</td>
                                        <td style = "color:black" class="styleText">
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
                <td class="auto-style2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1 styleText">
                    <asp:Button ID="create" runat="server" Text="Create" height="28px" width="95px" Font-Bold="true" BackColor="Black" ForeColor="Yellow" OnClick="submit_Click" style="margin-left: 0px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style1 styleText "><asp:Label runat="server" ID="mssg" EnableTheming="False"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
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
