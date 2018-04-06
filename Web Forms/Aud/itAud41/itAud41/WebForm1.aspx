<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="itAud41.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 2px;
        }
    </style>
</head>
<body style="height: 284px">
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tbIme" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbIme" ErrorMessage="Неможе Празно"></asp:RequiredFieldValidator>
        </div>
        <p>
            <asp:TextBox ID="tbLozinka" runat="server" CssClass="auto-style1" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbLozinka" ControlToValidate="tbLozinkaPotvrda" ErrorMessage="Не се совпаѓаат"></asp:CompareValidator>
        </p>
        <asp:TextBox ID="tbLozinkaPotvrda" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
