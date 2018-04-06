<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UspesnoGlasanje.aspx.cs" Inherits="it2012PrvKol.UspesnoGlasanje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblIme" runat="server"></asp:Label>
            , Ви благодариме за учеството во акцијата за избор на најинетерсен предмет на ФИНКИ. Вашиот избор беше
            <asp:Label ID="lblPredmet" runat="server"></asp:Label>
            . Резултатите од гласањето ќе ги добиете по електронска пошта, на
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
            .<br />
            <br />
            <asp:Button ID="btnRezultati" runat="server" OnClick="btnRezultati_Click" Text="Резултати" />
        </div>
    </form>
</body>
</html>
