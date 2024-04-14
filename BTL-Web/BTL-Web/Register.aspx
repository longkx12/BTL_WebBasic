<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BTL_Web.Register" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/Register.css">
</head>
<body>
    <div class="logo">
        <a href="">
            <img src="./image/Logo.png" alt="Logo"></a>
    </div>
    <div class="register_index">
        <form runat="server">
            <span class="register_title">
                <p>Đăng ký</p>
            </span>

            <span class="register_dec">
                <p>E-mail</p>
            </span>
            <label for="register_email" class="register_input">
                <input type="text" class="register_input" name="email" id="register_email" placeholder="Nhập địa chỉ E-mail" maxlength="60" autocomplete="off">
            </label>

            <span class="register_dec">
                <p>Mật khẩu</p>
            </span>
            <label for="register_password" class="register_input">
                <input type="password" name="register_input" id="register_password" placeholder="Nhập mật khẩu">
            </label>

            <span class="register_dec">
                <p>Nhập lại mật khẩu</p>
            </span>
            <label for="confirm_password" class="register_input">
                <input type="password" name="confirm_password" id="confirm_password" placeholder="Nhập lại mật khẩu">
            </label>

            <asp:Button ID="register_btn" runat="server" Text="Đăng ký" OnClick="registerUser" CssClass="register_btn" />

            <div class="line_or">
                <span>Đã có tài khoản? Đăng nhập ngay</span>
            </div>
            <input type="button" class="login_btn" id="login_btn" value="Đăng nhập">

            <div class="register_agreement">
                Bằng cách tiếp tục, bạn đồng ý với chúng tôi
            <a href="#">Điều khoản sử dụng</a>
                &
            <a href="#">Chính sách bảo mật</a>
            </div>
            <span id="registerClose" class="register_close"></span>
        </form>
    </div>

</body>
</html>
