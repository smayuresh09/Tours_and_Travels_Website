<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ticket.aspx.cs" Inherits="Dikshita_Tours_and_Travels.ticket" %>
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
    <form id="form1">
    <div>
    <table border=1 cellspacing=3 cellpadding=10 align="center" width="600px" style="border-color: #000000; border-width: thick">
<tr><th colspan="2" height="40px" width="200px">
    <asp:Label ID="Label3" runat="server" Text="ENQUIRY FORM" Font-Size="Large"></asp:Label></th></tr>

<tr><td height="40px" width="200px">
    <asp:Label ID="Label1" runat="server" Text="NAME" Font-Size="Large" Font-Bold="True" Width="100px"></asp:Label></td>  
    <td ><asp:TextBox ID="TextBox1" runat="server" Height="40px" ControlToValidate="TextBox1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
</td></tr>

<tr><td height="40px" width="200px">
    <asp:Label ID="Label2" runat="server" Text="CONTACT NUMBER" Font-Size="Large" Font-Bold="True" Width="200px"></asp:Label></td>
    <td> <asp:TextBox ID="TextBox2" runat="server" Height="40px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter Contact Number" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid Contact Number" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ></asp:RegularExpressionValidator> 
</td></tr>

<tr><td height="40px" width="200px">
    <asp:Label ID="Label4" runat="server" Text="EMAIL-ID" Font-Size="Large" Font-Bold="True" Width="100px"></asp:Label></td>
    <td> <asp:TextBox ID="TextBox3" runat="server" Height="40px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Enter Email-Id" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Enter Valid Email ID" 
                ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</td></tr>

<tr><td height="40px" width="200px">
    <asp:Label ID="Label5" runat="server" Text="LOCATION" Font-Size="Large" Font-Bold="True" Width="100px"></asp:Label></td>
    <td> 
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">SELECT LOCATION</asp:ListItem>
            <asp:ListItem>PUNE</asp:ListItem>
            <asp:ListItem>GUJARAT</asp:ListItem>
            <asp:ListItem>KERLA</asp:ListItem>
            <asp:ListItem>GOA</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Enter Location" ControlToValidate="DropDownList1" ForeColor="Red" InitialValue="SELECT LOCATION"></asp:RequiredFieldValidator>
</td></tr>

<tr><td height="40px" width="200px">
    <asp:Label ID="Label6" runat="server" Text="DAY" Font-Size="Large" Font-Bold="True" Width="100px"></asp:Label></td>
    <td> 
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Selected="True">SELECT DAY</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Enter No. of Days" ControlToValidate="DropDownList2" ForeColor="Red" InitialValue="SELECT DAY"></asp:RequiredFieldValidator>
</td></tr>

<tr><td height="40px" width="200px">
    <asp:Label ID="Label7" runat="server" Text="NIGHT" Font-Size="Large" Font-Bold="True" Width="100px"></asp:Label></td>
    <td>
    <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Selected="True">SELECT NIGHT</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Enter No. of Nights" ControlToValidate="DropDownList3" ForeColor="Red" InitialValue="SELECT NIGHT"></asp:RequiredFieldValidator>
</td></tr>

<tr><td height="40px" width="200px">
    <asp:Label ID="Label8" runat="server" Text="NUMBER OF PEOPLE" Font-Size="Large" Font-Bold="True" Width="200px"></asp:Label></td>
    <td> <asp:TextBox ID="TextBox4" runat="server" Height="40px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Enter No. of People" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ErrorMessage="only 10 Peoples are allowed" ControlToValidate="TextBox4" 
            ForeColor="Red" MaximumValue="10" MinimumValue="1"></asp:RangeValidator>
</td></tr>

<tr><td colspan=2 align="center"  height="40px" width="40px">
<asp:Button ID="usubmitbtn" runat="server" Text="SUBMIT" 
          Width="200px" Height="30px" BorderColor="Black" 
        BorderWidth="3" onclick="usubmitbtn_Click"  /></td>
        </table>
    </div>
    </form>
</body>
</html>
</div>
</div>
</asp:Content>
