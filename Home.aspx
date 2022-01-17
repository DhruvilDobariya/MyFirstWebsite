<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="icon" type="image/x-icon" href="~/Content/assets/image/favicon.png">
    <link href="~/Content/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="~/Content/assets/css/style.css" rel="stylesheet"/>
    <link rel="stylesheet" href="~/Content/fontawesome/css/all.min.css" />
    <script src="/Content/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="/Content/fontawesome/js/all.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header sticky-top bg-dark text-light p-2">
            <h2>
                <i class="fas fa-home"></i>
                Home
            </h2>
        </div>
        <div>
            <asp:HyperLink ID="hlCalculater" runat="server" NavigateUrl="~/Calculator.aspx" Text="Calculator"></asp:HyperLink>
            <asp:HyperLink ID="hlNavigation" runat="server" NavigateUrl="~/Navigation.aspx" Text="Navigation"></asp:HyperLink>
            <asp:HyperLink ID="hlCheckList" runat="server" NavigateUrl="~/CheckboxAndRedio.aspx" Text="CheckList"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
