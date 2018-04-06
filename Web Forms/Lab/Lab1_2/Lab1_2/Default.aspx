<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab1_2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblVreme1" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy" Text="Контрола за приказ на време"></asp:Label>
        <div>
            <asp:Label ID="lblVreme2" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy" Text="Контрола за приказ на време"></asp:Label>
        </div>
        <p>
            <asp:Button ID="btnVreme" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy" OnClick="btnVreme_Click" Text="Контрола за приказ на време" />
        </p>
        <asp:HyperLink ID="hlSledno" runat="server" NavigateUrl="~/Default2.aspx">HyperLink</asp:HyperLink>
    </form>
</body>
</html>
