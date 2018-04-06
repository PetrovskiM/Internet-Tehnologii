<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mvZadaca.aspx.cs" Inherits="itAud41.mvZadaca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="&gt;" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
