<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zad3.aspx.cs" Inherits="itAud41.zad3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tbImeIspit" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbImeIspit" Display="None" ErrorMessage="Mora Ime"></asp:RequiredFieldValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
        <asp:TextBox ID="tbOcena" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbOcena" Display="None" ErrorMessage="mroa megju 5 i 10" MaximumValue="10" MinimumValue="5" Type="Integer"></asp:RangeValidator>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Width="57px" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <p>
            <asp:TextBox ID="tbDatum" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbDatum" Display="None" ErrorMessage="less " Operator="LessThan" Type="Date" ValueToCompare="05.10.2007"></asp:CompareValidator>
        </p>
    </form>
</body>
</html>
