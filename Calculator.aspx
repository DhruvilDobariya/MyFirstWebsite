<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <link rel="icon" type="image/x-icon" href="~/Content/assets/image/favicon.png">
    <link href="~/Content/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="~/Content/fontawesome/css/all.min.css" />
    <link href="~/Content/assets/css/style.css" rel="stylesheet"/>
    <script src="/Content/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="/Content/fontawesome/js/all.min.js" type="text/javascript"></script>
</head>
<body>
    <form runat="server" id="form1">
        <div class="header sticky-top bg-dark text-light p-2 row">
            <h2 class="col-md-10">
                <i class="fas fa-calculator"></i>
                Calculator
            </h2>
            <div class="col-md-1 offset-1 d-flex align-items-center">
                <asp:HyperLink ID="hlHome" runat="server" CssClass="btn btn-dark" NavigateUrl="~/Home.aspx">
                    <i class="fas fa-home"></i>
                </asp:HyperLink>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row m-3 justify-content-center">
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <asp:Label ID="Label1" runat="server" Text="Enter No 1:" CssClass="form-label"></asp:Label>
                        </div>
                        <div class="col-md-8 mb-3">
                            <asp:TextBox ID="txtNo1" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:Label ID="msgNo1" runat="server" ForeColor="Red"></asp:Label>
                        </div>

                        <div class="col-md-3 mb-3">
                            <asp:Label ID="Label3" runat="server" Text="Enter Operator :" CssClass="form-label"></asp:Label>
                        </div>
                        <div class="col-md-8 mb-3">
                            <asp:TextBox ID="txtOperator" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:Label ID="msgOperator" runat="server" ForeColor="Red"></asp:Label>
                        </div>

                        <div class="col-md-3 mb-3">
                            <asp:Label ID="Label2" runat="server" Text="Enter No 2:" CssClass="form-label"></asp:Label>
                        </div>
                        <div class="col-md-8 mb-3">
                            <asp:TextBox ID="txtNo2" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:Label ID="msgNo2" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                
                        <div class="col-md-3 offset-md-3">
                            <asp:Button ID="btnCalculate" runat="server" OnClick="btnCalculate_Click" Text="Calculate" CssClass="btn btn-success" />
                        </div>
                        <div class="col-md-3">
                            <asp:Button runat="server" ID="btnReset" OnClick="btnReset_Click" Text="Reset" CssClass="btn btn-danger"/>
                        </div>
                        <div class="col-md-3">
                            <asp:Button runat="server" ID="btnSave" OnClick="btnSave_Click" Text="Save" CssClass="btn bg-dark text-light"/>
                        </div>

                        <div class="offset-md-3">
                            <asp:Label runat="server" ID="lblSave" ForeColor="Red" CssClass=""></asp:Label>
                        </div>

                        <div class="col-md-3 my-3">
                            <asp:Label ID="Label4" runat="server" Text="Ans:" CssClass="form-label"></asp:Label>
                        </div>
                        <div class="col-md-8 my-3">
                            <asp:TextBox ID="txtAns" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="border-top">
                <h4 class="header text-light p-2 d-flex">
                    <div class="col-md-4">
                        <i class="fas fa-history"></i>
                        History
                    </div>
                    <div class="col-md-1 offset-md-7">
                        <asp:Button runat="server" ID="btnResetAll" OnClick="btnResetAll_Click" Text="Reset All" CssClass="btn bg-dark text-light"/>
                    </div>
                </h4>
                <asp:Label runat="server" ID="lblHistory"></asp:Label>
            </div>
        </div>
    </form>
<%-- 
    <form id="form2" runat="server">
        <div>
            <h2>I am Dhruvil Doariya. I am a .Net Developer.</h2>
            <h4>Calculator</h4>
        </div>
        <div>
            <h5>Detail:</h5>
            <div class="">
                <asp:Label ID="Label5" runat="server" Text="Enter No 1:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
                <p>
                    <asp:Label ID="Label7" runat="server" Text="Enter Operator :"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="Label9" runat="server" Text="Enter No 2:"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label10" runat="server" ForeColor="Red"></asp:Label>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" OnClick="btnCalculat_Click" Text="Calculat" />
                </p>
            </div>
            <div>
                <h5>Calculation:</h5>
                <asp:Label ID="Label11" runat="server" Text="Ans:"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </div>
        </div>
    </form>
    --%>
</body>
</html>
