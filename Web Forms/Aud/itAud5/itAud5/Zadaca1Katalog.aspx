<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zadaca1Katalog.aspx.cs" Inherits="itAud5.Zadaca1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="lnkOne" runat="server" OnClick="lnkOne_Click">Item One</asp:LinkButton>
            <br />
            <asp:LinkButton ID="lnkTwo" runat="server" OnClick="lnkTwo_Click">Item Two</asp:LinkButton>
            <br />
            <asp:LinkButton ID="lnkThree" runat="server" OnClick="lnkThree_Click">Item Three</asp:LinkButton>
        </div>
    </form>
</body>
</html>
