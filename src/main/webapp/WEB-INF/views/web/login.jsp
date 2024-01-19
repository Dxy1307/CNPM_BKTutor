<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
</head>
<body>
<div class="sign-main">
    <div class="sign-main-box">
        <h2>Đăng nhập</h2>
        <c:if test="${param.incorrectAccount != null}">
            <div class="alert alert-danger">
                Username or Password incorrect
            </div>
        </c:if>
        <c:if test="${param.accessDenied != null}">
            <div class="alert alert-danger">
                Not authorize
            </div>
        </c:if>
        <form action="j_spring_security_check" method="post">
            <div class="form-group">
                <label>Tên đăng nhập</label>
                <input type="text" class="form-control" id="userName" name="j_username" placeholder="Tên đăng nhập" value="">
            </div>
            <div class="form-group">
                <label>Mật khẩu</label>
                <div class="position-relative">
                    <input type="password" class="form-control" name="j_password" placeholder="Nhập mật khẩu" value=""
                           id="password" />

                </div>

            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
            </div>
            <div class="text-center">
                <div>
                    Bạn chưa có tài khoản? <a href="<c:url value="/dang-ky"/>" class="a-link">Đăng ký</a>
                </div>
                <div>
                    <a href="<c:url value="/quen-mat-khau"/>" class="btn btn-link">Quên mật khẩu</a>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>