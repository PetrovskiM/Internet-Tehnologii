<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zadaca1Proizvodi.aspx.cs" Inherits="itAud5.Zadaca1Proizvodi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblKategorija" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Proizvodi"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Ceni"></asp:Label>
            <br />
            <asp:ListBox ID="lstItems" runat="server" AutoPostBack="True" Height="203px" OnSelectedIndexChanged="lstItems_SelectedIndexChanged" Width="261px"></asp:ListBox>
            <asp:ListBox ID="lstCeni" runat="server" Height="201px"></asp:ListBox>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Zadaca1Katalog.aspx">Katalog</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPromeni" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDodadi" runat="server" OnClick="btnDodadi_Click" Text="Dodadi" />
        <br />
        <br />
        <asp:ListBox ID="lstKosnicka" runat="server" Width="260px"></asp:ListBox>
        <br />
        <asp:Button ID="btnKupi" runat="server" OnClick="btnKupi_Click" Text="Kupi" />
    </form>
</body>
</html>
