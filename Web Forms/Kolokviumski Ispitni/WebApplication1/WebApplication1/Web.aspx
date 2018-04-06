<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web.aspx.cs" Inherits="WebApplication1.Web" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 37%;
        }
        .auto-style4 {
            height: 31px;
            width: 301px;
        }
        .auto-style5 {
            width: 301px;
        }
        .auto-style8 {
            width: 353px;
        }
        .auto-style9 {
            height: 29px;
            width: 301px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="mvWeb" runat="server">
                <asp:View ID="vwNajava" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="Корисничко име:"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtIme" ErrorMessage="Невалиден формат" ValidationExpression="\w*[!^-]{1}\w*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Лозинка"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLozinka" ErrorMessage="Внесете лозинка"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Email :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Не валиден формат" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnNajava" runat="server" OnClick="btnNajava_Click" Text="Најави се" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:ListBox ID="lstZanrovi" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstZanrovi_SelectedIndexChanged" Visible="False">
                        <asp:ListItem>Драма</asp:ListItem>
                        <asp:ListItem>Комедија</asp:ListItem>
                        <asp:ListItem>Акција</asp:ListItem>
                    </asp:ListBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="imgLogo" runat="server" Height="123px" ImageUrl="~/635909140777574051-183397971_the-movies-logo-1[1].gif" Width="163px" Visible="False" />
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style8" rowspan="2">
                                <asp:CheckBoxList ID="chkFilmovi" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="chkFilmovi_SelectedIndexChanged">
                                </asp:CheckBoxList>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtKolichina1" runat="server" Visible="False"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtKolichina1" Enabled="False" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtKolichina2" runat="server" Visible="False"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtKolichina2" Enabled="False" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:Button ID="btnKupi" runat="server" OnClick="btnKupi_Click" Text="Купи" Visible="False" />
                            </td>
                            <td class="auto-style9">
                                <asp:TextBox ID="txtKolichina3" runat="server" Visible="False"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtKolichina3" Enabled="False" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">Вкупната цена изнесува</td>
                            <td class="auto-style9">
                                <asp:Label ID="lblCena" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
