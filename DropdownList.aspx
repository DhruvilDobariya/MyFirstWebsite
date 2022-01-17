<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropdownList.aspx.cs" Inherits="DropdownList" %>

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
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" />
                <br />
                <asp:Label ID="lblSubmit" runat="server"></asp:Label>

            </div>
            <div>
                <asp:DropDownList ID="ddCountry" runat="server" OnSelectedIndexChanged="ddCountry_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                <asp:Label ID="lblDropdown" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
