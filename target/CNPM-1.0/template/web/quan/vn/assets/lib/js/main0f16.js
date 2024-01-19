var showMessOk = (msg, status, noti = false) => {
    Swal.fire(!noti ? "Thông báo" : noti, msg, status);
};
function registerNow(modal_id,login,ms,subject,fee,obj_name = 'teacher'){
    if((login && obj_name == 'teacher') ||  (obj_name == 'academy'))
    {
        $(`#${modal_id}`).modal('show');
        $(`#dangkyhoc-ms`).html(ms)
        $(`#dangkyhoc-subject`).html(subject)
        $(`#dangkyhoc-province`).html(fee)
        $(`#dangkyhoc-id`).val(ms)
        $(`#dangkyhoc-object`).val(obj_name)
        if(obj_name == 'academy')
          $('#academy_toggle').removeClass('d-none')
        if(obj_name == 'teacher')
          $('#academy_toggle').addClass('d-none')
    }else
        showMessOk("Vui lòng đăng nhập để đăng ký học!","warning");
}
function getClassNow(modal_id,login,ms,subject,fee){
    if(login)
    {
        $(`#${modal_id}`).modal('show');
        $(`#nhanlop-ms`).html(ms)
        $(`#nhanlop-subject`).html(subject)
        $(`#nhanlop-province`).html(fee)
        $(`#nhanlop-id`).val(ms)
    }else
        showMessOk("Vui lòng đăng nhập để nhận lớp học!","warning");
}
function changeTypePassword(id,event){
    let password_origin = document.getElementById(id);
    if(password_origin.type == 'password')
    {
        password_origin.type = 'text';
        event.target.classList.remove("fa-eye");
        event.target.classList.remove("fa-eye");
        event.target.classList.add("fa-eye-slash");
        return
    }
    if(password_origin.type == 'text')
    {
        password_origin.type = 'password';
        event.target.classList.remove("fa-eye-slash");
        event.target.classList.remove("fa-eye-slash");
        event.target.classList.add("fa-eye");
        return
    }

}
function setMaxHeight(elems,h = 0){
    var panels = document.querySelectorAll(elems);

   // You'll need to slice the node_list before using .map()
   var heights = Array.prototype.slice.call(panels).map(function (panel) {
       // return an array to hold the item and its value
       return [panel, panel.offsetHeight];
   });

   var sortedHeights = heights.sort(function(a, b) { return a[1] > b[1]});
   if(sortedHeights.length > 0)
   {
      $(elems).css('height',(sortedHeights[0][1] +h)+'px');
   }

}
var redirectToTeacher = (url)=>{
window.location.href=url;
}
// $(document).on(
//     "click.bs.dropdown.data-api",
//     '[data-toggle="collapse"]',
//     function (e) {
//         e.stopPropagation();
//     }
// );
// var removeItem = (path, msg = false,title = false) => {
//     Swal.fire({
//         title: !title? "Thông báo"  : title,
//         text: !msg ? "Bạn chắc chắn xóa?" : msg,
//         icon: "warning",
//         showCancelButton: true,
//         confirmButtonColor: "#3085d6",
//         cancelButtonColor: "#d33",
//         confirmButtonText: "Đồng ý",
//         cancelButtonText: "Hủy",
//     }).then((result) => {
//         if (result.isConfirmed) {
//             window.location.href = path;
//         }
//     });
// };
// var removeItemPost = async (path, id, msg = false) => {
//     Swal.fire({
//         title: "Thông báo",
//         text: !msg ? "Bạn chắc chắn xóa?" : msg,
//         icon: "warning",
//         showCancelButton: true,
//         confirmButtonColor: "#3085d6",
//         cancelButtonColor: "#d33",
//         confirmButtonText: "Đồng ý",
//         cancelButtonText: "Hủy",
//     }).then(async (result) => {
//         if (result.isConfirmed) {
//             await axios
//                 .post(path, { id: id })
//                 .then((res) => {
//                     showMessOk(res.data.msg, "success");
//                 })
//                 .catch((error) => {
//                     reject(error);
//                 });
//         }
//     });
// };
// var CoppyUrl = (url) =>{
//     // navigator.clipboard.writeText(url);
//     var input = document.createElement('textarea');
//     input.innerHTML = url;
//     document.body.appendChild(input);
//     input.select();
//     var result = document.execCommand('copy');
//     document.body.removeChild(input);
//     showMessOk('Coppy thành công!','success');
//     // return result;
// }
// class FileList {
//     constructor(...items) {
//         // flatten rest parameter
//         items = [].concat(...items);
//         // check if every element of array is an instance of `File`
//         if (items.length && !items.every(file => file instanceof File)) {
//         throw new TypeError("expected argument to FileList is File or array of File objects");
//         }
//         // use `ClipboardEvent("").clipboardData` for Firefox, which returns `null` at Chromium
//         // we just need the `DataTransfer` instance referenced by `.clipboardData`
//         const dt = new ClipboardEvent("").clipboardData || new DataTransfer();
//         // add `File` objects to `DataTransfer` `.items`
//         for (let file of items) {
//         dt.items.add(file)
//         }
//         return dt.files;
//     }
// };
// var changeCategoryContent = () => {
//      if($('select[name="category_id"]').val() == 1)
//         $('#price_name').html('Mức lương')
//      if($('select[name="category_id"]').val() == 2)
//         $('#price_name').html('Mức giá')
//      if($('select[name="category_id"]').val() != 2 && $('select[name="category_id"]').val() != 1)
//         $('#price_name').html('Giá');
// };

// var showMessOk = (msg, status, noti = false) => {
//     Swal.fire(!noti ? "Thông báo" : noti, msg, status);
// };
// var removeImage = (msg = false, title = false) => {
//     return new Promise((resolve, reject) => {
//         Swal.fire({
//             title: !title ? "Thông báo" : title,
//             text: !msg ? "Bạn chắc chắn xóa?" : msg,
//             icon: "warning",
//             showCancelButton: true,
//             confirmButtonColor: "#3085d6",
//             cancelButtonColor: "#d33",
//             confirmButtonText: "Đồng ý",
//             cancelButtonText: "Hủy",
//         }).then((result) => {
//             if (result.isConfirmed) resolve(true);
//             else reject(false);
//         });
//     });
// };
// var alertRemove = () => {
//     let cof = confirm("Bạn chắc chắn xóa?");
//     return cof;
// };

// var alertUpdateStatus = () => {
//     let cof = confirm("Bạn chắc chắn cập nhật trạng thái?");
//     return cof;
// };

// $(document).ready(function () {
//     $("#carousel-page").owlCarousel({
//         loop: true,
//         autoplay: true,
//         autoplayTimeout: 3000,

//         // margin: 10,
//         nav: true,
//         dots: true,
//         navText: [
//             '<i class="fa fa-angle-left" aria-hidden="true"></i>',
//             '<i class="fa fa-angle-right" aria-hidden="true"></i>',
//         ],
//         responsive: {
//             0: {
//                 items: 1,
//             },
//             600: {
//                 items: 1,
//             },
//             1000: {
//                 items: 1,
//             },
//         },
//     });
// });
