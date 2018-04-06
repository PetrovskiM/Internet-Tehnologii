<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="itKol1Zadaca2.Glasaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
            <asp:Label ID="lblProfesor" runat="server"></asp:Label>
            <br />
            <asp:ListBox ID="lstPredmeti" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstPredmeti_SelectedIndexChanged">
                <asp:ListItem Value="Prof 1">Predmet 1</asp:ListItem>
                <asp:ListItem Value="Prof 2">Predmet 2</asp:ListItem>
                <asp:ListItem Value="Prof 3">Predmet 3</asp:ListItem>
            </asp:ListBox>
&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="lstKrediti" runat="server">
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem Value="5"></asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:Button ID="btnGlasaj" runat="server" OnClick="btnGlasaj_Click" Text="Гласајте" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblError" runat="server" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
