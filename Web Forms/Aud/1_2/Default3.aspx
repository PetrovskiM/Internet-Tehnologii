<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="Lab1_2.Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="txtPoraka" runat="server" OnTextChanged="txtPoraka_TextChanged" ReadOnly="True" Rows="5" TextMode="MultiLine" AutoPostBack="True"></asp:TextBox>
            <asp:Button ID="btnProveri" runat="server" Text="Button" OnClick="btnProveri_Click" />
            <asp:Button ID="btnPrvaStrana" runat="server" Text="Button" Enabled="False" OnClick="btnPrvaStrana_Click" />
        </div>
    </form>
</body>
</html>
