<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Navigation.aspx.cs" Inherits="Navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Navigation</title>
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
                <i class="fas fa-route"></i>
                Navigation
            </h2>
            <div class="col-md-1 offset-1 d-flex align-items-center">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-dark" NavigateUrl="~/Home.aspx">
                    <i class="fas fa-home"></i>
                </asp:HyperLink>
            </div>
        </div>
        <div>
            <ul>
                <li>
                    <asp:HyperLink runat="server" ID="hlHome" Text="Home" NavigateUrl="~/Navigation.aspx#home"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink runat="server" ID="hlAbout" Text="About University" NavigateUrl="~/Navigation.aspx#about"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink runat="server" ID="hlCourse" Text="Courses Run by University" NavigateUrl="~/Navigation.aspx#course"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink runat="server" ID="hlDepartment" Text="Department" NavigateUrl="~/Navigation.aspx#department"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink runat="server" ID="hlStaff" Text="Staff Member" NavigateUrl="~/Navigation.aspx#staff"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink runat="server" ID="hlNews" Text="News" NavigateUrl="~/Navigation.aspx#news"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink runat="server" ID="hlContact" Text="Contact" NavigateUrl="~/Navigation.aspx#contact"></asp:HyperLink>
                </li>
            </ul>
        </div>
        <div>
            <h1 id="home">Home</h1>
            <h2>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsamLorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?
            </h2>
            <h1 id="about">About University</h1>
            <h2>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsamLorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?
            </h2>
            <h1 id="course">Courses Run by University</h1>
            <h2>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsamLorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?
            </h2>
            <h1 id="department">Department</h1>
            <h2>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsamLorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?
            </h2>
            <h1 id="staff">Staff Member</h1>
            <h2>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsamLorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?
            </h2>
            <h1 id="news">News</h1>
            <h2>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsamLorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?
            </h2>
            <h1 id="contact">Contact</h1>
            <h2>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsamLorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor magnam soluta et. Minima non commodi eaque aspernatur qui asperiores, ratione, deleniti iure quos libero fugit quae nostrum excepturi harum ipsam?
            </h2>
        </div>
    </form>
</body>
</html>
