<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="icon" type="image/x-icon" href="~/Content/image/favicon.png">
    <link href="~/Content/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="~/Content/css/all.min.css" />
    <link href="~/Content/css/style.css" rel="stylesheet"/>
    <script src="/Content/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="/Content/js/all.min.js" type="text/javascript"></script>
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
            <div>
                <ul class="">
                    <li class="nav-item">
                        <asp:HyperLink ID="hlCalculater" runat="server" NavigateUrl="~/Calculator.aspx" CssClass="nav-link" Text="Calculator"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink ID="hlNavigation" runat="server" NavigateUrl="~/Navigation.aspx" CssClass="nav-link" Text="Navigation"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink ID="hlCheckList" runat="server" NavigateUrl="~/CheckboxAndRedio.aspx" CssClass="nav-link" Text="CheckList"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink ID="hlDropdownList" runat="server" NavigateUrl="~/DropdownList.aspx" CssClass="nav-link" Text="DropdownList"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink ID="hlListBox" runat="server" NavigateUrl="~/ListBox.aspx" CssClass="nav-link" Text="ListBox"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink ID="hlStudent" runat="server" NavigateUrl="~/StudentEnrollmentForm.aspx" CssClass="nav-link" Text="StudentEnrollmentForm"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink ID="hlMasterPage" runat="server" NavigateUrl="~/DarshanWebsite/Home.aspx" CssClass="nav-link" Text="Master Page"></asp:HyperLink>
                    </li>
                </ul>
            </div>
            
        </div>
    </form>
</body>
</html>
