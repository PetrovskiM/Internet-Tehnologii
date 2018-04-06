<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="itKol1Zadaca2.Najava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Име"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorIme" runat="server" ControlToValidate="txtIme" ErrorMessage="Внесете име"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Лозинка"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLozinka" runat="server" ControlToValidate="txtLozinka" ErrorMessage="Внесете лозинка"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="е-адреса"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Невалиден формат" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="btnNajava" runat="server" OnClick="btnNajava_Click" Text="Најавете се" />
        </div>
    </form>
</body>
</html>
