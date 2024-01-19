<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="registerClassPH" value="/api/ph-tao-lop"/>
<c:url var="PHRegisterClass" value="/phu-huynh-tao-lop"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Phụ huynh gửi đăng ký lớp</title>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
        }

        button {
            display: inline-block;
            margin: 5px 5px 0 0;
            padding: 10px 30px;
            outline: 0;
            border: 0;
            cursor: pointer;
            background: #5185a8;
            color: #fff;
            text-decoration: none;
            font-family: arial, verdana, sans-serif;
            font-size: 14px;
            font-weight: 100;
        }

        input {
            width: 100%;
            margin: 0 0 5px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 0;
            font-family: arial, verdana, sans-serif;
            font-size: 14px;
            box-sizing: border-box;
            -webkit-appearance: none;
        }

        .mbsc-page {
            padding: 1em;
        }

    </style>
</head>
<body>
<%--<div class="container">--%>
    <%--<h2>Phụ huynh gửi đăng ký lớp</h2>--%>
    <%--<form:form role="form" id="formRegisterClassPH" modelAttribute="model">--%>
        <%--<div>--%>
            <%--<label for="diadiem">Địa điểm</label>--%>
            <%--<form:input path="diadiem" type="text" id="diadiem"/>--%>
        <%--</div>--%>

        <%--<div>--%>
            <%--<label for="hinhthuc">Hình thức</label>--%>
            <%--<form:input path="hinhthuc" id="hinhthuc"/>--%>
        <%--</div>--%>

        <%--<div>--%>
            <%--<label for="monday">Môn dạy</label>--%>
            <%--<form:input path="monday" type="text" id="monday"/>--%>
        <%--</div>--%>

        <%--<form:hidden path="id_Nguoitao" id="userID"/>--%>
        <%--<button type="button" class="btn btn-primary" id="btnRegisterClassPH" name="btnRegisterClassPH">Lưu</button>--%>
    <%--</form:form>--%>
<%--</div>--%>

<div class="adm-main">
    <div class="container">
        <div class="box-adm">
            <div class="left-adm">
                <div class="user-adm">
                    <div class="cover-i-user">
                        <span>
                            <c:if test="${not empty user.avatar}">
                                <img src="${user.avatar}">
                            </c:if>
                            <c:if test="${empty user.avatar}">
                                ${user.fullName.substring(0, 2).toUpperCase()}
                            </c:if>
                        </span>
                    </div>
                    <div class="txt-i-user">
                        <strong>${user.fullName}</strong><br>
                        <span>${user.email}</span>
                    </div>
                </div>
                <div class="nav-adm">
                    <ul>
                        <li class=""><a href="<c:url value="/cap-nhat-thong-tin-ca-nhan?id=${user.id}"/>" aria-current="page" class="">Cập nhật thông tin cá nhân</a></li>
                        <li class=""><a href="<c:url value="/dang-ky-gia-su?id=${user.id}"/>" class="">Đăng ký làm gia sư</a></li>
                        <!---->
                        <c:if test="${user.roleCode eq 'TUTOR'}">
                            <li class=""><a href="<c:url value="/sinh-vien-tao-lop?Id_Nguoitao=${user.id}"/>" class=""><span> GS tạo lớp tuyển học sinh </span></a></li> <!---->
                        </c:if>
                        <li class="active"><a href="" class=""><span> PH tạo lớp tìm gia sư </span></a></li> <!---->
                        <%--<li class=""><a href="<c:url value="/trang-thai-lop"/>">Trạng thái lớp</a></li>--%>
                        <li class=""><a href="" class="">Thay đổi mật khẩu</a></li>
                        <li><a href="<c:url value="/thoat"/>">Đăng xuất</a></li>
                    </ul>
                </div>
            </div>
            <div class="right-adm">
                <!--Menu phải-->
                <form:form role="form" id="formRegisterClassPH" modelAttribute="model">
                    <div class="content-right-adm">
                        <div class="title-adm">
                            <h2><span>Tạo</span> lớp
                            </h2>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="monday">Môn dạy</label>
                                    <div>
                                        <form:select path="monday" id="monday" class="form-control">
                                            <form:option value="">Môn học</form:option>
                                            <form:option index="0" value="Toán">Toán</form:option>
                                            <form:option index="1" value="Toán Tiếng Anh">Toán Tiếng Anh</form:option>
                                            <form:option index="2" value="Văn">Văn (Tiếng Việt)</form:option>
                                            <form:option index="3" value="Vật Lý">Vật Lý</form:option>
                                            <form:option index="4" value="Hóa">Hóa</form:option>
                                            <form:option index="5" value="Sinh">Sinh</form:option>
                                            <form:option index="6" value="Tiếng Anh">Tiếng Anh</form:option>
                                            <form:option index="7" value="Sử">Sử</form:option>
                                            <form:option index="8" value="Địa">Địa</form:option>
                                            <form:option index="9" value="Tin Học">Tin Học</form:option>
                                            <form:option index="10" value="Nhạc">Nhạc</form:option>
                                            <form:option index="11" value="Cờ Tướng">Cờ Tướng</form:option>
                                            <form:option index="12" value="Cờ Vua">Cờ Vua</form:option>
                                        </form:select>
                                    </div> <!---->
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="trinhdo">Lớp</label>
                                    <div>
                                        <form:select path="trinhdo" id="trinhdo" class="form-control" >
                                            <form:option value="">Lớp</form:option>
                                            <form:option index="0" value="1">LỚP 1</form:option>
                                            <form:option index="1" value="2">LỚP 2</form:option>
                                            <form:option index="2" value="3">LỚP 3</form:option>
                                            <form:option index="3" value="4">LỚP 4</form:option>
                                            <form:option index="4" value="5">LỚP 5</form:option>
                                            <form:option index="5" value="6">LỚP 6</form:option>
                                            <form:option index="6" value="7">LỚP 7</form:option>
                                            <form:option index="7" value="8">LỚP 8</form:option>
                                            <form:option index="8" value="9">LỚP 9</form:option>
                                            <form:option index="9" value="10">LỚP 10</form:option>
                                            <form:option index="10" value="11">LỚP 11</form:option>
                                            <form:option index="11" value="12">LỚP 12</form:option>
                                        </form:select>
                                    </div> <!---->
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="hinhthuc">Hình thức học</label>
                                    <form:select path="hinhthuc" id="hinhthuc" class="form-control">
                                        <form:option value="Online">Online</form:option>
                                        <form:option value="Offline">Offline</form:option>
                                    </form:select>
                                </div>
                            </div>
                            <div mbsc-page class="col-sm-6 demo-multiple-select" style="background-color: unset; padding-left: 0; padding-right: 0;">
                                <div class="form-group">
                                    <label for="thoigian">
                                        <span>Thứ</span>
                                        <input mbsc-input id="demo-multiple-select-input" placeholder="Chọn ngày học" data-dropdown="true" data-input-style="outline" data-label-style="stacked" data-tags="true" />
                                    </label>
                                        <%--<div>--%>
                                    <form:select path="thoigian" class="form-control" id="demo-multiple-select" multiple="true">
                                        <form:option value="Thứ Hai" selected="${model.thoigians.contains('Thứ Hai') ? 'selected' : ''}">Thứ Hai</form:option>
                                        <form:option value="Thứ Ba" selected="${model.thoigians.contains('Thứ Ba') ? 'selected' : ''}">Thứ Ba</form:option>
                                        <form:option value="Thứ Tư" selected="${model.thoigians.contains('Thứ Tư') ? 'selected' : ''}">Thứ Tư</form:option>
                                        <form:option value="Thứ Năm" selected="${model.thoigians.contains('Thứ Năm') ? 'selected' : ''}">Thứ Năm</form:option>
                                        <form:option value="Thứ Sáu" selected="${model.thoigians.contains('Thứ Sáu') ? 'selected' : ''}">Thứ Sáu</form:option>
                                        <form:option value="Thứ Bảy" selected="${model.thoigians.contains('Thứ Bảy') ? 'selected' : ''}">Thứ Bảy</form:option>
                                        <form:option value="Chủ Nhật" selected="${model.thoigians.contains('Chủ Nhật') ? 'selected' : ''}">Chủ Nhật</form:option>
                                    </form:select>
                                        <%--</div> <!---->--%>
                                </div>
                            </div>
                                <%--<div class="col-sm-6">--%>
                                <%--<div class="form-group">--%>
                                <%--<label>Nơi học</label>--%>
                                <%--<select class="form-control" >--%>
                                <%--<option value="">Tỉnh thành</option>--%>
                                <%--<option index="0" value="1">Thành phố Hà Nội</option>--%>
                                <%--</select> <!---->--%>
                                <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="col-sm-6">--%>
                                <%--<div class="form-group">--%>
                                <%--<label>&nbsp;</label>--%>
                                <%--<select class="form-control">--%>
                                <%--<option value="">Quận huyện</option>--%>
                                <%--<option index="0" value="Quận Ba Đình">Quận Ba Đình</option>--%>
                                <%--<option index="1" value="Quận Hoàn Kiếm">Quận Hoàn Kiếm</option>--%>
                                <%--<option index="2" value="Quận Tây Hồ">Quận Tây Hồ</option>--%>
                                <%--<option index="3" value="Quận Long Biên">Quận Long Biên</option>--%>
                                <%--<option index="4" value="Quận Cầu Giấy">Quận Cầu Giấy</option>--%>
                                <%--<option index="5" value="Quận Đống Đa">Quận Đống Đa</option>--%>
                                <%--<option index="6" value="Quận Hai Bà Trưng">Quận Hai Bà Trưng</option>--%>
                                <%--<option index="7" value="Quận Hoàng Mai">Quận Hoàng Mai</option>--%>
                                <%--<option index="8" value="Quận Thanh Xuân">Quận Thanh Xuân</option>--%>
                                <%--<option index="9" value="Huyện Sóc Sơn">Huyện Sóc Sơn</option>--%>
                                <%--<option index="10" value="Huyện Đông Anh">Huyện Đông Anh</option>--%>
                                <%--<option index="11" value="Huyện Gia Lâm">Huyện Gia Lâm</option>--%>
                                <%--<option index="12" value="Quận Nam Từ Liêm">Quận Nam Từ Liêm</option>--%>
                                <%--<option index="13" value="Huyện Thanh Trì">Huyện Thanh Trì</option>--%>
                                <%--<option index="14" value="Quận Bắc Từ Liêm">Quận Bắc Từ Liêm</option>--%>
                                <%--<option index="15" value="Huyện Mê Linh">Huyện Mê Linh</option>--%>
                                <%--<option index="16" value="Quận Hà Đông">Quận Hà Đông</option>--%>
                                <%--<option index="17" value="Thị xã Sơn Tây">Thị xã Sơn Tây</option>--%>
                                <%--<option index="18" value="Huyện Ba Vì">Huyện Ba Vì</option>--%>
                                <%--<option index="19" value="Huyện Phúc Thọ">Huyện Phúc Thọ</option>--%>
                                <%--<option index="20" value="Huyện Đan Phượng">Huyện Đan Phượng</option>--%>
                                <%--<option index="21" value="Huyện Hoài Đức">Huyện Hoài Đức</option>--%>
                                <%--<option index="22" value="Huyện Quốc Oai">Huyện Quốc Oai</option>--%>
                                <%--<option index="23" value="Huyện Thạch Thất">Huyện Thạch Thất</option>--%>
                                <%--<option index="24" value="Huyện Chương Mỹ">Huyện Chương Mỹ</option>--%>
                                <%--<option index="25" value="Huyện Thanh Oai">Huyện Thanh Oai</option>--%>
                                <%--<option index="26" value="Huyện Thường Tín">Huyện Thường Tín</option>--%>
                                <%--<option index="27" value="Huyện Phú Xuyên">Huyện Phú Xuyên</option>--%>
                                <%--<option index="28" value="Huyện Ứng Hòa">Huyện Ứng Hòa</option>--%>
                                <%--<option index="29" value="Huyện Mỹ Đức">Huyện Mỹ Đức</option>--%>
                                <%--</select> <!---->--%>
                                <%--</div>--%>
                                <%--</div>--%>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="diadiem">Địa điểm</label>
                                    <form:input path="diadiem" id="diadiem" type="text" placeholder="Nhập địa chỉ" class="form-control"/> <!---->
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="mucluong">Mức lương</label>
                                    <form:input path="mucluong" id="mucluong" type="number" class="form-control type-number"/>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="ttkhac">Yêu cầu khác</label>
                                    <form:textarea path="ttkhac" id="ttkhac" rows="4" class="form-control"></form:textarea> <!---->
                                </div>
                            </div>
                            <form:hidden path="id_Nguoitao" id="userID"/>
                        </div>
                    </div>
                    <div class="bottom-right-adm">
                        <a href="" class="btn btn-light">Hủy bỏ</a>
                        <button id="btnRegisterClassPH" name="btnRegisterClassPH" type="button" class="btn btn-primary">Lưu</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>

<script>

    let id_Nguoitao = $('#userID').val();

    mobiscroll.setOptions({
        locale: mobiscroll.localeEn,
        theme: 'ios',
        themeVariant: 'light'
    });

    $(function () {
        // Mobiscroll Select initialization
        $('#demo-multiple-select').mobiscroll().select({
            inputElement: document.getElementById('demo-multiple-select-input')
        });
    });

    function getSelectedOptions(selectElement) {
        console.log(selectElement.options);
        let selectedOptions = [];
        for (let i = 0; i < selectElement.options.length; i++) {
            let option = selectElement.options[i];
            if (option.selected) {
                selectedOptions.push(option.value);
            }
        }
        return selectedOptions.join(', ');
    }

    $('#btnRegisterClassPH').click(function (e) {
        e.preventDefault();
        let data = {};
        let formData = $('#formRegisterClassPH').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        let selectElement = document.getElementById('demo-multiple-select');
        data["thoigian"] = getSelectedOptions(selectElement);
        let monday = $('#monday').val();
        let trinhdo = $('#trinhdo').val();
        let mucluong = $('#mucluong').val();
        if (mucluong === "") mucluong = "Thỏa thuận";
        data["mucluong"] = mucluong;
        if (monday === "") {
            notiError("Vui lòng chọn môn học");
        } else if (trinhdo === "") {
            notiError("Vui lòng chọn lớp học");
        } else {
            addClassPHDK(data);
        }
    });

    function addClassPHDK(data) {
        $.ajax({
            url: '${registerClassPH}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                notiSuccess("Gửi đăng ký lớp thành công");
            },
            error: function (result) {
                notiError("Gửi đăng ký lớp thất bại");
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
            if (result.isConfirmed) {
                window.location.href = "${PHRegisterClass}?Id_Nguoitao="+id_Nguoitao;
            }
        });
    }
</script>
</body>
</html>