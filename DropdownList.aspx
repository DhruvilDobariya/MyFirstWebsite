<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropdownList.aspx.cs" Inherits="DropdownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" type="image/x-icon" href="~/Content/image/favicon.png">
    <link href="~/Content/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="~/Content/css/all.min.css" />
    <link href="~/Content/css/style.css" rel="stylesheet"/>
    <script src="/Content/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="/Content/js/all.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header sticky-top bg-dark text-light p-2 row">
            <h2 class="col-md-10">
                <i class="fas fa-chevron-circle-down"></i>
                Dropdown
            </h2>
            <div class="col-md-1 offset-1 d-flex align-items-center">
                <asp:HyperLink ID="hlHome" runat="server" CssClass="btn btn-dark" NavigateUrl="~/Home.aspx">
                    <i class="fas fa-home"></i>
                </asp:HyperLink>
            </div>
        </div>
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
