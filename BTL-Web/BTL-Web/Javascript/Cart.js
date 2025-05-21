function change() {
    let SoLuong = event.target;
    let sThanhTien = event.target.parentElement.nextElementSibling;
    let sGia = event.target.parentElement.previousElementSibling.lastElementChild.innerText;
    console.log(SoLuong);
    console.log(sThanhTien);
    console.log(sGia);
    let ssubTotal = document.getElementById("subTotalBox");
    let SubTotal = ssubTotal.innerHTML.split("$");
    let Total = sThanhTien.innerText.split("$");
    let Price = sGia.split("$");
    let output = parseFloat(parseFloat(SoLuong.value) * parseFloat(Price[1]));
    let NewSubTotal = parseFloat(SubTotal[1]) + (output - parseFloat(Total[1]));
    sThanhTien.innerHTML = "$" + Math.round(output);
    ssubTotal.innerHTML = "$" + Math.round(NewSubTotal);
}