<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paperview.aspx.cs" Inherits="paperview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paper View</title>
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
        .style16{
            text-align:center;
            font-family:"Monotype Corsiva";
            font-size:medium;
            font-weight:bold;
            color:#0000FF;
        }
        .style17{
            width:36px;
        }
        .style19{
            width:623px;
        }
        .style20{
            width:214px;
        }
        .style21{
            width:61px;
        }
        .style22{
            width:173px;
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
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style16">
                    Select a question Per to preview
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text0align:center">
                    &nbsp;<asp:DropDownList ID="testlist" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype" Height="24px" Width="170px"
                        onselectedindexchanged="testlist_SelectedIndexChanged"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-J1EFRCC;Initial Catalog=OnlneExamSystem;Integrated Security=True"
                        SelectCommand="Select distinct [settype] from [question] order by [settype]"></asp:SqlDataSource>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" class="style4">
                        <tr>
                            <td>&nbsp;</td>
                            <td bgcolor="#0066FF">
                                <table align="center" class="style4">
                                    <tr>
                                        <td class="style17">QID</td>
                                        <td class="style19">Question</td>
                                        <td class="style20">Choices</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <%
                                        while(dr.Read())
                                        {%><%ans=Convert.ToInt16(dr.GetValue(7)); %>
                                         <%if (ans==1)
                                           {
                                             CheckBox1.Checked=true; 
                                             CheckBox2.Checked=false;
                                             CheckBox3.Checked=false;
                                             CheckBox4.Checked=false;
                                           }%>
                                           <%
                                               if(ans==2)
                                               {
                                                   CheckBox1.Checked=false; 
                                                   CheckBox2.Checked=true;
                                                   CheckBox3.Checked=false;
                                                   CheckBox4.Checked=false;
                                               }%>
                                            <%
                                               if(ans==3)
                                               {
                                                   CheckBox1.Checked=false; 
                                                   CheckBox2.Checked=false;
                                                   CheckBox3.Checked=true;
                                                   CheckBox4.Checked=false;
                                               }%>
                                            <%
                                               if(ans==4)
                                               {
                                                   CheckBox1.Checked=false; 
                                                   CheckBox2.Checked=false;
                                                   CheckBox3.Checked=false;
                                                   CheckBox4.Checked=true;
                                               }%>
                                    <tr>
                                        <td bgcolor="White" class="style17">
                                            <%=dr.GetValue(0) %>
                                        </td>
                                        <td bgcolor="White" class="style19">
                                            <%=dr.GetValue(1) %>
                                        </td>
                                        <td bgcolor="White" class="style20">
                                            <table align="center" class="style4">
                                                <tr>
                                                    <td class="style22">
                                                        <%=dr.GetValue(3) %>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style22">
                                                        <%=dr.GetValue(4) %>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style22">
                                                        <%=dr.GetValue(5) %>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="CheckBox3" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style22">
                                                        <%=dr.GetValue(6) %>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="CheckBox4" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td bgcolor="White"><a href="editqpaper.aspx?settype=<%Response.Write(dr.GetValue(2));%>&qid=<%Response.Write(dr.GetValue(0));%>"><b>Edit <br>or<br> Delete</b></a></td>
                                    </tr><% } %>
                                     <tr>
                                         <td bgcolor="White" colspan="4">
                                             <table align="center" class="style4">
                                                 <tr>
                                                     <td class="style21">&nbsp;</td>
                                                     <td>
                                                         <asp:Button ID="button1" runat="server" Font-bold="True" Text="Add Question" Width="200px" onclick="Button1_click"></asp:Button>
                                                     </td>
                                                 </tr>
                                             </table>
                                         </td>
                                     </tr>             
                                </table>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
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
