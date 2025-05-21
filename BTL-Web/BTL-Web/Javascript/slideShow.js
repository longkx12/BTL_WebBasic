const listImg = document.querySelector(".slideShow-listImg");
const imgs = document.querySelectorAll(".img");
const btnLeft = document.querySelector(".slideShow-left");
const btnRight = document.querySelector(".slideShow-right");

let current = 0;
const handleChangeSlide = () => {
    current = (current + 1) % imgs.length;
    const width = imgs[0].offsetWidth;
    listImg.style.transform = `translateX(-${width * current}px)`;
};

let handleSetInterval = setInterval(handleChangeSlide, 4000);

btnRight.addEventListener("click", () => {
    clearInterval(handleSetInterval);
    handleChangeSlide();
    handleSetInterval = setInterval(handleChangeSlide, 4000);
});
btnLeft.addEventListener("click", () => {
    clearInterval(handleSetInterval);
    current = (current - 1 + imgs.length) % imgs.length;
    const width = imgs[0].offsetWidth;
    listImg.style.transform = `translateX(-${width * current}px)`;
    handleSetInterval = setInterval(handleChangeSlide, 4000);
});

    function confirmDelete() {
        if (confirm("Bạn có muốn xóa sản phẩm này không?")) {
        window.location.href = "Xoa.aspx";
        }
    }


