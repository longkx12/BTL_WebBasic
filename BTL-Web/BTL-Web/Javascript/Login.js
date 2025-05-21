    document.querySelector(".login__form").addEventListener('submit', (event) => {
        const account = document.querySelector(".login__input-account");
        const password = document.querySelector(".login__input-password");
        if (account.value === '' || password.value === '') {
            alert("Vui lòng điền đủ các trường")
            event.preventDefault();
            username.focus();
            return;
        }

        if (password.length < 8) {
            alert('Mật khẩu phải lớn hơn 8 kí tự');
            event.preventDefault();
            password.focus();
            return
        }
    })