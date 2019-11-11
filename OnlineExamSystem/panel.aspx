<%@ Page Language="C#" AutoEventWireup="true" CodeFile="panel.aspx.cs" Inherits="panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Start Exam</title>
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
            text-align:center;
        }
        .style5{
            width:650px;
        }
        .style6{
            width:30px;
        }
        .style7{
            width:585px;
        }
        .style8{
            width:100%;
        }
        .style9{
            width:134px;
        }
        .style10{
            width:161px;
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#999999">
                    <b><a href="logout.aspx">Logout</a></b>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Label" ID="time"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label Id="msg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC00"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <table align="center" bgcolor="#3399FF" class="style5">
                        <tr>
                            <td class="style6">&nbsp;</td>
                            <td bgcolor="#FFFFCC" class="style7">
                                <%con.Open();
                                  rqry = "select * from question where settype='" + testtype + "' order by qid";
                                  rcmd = new System.Data.SqlClient.SqlCommand(rqry, rcmd);
                                  rdr = rcmd.ExecuteReader();
                                  c=1;
                                  while(rdr.Read())
                                  {
                                      if(c!=count)
                                      {
                                          c = c + 1;
                                      }
                                      else if(c==count)
                                      {
                                          %><%int q=Convert.ToInt16(rdr.GetValue(0));
                                          qid=q; %>
                                <table align="center" class="style8">
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Q:-<%=count%><%=rdr.GetValue(1)%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="radiobutton1" runat="server" Checked="True" GroupName="opt"></asp:RadioButton>
                                            <%=rdr.GetValue(3) %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="radiobutton2" runat="server" GroupName="opt"></asp:RadioButton>
                                            <%=rdr.GetValue(4) %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="radiobutton3" runat="server" GroupName="opt"></asp:RadioButton>
                                            <%=rdr.GetValue(5) %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="radiobutton4" runat="server" GroupName="opt"></asp:RadioButton>
                                            <%=rdr.GetValue(6) %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table align="center" class="style8">
                                                <tr>
                                                    <td class="style9">
                                                        <asp:Button ID="back" runat="server" Text="Back" Height="20px" width="100px" OnClick="back_Click"></asp:Button>
                                                    </td>
                                                    <td class="style10">
                                                        <asp:Button ID="next" runat="server" Text="Next" Height="20px" width="100px" OnClick="next_Click"></asp:Button>
                                                    </td>
                                                  <td>
                                                        <asp:Button ID="finish" runat="server" Text="Finish" Height="20px" width="100px" OnClick="finish_Click"></asp:Button>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <%if(count!=n)
                                      c=c+1;
                                      
                                      }
                                  } const.Close(); %>
                                       
                            </td>
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
