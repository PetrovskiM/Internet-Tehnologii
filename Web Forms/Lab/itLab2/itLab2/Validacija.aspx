<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validacija.aspx.cs" Inherits="itLab2.Validacija" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="mvEmail" runat="server">
                <asp:View ID="vwID" runat="server">
                    <asp:Label ID="lblIme" runat="server" Text="Име"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtIme" Display="None" ErrorMessage="Внеси име!"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblPrezime" runat="server" Text="Презиме"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrezime" Display="None" ErrorMessage="Внеси презиме"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblFinkiId" runat="server" Text="ФИНКИ ID"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:Label ID="lblAt" runat="server" Text="@finki.ukim.mk"></asp:Label>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtId" Display="None" ErrorMessage="Неправилен формат на ID" ValidationExpression="[A-Z]*\d*(_\d{2}){0,1}\d*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtId" Display="None" ErrorMessage="Внесете ID"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblHelpText" runat="server" Font-Size="8pt" ForeColor="#CCCCCC" Text="може да ги содржи знаците A-Z, 0-9,_ и максимум една точка"></asp:Label>
                    <br />
                    <asp:Label ID="lblLozinka" runat="server" Text="Лозинка"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtLozinka" ControlToValidate="txtPotvrda" Display="None" ErrorMessage="Различни лозинки"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtLozinka" Display="None" ErrorMessage="Внесете лозинка"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblPotvrda" runat="server" Text="Потврда"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPotvrda" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPotvrda" Display="None" ErrorMessage="Потврдете ја лозинката"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnSledno" runat="server" OnClick="btnSledno_Click" Text="&gt;&gt;" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </asp:View>
                <asp:View ID="vwPersonal" runat="server">
                    <asp:Label ID="lblAdresa" runat="server" Text="Адреса"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtAdresa" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAdresa" ErrorMessage="Внеси адреса"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblTel" runat="server" Text="Тел"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTel" ErrorMessage="Неправилен формат" ValidationExpression="(\+389) (\d{1,2} \d{3,4} \d{3})"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtTel" ErrorMessage="Внесете телефон"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblPol" runat="server" Text="Пол:"></asp:Label>
                    <asp:RadioButtonList ID="rblPol" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>М</asp:ListItem>
                        <asp:ListItem>Ж</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rblPol" ErrorMessage="Избери пол"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblDatum" runat="server" Text="Датум на раѓање"></asp:Label>
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    <br />
                    <br />
                    <asp:Button ID="btnBack2" runat="server" CausesValidation="False" OnClick="btnBack2_Click" Text="&lt;&lt;" />
                    <asp:Button ID="btnSledno2" runat="server" OnClick="btnSledno2_Click" Text="&gt;&gt;" />
                </asp:View>
                <asp:View ID="vwOccupation" runat="server">
                    <asp:Label ID="lblZanimanje" runat="server" Text="Занимање"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlZanimanje" runat="server">
                        <asp:ListItem>-занимање-</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlZanimanje" ErrorMessage="Изберете занимање" InitialValue="-занимање-"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblVreme" runat="server" Text="Години на вршење на избраната дејност"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtGodini" runat="server"></asp:TextBox>
                    &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtGodini" ErrorMessage="Недозволена вредност" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    <br />
                    <asp:Button ID="btnBack3" runat="server" CausesValidation="False" OnClick="btnBack3_Click" Text="&lt;&lt;" />
                    <asp:Button ID="btnPodnesi" runat="server" OnClick="btnPodnesi_Click" Text="Поднеси" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblNo" runat="server" Text="Немате соодветна професија или доволно искуство" Visible="False"></asp:Label>
                    <br />
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtGodini" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </asp:View>
                <asp:View ID="vwEnd" runat="server">
                    Креиран е корисникот
                    <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Button ID="btnPocetok" runat="server" OnClick="btnPocetok_Click" Text="Врати се на почтеок" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
