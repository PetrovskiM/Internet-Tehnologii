<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zad2.aspx.cs" Inherits="itAud41.zad2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlItems" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Item1</asp:ListItem>
                <asp:ListItem>Item2</asp:ListItem>
                <asp:ListItem>Item3</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlItems" ErrorMessage="NO"></asp:RequiredFieldValidator>
            <asp:Button ID="btnGo" runat="server" OnClick="Button1_Click" Text="Go" />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
