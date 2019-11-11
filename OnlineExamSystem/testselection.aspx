<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testselection.aspx.cs" Inherits="testselection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test Selection</title>
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
        .style9{
            width:100%;
        }
        .style10{
            width:280px;
        }
        .style11{
            width:448px;
        }
        .style12{
            color:#FFFFFF;
            font-weight:bold;
            padding:0;
        }
        .style13{
            font-size:large;
            color:#FFFFFF;
            font-weight:bold;
            padding:0;
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
                <td>
                    <table align="center" class="style1">
                        <tr>
                            <td bgcolor="#3399FF">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <b><a href="logout.aspx">Logout</a></b>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <table align="center" class="style9">
                                    <tr>
                                        <td class="style10">&nbsp;</td>
                                        <td bgcolor="#66CCFF" class="style11">
                                            <table align="center" class="style9">
                                                <tr>
                                                    <td class="style12">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style13">Select a Test</td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:DropDownList ID="testlist" runat="server" height="22px" width="200px" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype"></asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="submit" runat="server" Text="Submit" Width="200px" OnClick="Button1_Click" Style="font-weight:700"></asp:Button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                             <td>&nbsp;</td>
                        </tr>
                        <tr>
                             <td>&nbsp;</td>
                        </tr>
                        <tr>
                              <td bgcolor="#3399FF">&nbsp;</td>
                        </tr>
                    </table>
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
