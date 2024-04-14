<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BTL_Web.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/Login.css">
</head>
<body>
    <form runat="server">
        <div class="logo">
            <a href="">
                <img src="./image/Logo.png" alt="Logo"></a>
            <p id="allUs" runat="server">allUS</p>
        </div>
        <div class="login_index">
            <span class="login_title">
                <p>Đăng nhập/Tạo tài khoản</p>
            </span>
            <span class="login_dec">
                <p>E-mail</p>
            </span>

            <label for="login_email" class="login_input">
                <input type="text" name="email" class="login_input" id="login_email" placeholder="Nhập địa chỉ E-mail" maxlength="60" autocomplete="off">
            </label>
            <label for="login_password" class="login_input">
                <input type="password" name="password" id="login_password" placeholder="Nhập mật khẩu">
            </label>
            <asp:Button ID="login_btn" runat="server" Text="Đăng nhập" OnClick="Login_Click" CssClass="login_btn" />
            <p id="msg" runat="server"></p>
            <div class="line_or">
                <span>Chưa có tài khoản, hãy đăng ký</span>
            </div>
            <input type="button" class="register_btn" id="register_btn" value="Đăng ký">

            <div class="login_agreement">
                Bằng cách tiếp tục, bạn đồng ý với chúng tôi
            <a href="#">Điều khoản sử dụng</a>
                &
            <a href="#">Chính sách bảo mật</a>
            </div>
            <span id="loginClose" class="login_close"></span>
        </div>
    </form>
</body>
</html>
