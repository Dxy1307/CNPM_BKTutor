<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="updateUserAPI" value="/api/cap-nhat-thong-tin"/>
<c:url var="updateInfor" value="/cap-nhat-thong-tin-ca-nhan"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng ký</title>
</head>
<body>
<%--<div class="container">--%>
    <%--<h2>Cập nhật thông tin cá nhân</h2>--%>
    <%--<form:form role="form" id="formUpdateInfor" modelAttribute="model" enctype="multipart/form-data">--%>
        <%--<div>--%>
            <%--<label for="fullName">Họ tên</label>--%>
            <%--<form:input path="fullName" type="text" id="fullName"/>--%>
        <%--</div>--%>

        <%--<div>--%>
            <%--<label for="birthday">Ngày sinh</label>--%>
            <%--<form:input path="birthday" type="date" id="birthday"/>--%>
        <%--</div>--%>

        <%--<div>--%>
            <%--<label for="phone">Số điện thoại</label>--%>
            <%--<form:input path="phone" type="text" id="phone"/>--%>
        <%--</div>--%>

        <%--<div>--%>
            <%--<label for="email">Email</label>--%>
            <%--<form:input path="email" type="email" id="email"/>--%>
        <%--</div>--%>

        <%--<div>--%>
            <%--<label for="hometown">Quê quán</label>--%>
            <%--<form:input path="hometown" type="text" id="hometown"/>--%>
        <%--</div>--%>

        <%--<div>--%>
            <%--<label for="address">Địa chỉ liên hệ</label>--%>
            <%--<form:input path="address" type="text" id="address"/>--%>
        <%--</div>--%>

        <%--<div>--%>
            <%--<label for="gender">Gender</label>--%>
            <%--<form:radiobutton path="gender" value="Nam" id="gender" label="Nam"/>--%>
            <%--<form:radiobutton path="gender" value="Nữ" id="gender" label="Nữ"/>--%>
        <%--</div>--%>

        <%--<div>--%>
            <%--<label for="advantage">Ưu điểm</label>--%>
            <%--<form:input path="advantage" type="text" id="advantage"/>--%>
        <%--</div>--%>

        <%--<div>--%>
            <%--<img id="image" src="${model.avatar}" style="width: 50px; height: 50px;">--%>
            <%--<label for="avatar">Avatar</label>--%>
            <%--<form:input path="avatar" type="file" id="avatar" accept=".jpg, .jpeg, .png; capture=camera" onchange="encodeImageFileAsURL(this)"/>--%>
        <%--</div>--%>

        <%--<form:hidden path="id" id="userID"/>--%>

        <%--<button type="button" class="btn btn-primary" id="btnUpdate" name="btnUpdate">Lưu</button>--%>
    <%--</form:form>--%>
<%--</div>--%>

<div class="adm-main">
    <div class="container">
        <div class="box-adm">
            <div class="left-adm" style="min-width: 300px;">
                <div class="user-adm">
                    <div class="cover-i-user">
                        <span>
                            <c:if test="${not empty model.avatar}">
                                <img src="${model.avatar}">
                            </c:if>
                            <c:if test="${empty model.avatar}">
                                ${model.fullName.substring(0, 2).toUpperCase()}
                            </c:if>
                        </span>
                    </div>
                    <div class="txt-i-user">
                        <strong>${model.fullName}</strong><br>
                        <span>${model.email}</span>
                    </div>
                </div>
                <div class="nav-adm">
                    <ul>
                        <li class="active">
                            <a href="" aria-current="page" class="">Cập nhật thông tin cá nhân</a>
                        </li>
                        <li class=""><a href="<c:url value="/dang-ky-gia-su?id=${model.id}"/>" class="">Đăng ký làm gia sư</a></li>
                        <!---->
                        <c:if test="${model.roleCode eq 'TUTOR'}">
                            <li class=""><a href="<c:url value="/sinh-vien-tao-lop?Id_Nguoitao=${model.id}"/>" class=""><span> GS tạo lớp tuyển học sinh </span></a></li> <!---->
                        </c:if>
                        <li class=""><a href="<c:url value="/phu-huynh-tao-lop?Id_Nguoitao=${model.id}"/>" class=""><span> PH tạo lớp tìm gia sư </span></a></li> <!---->
                        <%--<li class=""><a href="<c:url value="/trang-thai-lop"/>">Trạng thái lớp</a></li>--%>
                        <li class=""><a href="" class="">Thay đổi mật khẩu</a></li>
                        <li><a href="<c:url value="/thoat"/>">Đăng xuất</a></li>
                    </ul>
                </div>
            </div>
            <div>
                <!--Menu phải-->
                <!--Class form-control và form-group trong bootstrap-->
                <div class="right-adm w-100">
                    <form:form role="form" id="formUpdateInfor" modelAttribute="model" enctype="multipart/form-data">
                        <div class="content-right-adm w-100">
                            <div class="title-adm">
                                <h2>Cập nhật thông tin cá nhân</h2>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="fullName">Họ tên</label>
                                        <form:input path="fullName" id="fullName" type="text" class="form-control" fdprocessedid=""/> <!---->
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="birthday">Ngày sinh</label>
                                        <form:input path="birthday" id="birthday" type="date" class="form-control"/> <!---->
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="phone">Số điện thoại</label>
                                        <form:input path="phone" id="phone" type="text" name="" class="form-control" fdprocessedid=""/> <!---->
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <form:input path="email" id="email" type="email" class="form-control" fdprocessedid="yg2v7i"/> <!---->
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="hometown">Quê quán</label>
                                        <form:input path="hometown" id="hometown" type="text" class="form-control" fdprocessedid=""/> <!---->
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="address">Địa chỉ liên hệ</label>
                                        <form:input path="address" id="address" type="text" name="" class="form-control" fdprocessedid=""/> <!---->
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group d-flex flex-column">
                                        <label for="gender" class="m-0 mr-1">Giới tính</label>
                                        <div class="d-flex flex-row">
                                            <div class="mx-1 d-flex align-items-center">
                                                <form:radiobutton path="gender" value="Nam" id="gender" label="Nam" class="form-control-sm mr-1"/>
                                            </div>
                                            <div class="mx-1 d-flex align-items-center">
                                                <form:radiobutton path="gender" value="Nữ" id="gender" label="Nữ" class="form-control-sm mr-1"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="advantage">Ưu điểm <!----></label>
                                        <form:textarea path="advantage" id="advantage" class="form-control" title=""/> <!---->
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Avatar</label>
                                        <div>
                                            <div>
                                                <ul class="position-relative">
                                                    <li class="cursor-pointer box-pic"><!---->
                                                        <c:if test="${not empty model.avatar}">
                                                            <img src="${model.avatar}"
                                                                 id="image" alt="" class="img-custom">
                                                        </c:if>
                                                        <c:if test="${empty model.avatar}">
                                                            <img src="<c:url value="/template/web/quan/vn/storage/avatar/no-image-user.jpg"/>"
                                                                 id="image" alt="" class="img-custom">
                                                        </c:if>
                                                    </li>
                                                </ul>
                                            </div>
                                            <form:input path="avatar" type="file" id="avatar" name="avatar"
                                                   accept="image/*;capture=camera" class="d-none" onchange="encodeImageFileAsURL(this)"/>
                                            <label for="avatar" class="btn btn-secondary">Chọn ảnh</label>
                                        </div> <!---->
                                    </div>
                                </div>
                                <form:hidden path="id" id="userID"/>
                            </div>
                        </div>
                        <div class="bottom-right-adm">
                            <button type="button" class="btn btn-primary" fdprocessedid="" id="btnUpdate" name="btnUpdate">Lưu</button>
                        </div>
                    </form:form>
                </div> <!---->
            </div>
        </div>
    </div>
</div>

<script>
    let id = $('#userID').val();
    let oldPhone = $('#phone').val();
    let currPhone = oldPhone;

    let oldEmail = $('#email').val();
    let currEmail = oldEmail;

    let emailData = ${emaildata};
    let phoneData = ${phonedata};

    let reima;
    function encodeImageFileAsURL(element) {
        let file = element.files[0];
        let reader = new FileReader();
        reader.onloadend = function() {
            reima = reader.result;
        };
        reader.onload = function(e) {
          $('#image').attr('src', e.target.result);
        };
        reader.readAsDataURL(file);
    }

    $('#btnUpdate').click(function (e) {
       e.preventDefault();
       let data = {};
       let formData = $('#formUpdateInfor').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        data["avatar"] = reima;
        let fullName = $('#fullName').val();
        let newPhone = $('#phone').val();
        let newEmail = $('#email').val();
        if (fullName == "") {
            notiError("Vui lòng nhập tên người dùng");
        } else if(newPhone == "") {
            notiError("Vui lòng nhập số điện thoại");
        } else if(newEmail == "") {
            notiError("Vui lòng nhập email");
        } else if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(newEmail) == false) {
            notiError("Vui lòng nhập đúng định dạng email");
        } else if(newPhone != currPhone && newPhone != oldPhone && phoneData.includes(newPhone)) {
            notiError("Số điện thoại đã tồn tại");
        } else if(newEmail != currEmail && newEmail != oldEmail && emailData.includes(newEmail)) {
            notiError("Email đã tồn tại");
        } else {
            updateUser(data);
            currEmail = newEmail;
            currPhone = newPhone;
        }
    });

    function updateUser(data) {
        $.ajax({
            url: '${updateUserAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                notiSuccess("Cập nhật thông tin cá nhân thành công");
            },
            error: function (error) {
                notiError("Cập nhật thông tin cá nhân thất bại");
            }
        });
    }

    function notiError(notiMessage) {
        Swal.fire({
            title: "Thông báo",
            text: notiMessage,
            icon: "warning"
        });
    }

    function notiSuccess(notiMessage) {
        Swal.fire({
            title: "Thông báo",
            text: notiMessage,
            icon: "success"
        }).then((result) => {
            if(result.isConfirmed) {
                window.location.href = "${updateInfor}?id="+id;
            }
        });
    }
</script>

</body>