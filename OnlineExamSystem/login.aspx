<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
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
        .styleText {
            font-family:Tahoma;
        }
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" >
            <tr>
                <td class="style2" colspan="2">Online Examination System 
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#3333FF" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td colspan="2" class="styleText" style="text-align:center; font-weight:700">Username:<asp:TextBox runat="server" ID="name"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td colspan="2" class="styleText" style="text-align:center;font-weight:700">Password:<asp:TextBox runat="server" ID="TextBox1"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td colspan="2" class="styleText" style="text-align:center;font-weight:700">
                    <asp:Button ID="submit" runat="server" Text="Login" height="28px" width="95px" Font-Bold="true" BackColor="Black" ForeColor="Yellow" OnClick="submit_Click"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="styleText" style="text-align:center"><asp:Label runat="server" ID="msg" EnableTheming="False"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td bgcolor="#3333FF" colspan="2"></td>
            </tr>
            <tr>
                <td bgcolor="#666666" class="auto-style3" style="text-align:center" colspan="2">
                    <span class="style3">Designed by :- Sahil Mehra</span>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
