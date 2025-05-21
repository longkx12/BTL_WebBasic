document.getElementById("register__form").addEventListener("submit", (event) => {
    const account = document.querySelector(".register__input-acount");
    const username = document.querySelector(".register__input-username");
    const password = document.querySelector(".register__input-password");
    const passwordConfirm = document.querySelector(".register__input-confirm-password");
    if (account.value==='') {
        alert("Vui lòng nhập tài khoản");
        event.preventDefault();
        account.focus();
        return;
    }
    if (username.value === "") {
        alert("Vui lòng nhập tên người dùng");
        event.preventDefault();
        username.focus();
        return;
    }
    if (password.value === "") {
        alert("Vui lòng nhập mật khẩu");
        event.preventDefault();
        password.focus();
        return;
    }
    if (passwordConfirm.value === "") {
        alert("Vui lòng nhập mật khẩu xác nhận");
        event.preventDefault();
        passwordConfirm.focus();
        return;
    }

    if (password.length < 8) {
        alert('Mật khẩu phải lớn hơn 8 ký tự');
        event.preventDefault();
        return;
    }

    if (password.value !== passwordConfirm.value) { 
        alert('Mật khẩu và mật khẩu xác nhận không giống nhau');
        event.preventDefault();
        return;
    }

   
})