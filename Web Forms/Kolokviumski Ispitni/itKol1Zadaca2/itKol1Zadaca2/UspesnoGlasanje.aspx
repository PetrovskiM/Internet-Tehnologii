<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UspesnoGlasanje.aspx.cs" Inherits="itKol1Zadaca2.UspesnoGlasanje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblName" runat="server"></asp:Label>
            , text
            <asp:Label ID="lblPredmet" runat="server"></asp:Label>
&nbsp;text
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnReztultati" runat="server" OnClick="btnReztultati_Click" Text="Rezultati" />
        </div>
    </form>
</body>
</html>
