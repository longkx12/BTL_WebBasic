<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BTL_Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electric Store</title>
    <link rel="stylesheet" href="./CSS/base.css">
    <link rel="stylesheet" href="./CSS/responsive.css">
    <link rel="stylesheet" href="./CSS/Login.css">
</head>
</head>
<body>
    <div class="login__wrap">
        <div class="login__logo">
            <a href="Home.aspx">
                <img src="./Image/Header/Geekbuying.png" alt="Geekbuying">
            </a>
        </div>
        <div class="wrap">
            <form class="login__form" method="post" runat="server">
                <input type="text" name="account" class="login__input-account" placeholder="Email or Phone Number">
                <input type="password" name="password" class="login__input-password" placeholder="Password">
                <input type="submit" value="Đăng Nhập" class="login__input-submit">
                <asp:Label ID="ErrorMessageLabel" runat="server" Text="" ForeColor="Red" Font-Size="16px" Style="display: flex; justify-content: center; align-items: center;"></asp:Label>
                <div class="seperate-space"></div>
            </form>
            <button class="login__button-register">
                <a class="login__button-link" href="Register.aspx">Đăng Ký</a>
            </button>
        </div>
    </div>
    <script src="Javascript/Login.js"></script>
</body>
</html>