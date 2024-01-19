<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="CustomerListUrl" value="/quan-tri/khach-hang/danh-sach"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thông tin khách hàng</title>
</head>
<body>
<div class="board">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                    <form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="fullName">Tên khách hàng</label>
                                    <div class="col-sm-9">
                                        <form:input path="fullName" cssClass="col-xs-10 col-sm-9" id="fullName"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="email">Email</label>
                                    <div class="col-sm-9">
                                        <form:input path="email" cssClass="col-xs-10 col-sm-9" id="email"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="hometown">Quê quán</label>
                                    <div class="col-sm-9">
                                        <form:input path="hometown" cssClass="col-xs-10 col-sm-9" id="hometown"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="gender">Giới tính</label>
                                    <div class="col-sm-9">
                                        <form:input path="gender" cssClass="col-xs-10 col-sm-9" id="gender"/>
                                    </div>
                                </div>

                                <c:if test="${not empty model.avatar}">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right">Ảnh đại diện</label>
                                        <img class="zoomImage" src="${model.avatar}" style="width: 23%; height: auto; margin-left: 12px; border-radius: unset">
                                    </div>
                                </c:if>
                                <c:if test="${empty model.avatar}">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right">Ảnh đại diện</label>
                                        <img class="zoomImage" src="<c:url value="/template/img/avatar-trang-4.jpg"/>" style="width: 20%; height: auto; margin-left: 12px; border-radius: unset">
                                    </div>
                                </c:if>
                            </div>

                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="birthday">Ngày sinh</label>
                                    <div class="col-sm-9">
                                        <form:input path="birthday" cssClass="col-xs-10 col-sm-9" id="birthday"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="phone">Số điện thoại</label>
                                    <div class="col-sm-9">
                                        <form:input path="phone" cssClass="col-xs-10 col-sm-9" id="phone"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="address">Địa chỉ liên hệ</label>
                                    <div class="col-sm-9">
                                        <form:input path="address" cssClass="col-xs-10 col-sm-9" id="address"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="advantage">Ưu điểm</label>
                                    <div class="col-sm-9">
                                        <form:input path="advantage" cssClass="col-xs-10 col-sm-9" id="advantage"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--<form:hidden path="id" id="newsID"/>--%>
                        <div class="row">
                            <div class="clearfix form-actions" style="margin-bottom: 14px">
                                <div class="col-md-offset-3 col-md-9" style="width: 100%; text-align: center; margin-left: 0">
                                    <button class="btn" type="reset" id="rejectAddOrUpdate" onclick="turnback()">
                                        <i class="ace-icon fa fa-undo bigger-110"></i>
                                        Quay lại
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function turnback() {
        window.location.href = "${CustomerListUrl}?page=1&limit=5&sortName=id&sortBy=asc";
    }

    document.querySelectorAll(".zoomImage").forEach(function(image) {
        image.addEventListener("click", function() {
            this.classList.add("zoomed");
        });
    });

    document.querySelector(".board").addEventListener("click", function(event) {
        if (event.target.classList.contains("zoomImage")) {
            return; // Nếu click vào ảnh, không đóng ảnh
        }

        document.querySelector(".zoomImage.zoomed").classList.remove("zoomed");
    });
</script>
</body>
</html>