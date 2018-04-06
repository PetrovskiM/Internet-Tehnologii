<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="it2012PrvKol.Glasaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Thomas_Tank_Engine_1.JPG" />
            <br />
            <br />
            <asp:Label ID="lblProfesor" runat="server"></asp:Label>
            <br />
            <asp:ListBox ID="lstPredmeti" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstPredmeti_SelectedIndexChanged">
                <asp:ListItem Value="Prof1">Predmet</asp:ListItem>
                <asp:ListItem Value="Prof2">Predmet2</asp:ListItem>
                <asp:ListItem Value="Prof3">Predmet3</asp:ListItem>
            </asp:ListBox>
&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="lstKrediti" runat="server">
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:Button ID="btnGlasaj" runat="server" OnClick="btnGlasaj_Click" Text="Гласајте" />
            <br />
            <br />
            <asp:Label ID="lblIme" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblTekst" runat="server" Text=",Веќе учествувавте во гласањето. Секој корисник има право да гласа само еднаш. Ви благодариме!" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
