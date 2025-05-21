<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BTL_Web.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electric Store</title>
    <link rel="stylesheet" href="./CSS/Register.css">
    <link rel="stylesheet" href="./CSS/base.css">
    <link rel="stylesheet" href="./CSS/responsive.css">
</head>
<body>
    <div class="register__wrap">
        <div class="register__logo">
            <a href="Home.aspx">
                <img src="./Image/Header/Geekbuying.png" alt="Geekbuying">
            </a>
        </div>
        <div class="wrap">
            <form class="register__form" id="register__form" method="post" runat="server">

                <input type="text" id="account" name="account" class="register__input-account"
                    placeholder="Email or Phone Number">

                <input type="text" id="username" name="username" class="register__input-username"
                    placeholder="Username">

                <asp:Label ID="ErrorMessageLabel" runat="server" Text="" ForeColor="Red" Font-Size="16px" Style="display: flex; justify-content: center; align-items: center;"></asp:Label>



                <input type="text" id="password" name="password" class="register__input-password"
                    placeholder="Password">

                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Font-Size="16px" Style="display: flex; justify-content: center; align-items: center;"></asp:Label>


                <input type="text" id="confirm-password" name="confirm-password"
                    class="register__input-confirm-password" placeholder="Confirm passsword">

                <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red" Font-Size="16px" Style="display: flex; justify-content: center; align-items: center;"></asp:Label>

                <input type="submit" value="Đăng ký" class="register__input-submit">
                <div class="seperate-space"></div>
            </form>
            <button class="register__button-register">
                <a class="register__button-link" href="Login.aspx">Đăng nhập</a>
            </button>
        </div>
    </div>
    <script src="Javascript/Register.js"></script>
</body>
</html>