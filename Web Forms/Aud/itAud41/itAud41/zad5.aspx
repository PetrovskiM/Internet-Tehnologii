<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zad5.aspx.cs" Inherits="itAud41.zad5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server" ValidationGroup="1"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Button" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"></asp:RequiredFieldValidator>
        </div>
        <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="2"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="2" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ValidationGroup="2"></asp:RequiredFieldValidator>
    </form>
</body>
</html>
