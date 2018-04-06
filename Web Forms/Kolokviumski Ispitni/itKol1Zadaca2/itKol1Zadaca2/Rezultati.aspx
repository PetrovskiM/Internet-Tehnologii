<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rezultati.aspx.cs" Inherits="itKol1Zadaca2.Rezultati" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="lstPredmeti" runat="server">
                <asp:ListItem>Predmet 1</asp:ListItem>
                <asp:ListItem>Predmet 2</asp:ListItem>
                <asp:ListItem>Predmet 3</asp:ListItem>
            </asp:ListBox>
&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="lstPoeni" runat="server">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>0</asp:ListItem>
            </asp:ListBox>
        </div>
    </form>
</body>
</html>
