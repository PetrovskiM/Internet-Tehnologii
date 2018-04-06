<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Serverski Kontroli.aspx.cs" Inherits="itLab2.Serverski_Kontroli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 591px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 27%;
            float: left;
        }
        .auto-style4 {
            width: 111px;
        }
        .auto-style5 {
            height: 26px;
            width: 111px;
        }
        .auto-style6 {
            float: left;
        }
    </style>
</head>
<body style="height: 589px">
    <form id="form1" runat="server" class="auto-style1">
        <div>
            <table class="auto-style3" >
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblIme" runat="server" Text="Име"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtIme" runat="server" AutoPostBack="True" CausesValidation="True" OnTextChanged="txtIme_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblPrezime" runat="server" Text="Презиме"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrezime" runat="server" AutoPostBack="True" CausesValidation="True" OnTextChanged="txtPrezime_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblFrom" runat="server" Text="Од"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlOd" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlOd_SelectedIndexChanged">
                            <asp:ListItem>London</asp:ListItem>
                            <asp:ListItem>Minhen</asp:ListItem>
                            <asp:ListItem>Dortmund</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblTo" runat="server" Text="До"></asp:Label>
                    </td>
                    <td class="auto-style2">
        <asp:DropDownList ID="ddlDo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlDo_SelectedIndexChanged">
            <asp:ListItem>London</asp:ListItem>
            <asp:ListItem>Minhen</asp:ListItem>
            <asp:ListItem>Dortmund</asp:ListItem>
        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblDatum" runat="server" Text="Датум на тргање"></asp:Label>
                    </td>
                    <td class="auto-style2">
        <asp:DropDownList ID="ddlDenovi" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlDenovi_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:DropDownList ID="ddlMeseci" runat="server" AutoPostBack="True">
        </asp:DropDownList>
                        <br />
        <asp:DropDownList ID="ddlGodini" runat="server" AutoPostBack="True">
        </asp:DropDownList>
                    </td>
                </tr>
                                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblTime" runat="server" Text="Време на тргање"></asp:Label>
                    </td>
                    <td class="auto-style2">
                                                <asp:DropDownList ID="ddlVreme" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblPrevoz" runat="server" Text="Превозно средство"></asp:Label>
                    </td>
                    <td class="auto-style2">
        <asp:ListBox ID="lstSredstvo" runat="server" AutoPostBack="True" CausesValidation="True" Height="37px" OnSelectedIndexChanged="lstSredstvo_SelectedIndexChanged" Width="54px">
            <asp:ListItem Value="~/plane_PNG5257.png">Авион</asp:ListItem>
            <asp:ListItem Value="~/Thomas_Tank_Engine_1.JPG">Воз</asp:ListItem>
                        </asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblZone" runat="server" Text="Зона"></asp:Label>
                    </td>
                    <td class="auto-style2">
        <asp:RadioButtonList ID="rblZona" runat="server" AutoPostBack="True" CausesValidation="True" OnSelectedIndexChanged="rblZona_SelectedIndexChanged">
            <asp:ListItem>Пушач</asp:ListItem>
            <asp:ListItem>Непушач</asp:ListItem>
        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblClass" runat="server" Text="Класа"></asp:Label>
                    </td>
                    <td class="auto-style2">
        <asp:RadioButtonList ID="rblKlasa" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" CausesValidation="True" OnSelectedIndexChanged="rblKlasa_SelectedIndexChanged" Width="171px">
            <asp:ListItem>Економска</asp:ListItem>
            <asp:ListItem>Бизнис</asp:ListItem>
        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblServ" runat="server" Text="Послуга"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:CheckBoxList ID="cblPosluga" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="cblPosluga_SelectedIndexChanged">
                            <asp:ListItem>Пијалок</asp:ListItem>
                            <asp:ListItem>Кафе</asp:ListItem>
                            <asp:ListItem>Оброк</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lstSredstvo" Display="None" ErrorMessage="Одберете превоз"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rblZona" Display="None" ErrorMessage="Одберете зона"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rblKlasa" Display="None" ErrorMessage="Одберете класа"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtIme" Display="None" ErrorMessage="Внесете име"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrezime" Display="None" ErrorMessage="Внесете презиме"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Panel ID="pnlPanela1" runat="server" Height="398px" Width="347px" BackColor="#FFFFC0" CssClass="auto-style6" ForeColor="#0000CC" ScrollBars="Both" Visible="False">
            <asp:Label ID="Label1" runat="server" Text="Почитуван Патнику"></asp:Label>
            <br />
            <asp:Label ID="lblPatnik" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Издадена ви е карта за"></asp:Label>
            <br />
            <asp:Label ID="lblSredstvo" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="со почетна дестинација"></asp:Label>
            <br />
            <asp:Label ID="lblOd" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="и крајна дестинација"></asp:Label>
            <br />
            <asp:Label ID="lblDo" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Времето на поаѓање е"></asp:Label>
            <br />
            <asp:Label ID="lblVreme" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Вашето место на седење ќе биде во зоната за"></asp:Label>
            &nbsp;<asp:Label ID="lblZona" runat="server"></asp:Label>
            &nbsp;во
            <asp:Label ID="lblKlasa" runat="server"></asp:Label>
            &nbsp;класа<br /> и во текот на патувањето ќе бидете послужени<br /> со
            <asp:Label ID="lblPosluga" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Image ID="imgTransport" runat="server" />
            <br />
            <br />
            Ви благодариме на довербата и ви посакуваме среќен пат!</asp:Panel>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
