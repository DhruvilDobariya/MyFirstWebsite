<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListBox.aspx.cs" Inherits="ListBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Label ID="lblCountry" runat="server" Text="Enter Country:"></asp:Label>
                <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                <asp:Label ID="lblCountryMsg" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:Label ID="lblCode" runat="server" Text="Enter Code:"></asp:Label>
                <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                <asp:Label ID="lblCodeMsg" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
                <asp:Button ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click"/>
                <br />
                <asp:Label ID="lblSubmit" runat="server"></asp:Label>

            </div>
            <div>
                <asp:ListBox ID="lstb1" runat="server" SelectionMode="Multiple"></asp:ListBox>
                <asp:Button ID="btnRight" runat="server" Text=">" OnClick="btnRight_Click" />
                <asp:Button ID="btnAllRight" runat="server" Text=">>" OnClick="btnAllRight_Click" />
                <asp:Button ID="btnLeft" runat="server" Text="<" OnClick="btnLeft_Click"/>
                <asp:Button ID="btnAllLeft" runat="server" Text="<<" OnClick="btnAllLeft_Click" />
                <asp:ListBox ID="lstb2" runat="server" SelectionMode="Multiple"></asp:ListBox>
            </div>
        </div>
    </form>
</body>
</html>
