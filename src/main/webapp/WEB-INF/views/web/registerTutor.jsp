<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="registerTutorAPI" value="/api/dang-ky-gia-su"/>
<c:url var="registerTutor" value="/dang-ky-gia-su"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        Đăng ký làm gia sư
    </title>
    <script src="https://code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>

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

<%--<div mbsc-page class="demo-multiple-select">--%>
    <%--<form:form role="form" id="formRegisterTutor" modelAttribute="model">--%>
        <%--<div style="height:100%">--%>
            <%--<label for="subject">--%>
                <%--Multi-select--%>
                <%--<input mbsc-input id="demo-multiple-select-input" placeholder="Please select..." data-dropdown="true" data-input-style="outline" data-label-style="stacked" data-tags="true" />--%>
            <%--</label>--%>
            <%--<form:select path="subject" id="demo-multiple-select" multiple="true">--%>
                <%--<form:option value="Toán" selected="${model.subjects.contains('Toán') ? 'selected' : ''}">Toán</form:option>--%>
                <%--<form:option value="Văn" selected="${model.subjects.contains('Văn') ? 'selected' : ''}">Văn</form:option>--%>
                <%--<form:option value="Anh" selected="${model.subjects.contains('Anh') ? 'selected' : ''}">Anh</form:option>--%>
            <%--</form:select>--%>
        <%--</div>--%>

        <%--<form:hidden path="id" id="userID"/>--%>

        <%--<button type="button" class="btn btn-primary" id="btnRegisterTutor" name="btnRegisterTutor">Lưu</button>--%>
    <%--</form:form>--%>
<%--</div>--%>

<div class="adm-main">
    <div class="container">
        <div class="box-adm">
            <div class="left-adm">
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
                        <li class="">
                            <a href="<c:url value="/cap-nhat-thong-tin-ca-nhan?id=${model.id}"/>" aria-current="page" class="">Cập nhật thông tin cá nhân</a>
                        </li>
                        <li class="active">
                            <a href="" class="">Đăng ký làm gia sư</a>
                        </li>
                        <!---->
                        <c:if test="${model.roleCode eq 'TUTOR'}">
                            <li class=""><a href="<c:url value="/sinh-vien-tao-lop?Id_Nguoitao=${model.id}"/>" class=""><span> GS tạo lớp tuyển học sinh </span></a></li> <!---->
                        </c:if>
                        <li class="">
                            <a href="<c:url value="/phu-huynh-tao-lop?Id_Nguoitao=${model.id}"/>" class="">
                                <span> PH tạo lớp tìm gia sư </span>
                            </a>
                        </li> <!---->
                        <%--<li class="">--%>
                            <%--<a href="<c:url value="/trang-thai-lop"/>">Trạng thái lớp</a>--%>
                        <%--</li>--%>
                        <li class="">
                            <a href="" class="">Thay đổi mật khẩu</a>
                        </li>
                        <li>
                            <a href="<c:url value="/thoat"/>">Đăng xuất</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="right-adm">
                <!--Right adm-->
                <div>
                    <form:form role="form" id="formRegisterTutor" modelAttribute="model">
                        <div class="content-right-adm">
                            <div class="title-adm">
                                <h2><span>Đăng ký làm</span> gia sư
                                </h2>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="university">Sinh viên trường</label>
                                        <form:input path="university" id="university" type="text" class="form-control"/> <!---->
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="major">Ngành học</label>
                                        <form:input path="major" id="major" type="text" class="form-control"/> <!---->
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="subject">Môn dạy</label>
                                        <div>
                                            <form:select path="subject" id="subject" class="form-control" fdprocessedid="">
                                                <form:option value="">Môn học</form:option>
                                                <form:option index="0" value="Toán">Toán</form:option>
                                                <form:option index="1" value="Toán Tiếng Anh">Toán Tiếng Anh</form:option>
                                                <form:option index="2" value="Văn">Văn (Tiếng Việt)</form:option>
                                                <form:option index="3" value="Vật lý">Vật Lý</form:option>
                                                <form:option index="4" value="Hóa">Hóa</form:option>
                                                <form:option index="5" value="Sinh">Sinh</form:option>
                                                <form:option index="6" value="Tiếng Anh">Tiếng Anh</form:option>
                                                <form:option index="7" value="Sử">Sử</form:option>
                                                <form:option index="8" value="Địa">Địa</form:option>
                                                <form:option index="9" value="Tin học">Tin Học</form:option>
                                                <form:option index="10" value="Nhạc">Nhạc</form:option>
                                                <form:option index="11" value="Cờ tướng">Cờ tướng</form:option>
                                                <form:option index="12" value="Cờ vua">Cờ vua</form:option>
                                            </form:select>
                                        </div> <!---->
                                    </div>
                                </div>
                                <div mbsc-page class="col-sm-6 demo-multiple-select" style="background-color: unset; padding-left: 0; padding-right: 0;">
                                    <div class="form-group">
                                        <label for="level">Lớp
                                            <input mbsc-input id="demo-multiple-select-input" placeholder="Please select..." data-dropdown="true" data-input-style="outline" data-label-style="stacked" data-tags="true" />
                                        </label>
                                            <%--<div>--%>
                                        <form:select path="level" id="demo-multiple-select" multiple="true">
                                            <form:option value="1" selected="${model.levels.contains('1') ? 'selected' : ''}">LỚP 1</form:option>
                                            <form:option value="2" selected="${model.levels.contains('2') ? 'selected' : ''}">LỚP 2</form:option>
                                            <form:option value="3" selected="${model.levels.contains('3') ? 'selected' : ''}">LỚP 3</form:option>
                                            <form:option value="4" selected="${model.levels.contains('4') ? 'selected' : ''}">LỚP 4</form:option>
                                            <form:option value="5" selected="${model.levels.contains('5') ? 'selected' : ''}">LỚP 5</form:option>
                                            <form:option value="6" selected="${model.levels.contains('6') ? 'selected' : ''}">LỚP 6</form:option>
                                            <form:option value="7" selected="${model.levels.contains('7') ? 'selected' : ''}">LỚP 7</form:option>
                                            <form:option value="8" selected="${model.levels.contains('8') ? 'selected' : ''}">LỚP 8</form:option>
                                            <form:option value="9" selected="${model.levels.contains('9') ? 'selected' : ''}">LỚP 9</form:option>
                                            <form:option value="10" selected="${model.levels.contains('10') ? 'selected' : ''}">LỚP 10</form:option>
                                            <form:option value="11" selected="${model.levels.contains('11') ? 'selected' : ''}">LỚP 11</form:option>
                                            <form:option value="12" selected="${model.levels.contains('12') ? 'selected' : ''}">LỚP 12</form:option>
                                        </form:select>
                                            <%--</div> <!---->--%>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="teachCity">Nơi có thể dạy</label>
                                        <form:select path="teachCity" id="teachCity" class="form-control" >
                                            <form:option value="">Tỉnh thành</form:option>
                                            <form:option index="0" value="1">Thành phố Hà Nội</form:option>
                                    </form:select> <!----></div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="teachDistrict">&nbsp;</label>
                                        <form:select path="teachDistrict" id="teachDistrict" class="form-control">
                                            <form:option value="">Quận huyện</form:option>
                                            <form:option index="0" value="Quận Ba Đình">Quận Ba Đình</form:option>
                                            <form:option index="1" value="Quận Hoàn Kiếm">Quận Hoàn Kiếm</form:option>
                                            <form:option index="2" value="Quận Tây Hồ">Quận Tây Hồ</form:option>
                                            <form:option index="3" value="Quận Long Biên">Quận Long Biên</form:option>
                                            <form:option index="4" value="Quận Cầu Giấy">Quận Cầu Giấy</form:option>
                                            <form:option index="5" value="Quận Đống Đa">Quận Đống Đa</form:option>
                                            <form:option index="6" value="Quận Hai Bà Trưng">Quận Hai Bà Trưng</form:option>
                                            <form:option index="7" value="Quận Hoàng Mai">Quận Hoàng Mai</form:option>
                                            <form:option index="8" value="Quận Thanh Xuân">Quận Thanh Xuân</form:option>
                                            <form:option index="9" value="Huyện Sóc Sơn">Huyện Sóc Sơn</form:option>
                                            <form:option index="10" value="Huyện Đông Anh">Huyện Đông Anh</form:option>
                                            <form:option index="11" value="Huyện Gia Lâm">Huyện Gia Lâm</form:option>
                                            <form:option index="12" value="Quận Nam Từ Liêm">Quận Nam Từ Liêm</form:option>
                                            <form:option index="13" value="Huyện Thanh Trì">Huyện Thanh Trì</form:option>
                                            <form:option index="14" value="Quận Bắc Từ Liêm">Quận Bắc Từ Liêm</form:option>
                                            <form:option index="15" value="Huyện Mê Linh">Huyện Mê Linh</form:option>
                                            <form:option index="16" value="Quận Hà Đông">Quận Hà Đông</form:option>
                                            <form:option index="17" value="Thị xã Sơn Tây">Thị xã Sơn Tây</form:option>
                                            <form:option index="18" value="Huyện Ba Vì">Huyện Ba Vì</form:option>
                                            <form:option index="19" value="Huyện Phúc Thọ">Huyện Phúc Thọ</form:option>
                                            <form:option index="20" value="Huyện Đan Phượng">Huyện Đan Phượng</form:option>
                                            <form:option index="21" value="Huyện Hoài Đức">Huyện Hoài Đức</form:option>
                                            <form:option index="22" value="Huyện Quốc Oai">Huyện Quốc Oai</form:option>
                                            <form:option index="23" value="Huyện Thạch Thất">Huyện Thạch Thất</form:option>
                                            <form:option index="24" value="Huyện Chương Mỹ">Huyện Chương Mỹ</form:option>
                                            <form:option index="25" value="Huyện Thanh Oai">Huyện Thanh Oai</form:option>
                                            <form:option index="26" value="Huyện Thường Tín">Huyện Thường Tín</form:option>
                                            <form:option index="27" value="Huyện Phú Xuyên">Huyện Phú Xuyên</form:option>
                                            <form:option index="28" value="Huyện Ứng Hòa">Huyện Ứng Hòa</form:option>
                                            <form:option index="29" value="Huyện Mỹ Đức">Huyện Mỹ Đức</form:option>
                                        </form:select> <!---->
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group"><label>Ảnh CMT mặt trước</label>
                                                <div>
                                                    <div>
                                                        <ul class="position-relative">
                                                            <li class="cursor-pointer box-pic"><!---->
                                                                <c:if test="${not empty model.idCardFront}">
                                                                    <img src="${model.idCardFront}" id="cardFront" alt="" class="img-custom">
                                                                </c:if>
                                                                <c:if test="${empty model.idCardFront}">
                                                                    <img src="<c:url value="/template/web/quan/vn/storage/avatar/no-image-user.jpg"/>" id="cardFront" alt="" class="img-custom">
                                                                </c:if>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <form:input path="idCardFront" type="file" id="idCardFront" name="idCardFront" accept="image/*;capture=camera" class="d-none" onchange="encodeCardFrontFileAsURL(this)"/>
                                                    <label for="idCardFront" class="btn btn-secondary">Chọn ảnh</label>
                                                </div> <!---->
                                            </div>
                                            <div class="form-group"><label>Ảnh CMT mặt sau</label>
                                                <div>
                                                    <div>
                                                        <ul class="position-relative">
                                                            <li class="cursor-pointer box-pic"><!---->
                                                                <c:if test="${not empty model.idCardBack}">
                                                                    <img src="${model.idCardBack}" id="cardBack" alt="" class="img-custom">
                                                                </c:if>
                                                                <c:if test="${empty model.idCardBack}">
                                                                    <img src="<c:url value="/template/web/quan/vn/storage/avatar/no-image-user.jpg"/>" id="cardBack" alt="" class="img-custom">
                                                                </c:if>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <form:input path="idCardBack" type="file" id="idCardBack" name="idCardBack" accept="image/*;capture=camera" class="d-none" onchange="encodeCardBackFileAsURL(this)"/>
                                                    <label for="idCardBack" class="btn btn-secondary">Chọn ảnh</label>
                                                </div> <!---->
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group"><label>Ảnh thẻ SV (hoặc bằng ĐH)</label>
                                                <div>
                                                    <div>
                                                        <ul class="position-relative">
                                                            <li class="cursor-pointer box-pic"><!---->
                                                                <c:if test="${not empty model.studentCard}">
                                                                    <img src="${model.studentCard}" id="image" alt="" class="img-custom">
                                                                </c:if>
                                                                <c:if test="${empty model.studentCard}">
                                                                    <img src="<c:url value="/template/web/quan/vn/storage/avatar/no-image-user.jpg"/>" id="image" alt="" class="img-custom">
                                                                </c:if>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <form:input path="studentCard" type="file" id="studentCard" name="studentCard" accept="image/*;capture=camera" class="d-none" onchange="encodeImageFileAsURL(this)"/>
                                                    <label for="studentCard" class="btn btn-secondary">Chọn ảnh</label>
                                                </div> <!---->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Mô tả</label>
                                        <textarea rows="4" class="form-control"></textarea> <!----></div>
                                </div>
                                <form:hidden path="id" id="userID"/>
                            </div>
                        </div>
                        <div class="bottom-right-adm">
                            <button type="button" id="btnRegisterTutor" name="btnRegisterTutor" class="btn btn-primary" fdprocessedid="xguuqa">Lưu</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    let id = $('#userID').val();

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

    let studentCard;
    function encodeImageFileAsURL(element) {
        let file = element.files[0];
        let reader = new FileReader();
        reader.onloadend = function() {
            studentCard = reader.result;
        };
        reader.onload = function(e) {
            $('#image').attr('src', e.target.result);
        };
        reader.readAsDataURL(file);
    }

    let idCardFront;
    function encodeCardFrontFileAsURL(element) {
        let file = element.files[0];
        let reader = new FileReader();
        reader.onloadend = function() {
            idCardFront = reader.result;
        };
        reader.onload = function(e) {
            $('#cardFront').attr('src', e.target.result);
        };
        reader.readAsDataURL(file);
    }

    let idCardBack;
    function encodeCardBackFileAsURL(element) {
        let file = element.files[0];
        let reader = new FileReader();
        reader.onloadend = function() {
            idCardBack = reader.result;
        };
        reader.onload = function(e) {
            $('#cardBack').attr('src', e.target.result);
        };
        reader.readAsDataURL(file);
    }

    $('#btnRegisterTutor').click(function (e) {
        e.preventDefault();
        let data = {};
        let formData = $('#formRegisterTutor').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        data["studentCard"] = studentCard;
        data["idCardFront"] = idCardFront;
        data["idCardBack"] = idCardBack;
        let selectElement = document.getElementById('demo-multiple-select');
        data["level"] = getSelectedOptions(selectElement);
        let university = $('#university').val();
        let major = $('#major').val();
        let subject = $('#subject').val();
        let teachCity = $('#teachCity').val();
        if (university === "") {
            notiError("Vui lòng nhập trường đại học");
        } else if(major === "") {
            notiError("Vui lòng nhập chuyên ngành");
        } else if(subject === "") {
            notiError("Vui lòng chọn môn có thể dạy");
        } else if(teachCity === "") {
            notiError("Vui lòng chọn thành phố có thể dạy");
        } else if(idCardFront === "") {
            notiError("Vui lòng chọn ảnh CCCD mặt trước");
        } else if(idCardBack === "") {
            notiError("Vui lòng chọn ảnh CCCD mặt sau");
        } else if(studentCard === "") {
            notiError("Vui lòng chọn ảnh thẻ sinh viên/bằng đại học");
        } else {
            updateUser(data);
        }
    });

    // Hàm để lấy danh sách các lựa chọn đã được chọn
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

    function updateUser(data) {
        $.ajax({
            url: '${registerTutorAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                notiSuccess("Đăng ký thành công");
            },
            error: function (error) {
                notiError("Đăng ký thất bại");
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
                window.location.href = "${registerTutor}?id="+id;
            }
        });
    }
</script>
</body>
</html>