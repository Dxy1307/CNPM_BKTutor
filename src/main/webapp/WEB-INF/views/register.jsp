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
<div class="container">

    <c:if test="${not empty message}">
        <div class="alert alert-${alert}">
                ${message}
        </div>
    </c:if>
    <h2>User Registration</h2>
    <form:form role="form" id="formRegister" method="post" modelAttribute="user">
        <div>
            <label for="fullName">Fullname:</label>
            <form:input path="fullName" type="text" id="fullName"/>
        </div>

        <div>
            <label for="email">Email:</label>
            <form:input path="email" type="email" id="email"/>
        </div>

        <div>
            <label for="phone">Số điện thoại:</label>
            <form:input path="phone" type="text" id="phone"/>
        </div>

        <div>
            <label for="userName">Username:</label>
            <form:input path="userName" type="text" id="userName"/>
        </div>

        <div>
            <label for="password">Password:</label>
            <form:input path="password" type="password" id="password" onkeyup='check();'/>
        </div>

        <div>
            <label for="confirmPassword">Confirm password:
                <form:input path="confirmPassword" type="password" id="confirmPassword" onkeyup='check();'/>
                <span id='message_check'></span>
            </label>
        </div>

        <div>
            <label for="roleCode" hidden>Username:</label>
            <input type="text" id="roleCode" name="roleCode" value="USER" hidden/>
        </div>

        <button type="button" class="btn btn-primary" id="btnRegister" name="btnRegister">Đăng ký</button>
    </form:form>
    <a href="<c:url value="/dang-nhap"/>">Đăng nhập</a>
</div>

<script>

    var emailData = ${emaildata};
    var phoneData = ${phonedata};

    console.log(emailData);
    console.log(phoneData);

    // submit form register and save to database
    $('#btnRegister').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formRegister').serializeArray();
        $.each(formData, function (i, v) {
           data[""+v.name+""] = v.value;
        });
        var userName = $('#userName').val();
        var fullName = $('#fullName').val();
        var pass = $('#password').val();
        var confirmPass = $('#confirmPassword').val();
        var phone = $('#phone').val();
        var email = $('#email').val();

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