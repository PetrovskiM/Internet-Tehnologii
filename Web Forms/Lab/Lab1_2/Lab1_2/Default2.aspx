<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="Lab1_2.Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</head>
<body style="height: 145px">
    <form id="form1" runat="server">
        <div style="height: 124px">
            <table style="width:100%; align-self:center">
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style1">
                        <asp:Panel ID="pnlPanela1" runat="server" BackColor="Green" Font-Names="Arial" Height="29px">
                            <asp:TextBox ID="txtOperand1" runat="server" EnableViewState="False"></asp:TextBox>
                            <asp:TextBox ID="txtOperand2" runat="server" AutoPostBack="True" OnTextChanged="txtOperand2_TextChanged"></asp:TextBox>
                            <asp:Button ID="btnSoberi" runat="server" Text="Button" OnClick="btnSoberi_Click" />
                            <asp:Label ID="lblRezultat" runat="server" Text="Label" EnableViewState="False"></asp:Label>
                        </asp:Panel>
                    </td>
                    <td class="auto-style1">
                        <asp:CheckBox ID="chbVidlivo" runat="server" Text="Видливо" AutoPostBack="True" OnCheckedChanged="chbVidlivo_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
