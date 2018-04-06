<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Aud23_8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblBojaFont" runat="server" Text="Одберете боја на фонт"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Panel ID="pnlCestitka" runat="server" Height="500px" Width="500px" >
                <asp:Label ID="lblPoraka" runat="server"></asp:Label>
                <asp:Image ID="imgPnl" runat="server" Height="16px" ImageUrl="~/Pills.png" Visible="False" />
                </asp:Panel>
            <asp:DropDownList ID="ddlBojaFont" runat="server">
            <asp:ListItem>Blue</asp:ListItem>
            <asp:ListItem>Green</asp:ListItem>
            <asp:ListItem>Red</asp:ListItem>
            <asp:ListItem>Yellow</asp:ListItem>
            <asp:ListItem>Purple</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="lblOdberiFont" runat="server" Text="Одберете Фонт"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlFont" runat="server">
            <asp:ListItem>Arial</asp:ListItem>
            <asp:ListItem>Times New Roman</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Внесете големина на фонт"></asp:Label>
        <br />
        <asp:TextBox ID="txbGoleminaFont" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblBojaPozadina" runat="server" Text="Одберете позадинска боја"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlBojaPozadina" runat="server">
            <asp:ListItem>White</asp:ListItem>
            <asp:ListItem>Pink</asp:ListItem>
            <asp:ListItem>Aqua</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="lblStilRamka" runat="server" Text="Одберете стил на рамка"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlRamka" runat="server">
            <asp:ListItem Value="2">Dotted</asp:ListItem>
            <asp:ListItem Value="4">Solid</asp:ListItem>
            <asp:ListItem Value="5">Double</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:CheckBox ID="chbSlika" runat="server" Text="Слика" />
        <br />
        <asp:TextBox ID="txbSodrzina" runat="server" OnTextChanged="btnCestitaj_Click" Rows="5" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="btnCestitaj" runat="server" Text="Честитај" OnClick="btnCestitaj_Click" />
        </div>
    </form>
</body>
</html>
