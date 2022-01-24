<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentEnrollmentForm.aspx.cs" Inherits="StudentEnrollmentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up | Log in</title>
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
                <i class="fas fa-user-graduate"></i>
                Student
            </h2>
            <div class="col-md-1 offset-1 d-flex align-items-center">
                <asp:HyperLink ID="hlHome" runat="server" CssClass="btn btn-dark" NavigateUrl="~/Home.aspx">
                    <i class="fas fa-home"></i>
                </asp:HyperLink>
            </div>
        </div>
        <div>
            <h4>Log in</h4>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Log in" />
            <table>
                <tr>
                    <td>*</td>
                    <td>Mobile No</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtMobileNoLogin"></asp:TextBox>
                    </td>
                    <td>
                        
                        <asp:RequiredFieldValidator ID="rfvMobileNoLogin" runat="server" ControlToValidate="txtMobileNoLogin" Display="None" ErrorMessage="Enter Mobile No" ForeColor="Red" ValidationGroup="Log in"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMobileNoLogin" runat="server" ControlToValidate="txtMobileNoLogin" Display="None" ErrorMessage="Enter valid Mobile No" ForeColor="Red" ValidationExpression="^([9]{1})([234789]{1})([0-9]{8})$" ValidationGroup="Log in"></asp:RegularExpressionValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td>*</td>
                    <td>Password</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPasswordLogin"></asp:TextBox>
                    </td>
                    <td>
                        
                        <asp:RequiredFieldValidator ID="rfvPasswordLogin" runat="server" ControlToValidate="txtPasswordLogin" Display="None" ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="Log in"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td colspan="2">
                        <asp:Button runat="server" ID="btnLogin" Text="Log In" ValidationGroup="Log in"/>
                    </td>
                    <td></td>
                </tr>
            </table>
            <h4>Sign up</h4>
            <table>
                <tr>
                    <td>*</td>
                    <td>Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtName"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ValidationGroup="Sign up"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>*</td>
                    <td>Enrollment No</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtEnrollmetNo"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvEnrollmentNo" runat="server" ControlToValidate="txtEnrollmetNo" Display="Dynamic" ErrorMessage="Enter Enrollment No" ForeColor="Red" ValidationGroup="Sign up"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEnrollmentNo" runat="server" ControlToValidate="txtEnrollmetNo" ErrorMessage="Please enter valid Enrollment No" ForeColor="Red" ValidationExpression="^[1-2][0-9](054)[0-9]{7}$" ValidationGroup="Sign up"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>*</td>
                    <td>Institute</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddInstitute">
                            <asp:ListItem Value="-1" Text="Select Institute"></asp:ListItem>
                            <asp:ListItem Value="DIET" Text="Darshan Institute of Engineering"></asp:ListItem>
                            <asp:ListItem Value="DIETDS" Text="Darshan Institute of Engineering in Diploma"></asp:ListItem>

                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvInstitute" runat="server" ControlToValidate="ddInstitute" Display="Dynamic" ErrorMessage="Enter Institute" ForeColor="Red" InitialValue="-1" ValidationGroup="Sign up"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>*</td>
                    <td>Department</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddDepartment">
                            <asp:ListItem Value="-1" Text="Select Department"></asp:ListItem>
                            <asp:ListItem Value="CE" Text="Computer Engineering"></asp:ListItem>
                            <asp:ListItem Value="CV" Text="Civil Engineering"></asp:ListItem>
                            <asp:ListItem Value="ME" Text="Mechanical Engineering"></asp:ListItem>
                            <asp:ListItem Value="EE" Text="Electrical Engineering"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDepartment" runat="server" ControlToValidate="ddDepartment" Display="Dynamic" ErrorMessage="Enter Department" ForeColor="Red" InitialValue="-1" ValidationGroup="Sign up"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>Dat of Birth</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtBirthDate"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cvBirthDate" runat="server" ControlToValidate="txtBirthDate" Display="Dynamic" ErrorMessage="Enter valid Date of Birth" ForeColor="Red" Operator="DataTypeCheck" Type="Date" ValidationGroup="Sign up"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>Semester</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtSemester"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="rvSemester" runat="server" ControlToValidate="txtSemester" Display="Dynamic" ErrorMessage="Enter Valid Semester" ForeColor="Red" MaximumValue="8" MinimumValue="1" Type="Integer" ValidationGroup="Sign up"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>Email</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Sign up"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>*</td>
                    <td>Mobile No</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtMobileNo"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvMobileNo" runat="server" ControlToValidate="txtMobileNo" Display="Dynamic" ErrorMessage="Enter Mobile No" ForeColor="Red" ValidationGroup="Sign up"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMobileNo" runat="server" ControlToValidate="txtMobileNo" Display="Dynamic" ErrorMessage="Enter Valid Mobile No" ForeColor="Red" ValidationExpression="^([9]{1})([234789]{1})([0-9]{8})$" ValidationGroup="Sign up"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>*</td>
                    <td>Password</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPassword"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="Sign up"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Enter Strong Password" ForeColor="Red" ValidationExpression="^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&amp;*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$" ValidationGroup="Sign up"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>Retype Password</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtRetypePassword"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cvRetypePassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRetypePassword" ErrorMessage="Password not match" ForeColor="Red" ValidationGroup="Sign up"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td colspan="2">
                        <asp:Button runat="server" ID="btnSubmit" Text="Submit" ValidationGroup="Sign up"/>
                    </td>
                    
                    <td>
                        &nbsp;</td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
