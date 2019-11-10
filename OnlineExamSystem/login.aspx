<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <style type="text/css">
        .style1 {
            width:1024px;
        }
        .style2 {
            font-family:"Monotype Corsiva";
            font-size: xx-large;
            font-weight: bold;
            color: #3399FF;
            text-align: center;
            padding: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" >
            <tr>
                <td class="style2" colspan="2">Online Examination System 
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#0099ff" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#0099ff" class="auto-style2">Username:</td>
                <td bgcolor="#0099ff"><asp:TextBox runat="server" ID="name"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#0099ff" class="auto-style2">Password:</td>
                <td bgcolor="#0099ff"><asp:TextBox runat="server" ID="pass"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="submit" runat="server" Text="Login" height="28px" width="95px" Font-Bold="true" BackColor="Black" ForeColor="Yellow" OnClick="submit_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td><asp:Label runat="server" ID="msg" EnableTheming="False"></asp:Label></td>
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
