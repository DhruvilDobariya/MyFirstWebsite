<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckboxAndRedio.aspx.cs" Inherits="CheckboxAndRedio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkbox And Radio</title>
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
                <i class="fas fa-tasks"></i>
                CheckList
            </h2>
            <div class="col-md-1 offset-1 d-flex align-items-center">
                <asp:HyperLink ID="hlHome" runat="server" CssClass="btn btn-dark" NavigateUrl="~/Home.aspx"> <i class="fas fa-home"></i></asp:HyperLink>
            </div>
        </div>
        <div>
            <div>
                <asp:Label ID="lblDepartmentRadioButton" runat="server" Text="Department:"></asp:Label>
                <asp:RadioButton runat="server" ID="rbDegree" Text="DIET" GroupName="Department" 
                    OnCheckedChanged="rbDegree_CheckedChanged" AutoPostBack="True"/>
                <asp:RadioButton runat="server" ID="rbDiploma" Text="DIETDS" GroupName="Department" AutoPostBack="True" OnCheckedChanged="rbDiploma_CheckedChanged"/>
                <br />
                <br />
                <div>
                    <asp:RadioButton ID="rbCE" runat="server" Text="Degree - Computer Engineering" GroupName="Degree" Visible="false" />
                </div>
                <div>
                    <asp:RadioButton ID="rbCV" runat="server" Text="Degree - Civil Engineering" GroupName="Degree" Visible="false" />
                </div>
                <div>
                    <asp:RadioButton ID="rbME" runat="server" Text="Degree - Mechanical Engineering" GroupName="Degree" Visible="false" />
                </div>
                <div>
                    <asp:RadioButton ID="rbEE" runat="server" Text="Degree - Electrical Engineering" GroupName="Degree" Visible="false" />
                </div>

                <div>
                    <asp:RadioButton ID="rbDCE" runat="server" Text="Deploma - Computer Engineering" GroupName="Deploma" Visible="false" />
                </div>
                <div>
                    <asp:RadioButton ID="rbDCV" runat="server" Text="Deploma - Civil Engineering" GroupName="Deploma" Visible="false" />
                </div>
                <div>
                    <asp:RadioButton ID="rbDME" runat="server" Text="Deploma - Mechanical Engineering" GroupName="Deploma" Visible="false" />
                </div>
                <div>
                    <asp:RadioButton ID="rbDEE" runat="server" Text="Deploma - Electrical Engineering" GroupName="Deploma" Visible="false" />
                </div>
            </div>
            <div>
                <asp:Button ID="btnSubmit1" runat="server" Text="Submit" OnClick="btnSubmit1_Click" />
                <asp:Label ID="lblSubmit" runat="server"></asp:Label>
            </div>
            <br />
            <div>
                <asp:Label ID="lblDepartmentChk" runat="server" Text="Department:"></asp:Label>
                <asp:CheckBox runat="server" ID="chkDegree" Text="DIET" AutoPostBack="True" OnCheckedChanged="chkDegree_CheckedChanged"/>
                <asp:CheckBox runat="server" ID="chkDiploma" Text="DIETDS" AutoPostBack="True" OnCheckedChanged="chkDiploma_CheckedChanged"/>
            </div>
            <br />
            <div>
                <div>
                    <asp:CheckBox ID="chkCE" runat="server" Text="Degree - Computer Engineering" OnCheckedChanged="chkSub_CheckedChanged" Visible="false" AutoPostBack="True"/>
                </div>
                <div>
                    <asp:CheckBox ID="chkCV" runat="server" Text="Degree - Civil Engineeing" OnCheckedChanged="chkSub_CheckedChanged" Visible="false" AutoPostBack="True"/>
                </div>
                <div>
                    <asp:CheckBox ID="chkME" runat="server" Text="Degree - Mechanical Engineeing" OnCheckedChanged="chkSub_CheckedChanged" Visible="false" AutoPostBack="True"/>
                </div>
                <div>
                    <asp:CheckBox ID="chkEE" runat="server" Text="Degree - Electric Engineering" OnCheckedChanged="chkSub_CheckedChanged" Visible="false" AutoPostBack="True"/>
                </div>
                <br />
                <div>
                    <asp:CheckBox ID="chkDCE" runat="server" Text="Diploma - Computer Engineering" OnCheckedChanged="chkSub_CheckedChanged" Visible="false" AutoPostBack="True"/>
                </div>
                <div>
                    <asp:CheckBox ID="chkDCV" runat="server" Text="Diploma - Civil Engineeing" OnCheckedChanged="chkSub_CheckedChanged" Visible="false" AutoPostBack="True"/>
                </div>
                <div>
                    <asp:CheckBox ID="chkDME" runat="server" Text="Diploma - Mechanical Engineeing" OnCheckedChanged="chkSub_CheckedChanged" Visible="false" AutoPostBack="True"/>
                </div>
                <div>
                    <asp:CheckBox ID="chkDEE" runat="server" Text="Diploma - Electric Engineering" OnCheckedChanged="chkSub_CheckedChanged" Visible="false" AutoPostBack="True"/>
                </div>
                <br />
                <div>
                    <asp:CheckBox ID="chkAll" runat="server" Text="Check All" OnCheckedChanged="chkAll_CheckedChanged" Visible="false" AutoPostBack="True"/>
                </div>
                <%--<div>
                    <asp:CheckBox runat="server" ID="chkClear" Text="Clear" OnCheckedChanged="chkClear_CheckedChanged" AutoPostBack="true"/>
                </div>--%>
            </div>
            <div>
                <asp:Button ID="btnSubmitChk" runat="server" Text="Submit" OnClick="btnSubmitChk_Click"/>
                <asp:Label ID="lblSubmitChk" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
