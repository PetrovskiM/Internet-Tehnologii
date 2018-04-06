<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zad4.aspx.cs" Inherits="itAud41.zad4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" ValidationExpression="(07[0-15-7])\d{6}"></asp:RegularExpressionValidator>
        </div>
    </form>
</body>
</html>
