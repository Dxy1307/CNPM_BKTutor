<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="home" value="/trang-chu"/>
<c:url var="login" value="/dang-nhap"/>
<c:url var="register" value="/dang-ky"/>
<c:url var="userAPI" value="/api/dang-ky"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng ký</title>
</head>
<body>
<div class="sign-main">
    <div class="sign-main-box">
        <c:if test="${not empty message}">
            <div class="alert alert-${alert}">
                    ${message}
            </div>
        </c:if>
        <h2>Đăng ký</h2>
        <form:form role="form" id="formRegister" method="post" modelAttribute="user">
            <div class="form-group">
                <label for="fullName">Họ tên</label>
                <form:input path="fullName" type="text" id="fullName" class="form-control"/>
                <div><!----></div>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <form:input path="email" type="email" id="email" class="form-control"/>
                <div><!---->
                </div>
            </div>
            <div class="form-group">
                <label for="phone">Số điện thoại</label>
                <form:input path="phone" type="text" id="phone" class="form-control"/>
                <div><!---->
                </div>
            </div>
            <div class="form-group">
                <label for="userName">Tên đăng nhập</label>
                <form:input path="userName" type="text" id="userName" class="form-control"/>
                <div><!---->
                </div>
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu</label>
                <div class="position-relative">
                    <form:input path="password" type="password" id="password" onkeyup='check();' class="form-control pr-4"/>
                </div>
                <div><!---->
                </div>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Nhập lại mật khẩu</label>
                <div class="position-relative">
                    <form:input path="confirmPassword" type="password" id="confirmPassword" onkeyup='check();' class="form-control pr-4"/>
                </div>
                <div><!----></div>
            </div> <!----> <!---->
            <div>
                <label for="roleCode" hidden>Username:</label>
                <input type="text" id="roleCode" name="roleCode" value="USER" hidden/>
            </div>
            <div class="form-group">
                <button type="button" class="btn btn-primary btn-block" id="btnRegister" name="btnRegister">
                    Đăng ký
                </button>
            </div>
            <div class="text-center">
                Bạn đã có tài khoản?
                <a href="<c:url value="/dang-nhap"/>" class="a-link">Đăng nhập</a>
            </div>
        </form:form>
    </div>
</div>
<!--hộp thông báo đăng ký dành cho gia sư-->
<%--<div class="signup-main">--%>
    <%--<div class="container">--%>
        <%--<div class="signup-main-box">--%>
            <%--<h2>Đăng ký dành cho gia sư và giáo viên</h2>--%>
            <%--<p>Dạy thêm - Tăng thu nhập</p>--%>
            <%--<a href="<c:url value="/dang-ky"/>" class="btn btn-light">Đăng ký ngay</a>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<script>
    let emailData = ${emaildata};
    let phoneData = ${phonedata};

    // submit form register and save to database
    $('#btnRegister').click(function (e) {
        e.preventDefault();
        let data = {};
        let formData = $('#formRegister').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        let userName = $('#userName').val();
        let fullName = $('#fullName').val();
        let pass = $('#password').val();
        let confirmPass = $('#confirmPassword').val();
        let phone = $('#phone').val();
        let email = $('#email').val();

        if (userName == "") {
            notiError("Vui lòng nhập tên đăng nhập");
        } else if (phone == "") {
            notiError("Vui lòng nhập số điện thoại");
        } else if (email == "") {
            notiError("Vui lòng nhập email");
        } else if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email) == false) {
            notiError("Vui lòng nhập đúng định dạng email");
        } else if (fullName == "") {
            notiError("Vui lòng nhập tên người dùng");
        } else if (pass == "") {
            notiError("Vui lòng nhâp mật khẩu");
        } else if (confirmPass == "" || pass != confirmPass) {
            notiError("Xác nhận mật khẩu không chính xác");
        } else if (emailData.includes(email)) {
            notiError("Email đã tồn tại");
        }  else if (phoneData.includes(phone)) {
            notiError("Số điện thoại đã tồn tại");
        } else {
            addUser(data);
        }
    });

    function addUser(data) {
        $.ajax({
            url: '${userAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                notiSuccess("Đăng ký thành công");
                <%--window.location.href = "${register}";--%>
            },
            error: function (result) {
                notiError("Tài khoản đã tồn tại");
                <%--window.location.href = "${register}";--%>
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
        });
    }
</script>
</body>
</html>