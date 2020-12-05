<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Dikshita_Tours_and_Travels.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
    <div id="userentry">
        <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <form id="form1" action="data.aspx">
    <div>
    <table border=1 cellspacing=3 cellpadding=10 align="center" width="200px" style="border-color: #000000; border-width: thick">
<tr><th colspan="2" height="40px" width="200px">
    <asp:Label ID="Label3" runat="server" Text="ADMIN LOGIN" Font-Size="Large"></asp:Label></th></tr>
<tr><td height="40px" width="850px">
    <asp:Label ID="unamelbl" runat="server" Text="USERNAME" Font-Size="Large" Font-Bold="True" Width="140px"></asp:Label></td>  
    <td ><asp:TextBox ID="TextBox1" runat="server" Height="40px"></asp:TextBox>
</td></tr>
<tr><td height="40px" width="800px">
    <asp:Label ID="upasswordlbl" runat="server" Text="PASSWORD" Font-Size="Large" Font-Bold="True" Width="140px"></asp:Label></td>
    <td> <asp:TextBox ID="TextBox2" runat="server" Height="40px" 
            TextMode="Password"></asp:TextBox>
</td></tr>
<tr><td align="center"  height="40px" width="40px">
<asp:Button ID="uloginbtn" runat="server" Text="Login" 
          Width="200px" Height="30px" BorderColor="Black" 
        BorderWidth="3" onclick="uloginbtn_Click" PostBackUrl="" /></td>
        <td align="center"  height="40px" width="40px">
<asp:Button ID="resetbtn" runat="server" Text="Reset" 
          Width="200px" Height="30px" BorderColor="Black" 
        BorderWidth="3" onclick="resetbtn_Click" /></td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
    </div>
</div>
</asp:Content>
