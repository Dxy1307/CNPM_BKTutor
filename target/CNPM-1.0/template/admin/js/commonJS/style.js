$(document).ready(function() {
    // Xác định trang hiện tại hoặc thẻ li được chọn ban đầu
    let currentPath = window.location.pathname;
    let subCurrentPath = currentPath.substr(0, currentPath.length - 9);

    // Lặp qua tất cả các thẻ li và kiểm tra xem li có đường dẫn tương ứng không
    $("#menu .items ul li a").each(function() {
        let linkPath = $(this).attr("href");

        if (linkPath.includes(currentPath) || linkPath.includes(subCurrentPath) && subCurrentPath !== "/quan-tri/") {
            $(this).parent().addClass("active_box"); // Thêm lớp active nếu là trang hiện tại
        }
    });
});