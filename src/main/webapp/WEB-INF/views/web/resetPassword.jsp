<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
</head>
<body>
<div class="sign-main">
    <div class="sign-main-box">
        <h2>Quên mật khẩu</h2>
        <form action="" method="post">
            <input type="hidden" name="_token" value="">
            <div class="form-group">
                <label>Email</label>
                <input type="email" class="form-control" name="email" value="">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Gửi yêu cầu</button>
            </div>
            <div class="text-center">
                <div>
                    <a href="<c:url value="/dang-nhap"/>" class="a-link">Đăng nhập</a>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>