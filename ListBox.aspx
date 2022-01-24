<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListBox.aspx.cs" Inherits="ListBox" %>

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
    <style type="text/css">
        #form1 {
            height: 331px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header sticky-top bg-dark text-light p-2 row">
            <h2 class="col-md-10">
                <i class="fas fa-list"></i>
                ListBox
            </h2>
            <div class="col-md-1 offset-1 d-flex align-items-center">
                <asp:HyperLink ID="hlHome" runat="server" CssClass="btn btn-dark" NavigateUrl="~/Home.aspx">
                    <i class="fas fa-home"></i>
                </asp:HyperLink>
            </div>
        </div>
        <div>
            <div>
                <h4>Add Item</h4>
                <asp:Label ID="lblCountry" runat="server" Text="Enter Country:"></asp:Label>
                <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                <asp:Label ID="lblCountryMsg" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:Label ID="lblCode" runat="server" Text="Enter Code:"></asp:Label>
                <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                <asp:Label ID="lblCodeMsg" runat="server" ForeColor="Red"></asp:Label>
                <div>
                    <asp:Label ID="lblSubmit" runat="server"></asp:Label>
                </div>
                <h4>Update Item</h4>
                <asp:Label ID="lblNewCountry" runat="server" Text="Enter New Country:"></asp:Label>
                <asp:TextBox ID="txtUpdateCountry" runat="server"></asp:TextBox>
                <asp:Label ID="lblNewCountryMsg" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:Label ID="lblNewCode" runat="server" Text="Enter New Code:"></asp:Label>
                <asp:TextBox ID="txtUpdateCode" runat="server"></asp:TextBox>
                <asp:Label ID="lblNewCodeMsg" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <div>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                </div>
            </div>

        </div>

        <div>
            <asp:ListBox ID="lstb1" runat="server" SelectionMode="Multiple"></asp:ListBox>
            <asp:Button ID="btnRight" runat="server" Text=">" OnClick="btnRight_Click" />
            <asp:Button ID="btnAllRight" runat="server" Text=">>" OnClick="btnAllRight_Click" />
            <asp:Button ID="btnLeft" runat="server" Text="<" OnClick="btnLeft_Click" />
            <asp:Button ID="btnAllLeft" runat="server" Text="<<" OnClick="btnAllLeft_Click" />
            <asp:ListBox ID="lstb2" runat="server" SelectionMode="Multiple"></asp:ListBox>
        </div>

    </form>
</body>
</html>
