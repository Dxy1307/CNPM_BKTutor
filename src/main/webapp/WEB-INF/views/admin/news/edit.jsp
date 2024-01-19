<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="newsURL" value="/quan-tri/bai-viet/danh-sach"/>
<c:url var="newsAPI" value="/api/news"/>
<c:url var="editNewsURL" value="/quan-tri/bai-viet/chinh-sua"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa bài viết</title>
</head>
<body>
<div class="board">
    <div class="main-content-inner">
        <%--<div class="breadcrumbs" id="breadcrumbs">--%>
            <%--<script type="text/javascript">--%>
                <%--try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}--%>
            <%--</script>--%>

            <%--<ul class="breadcrumb">--%>
                <%--<li>--%>
                    <%--<i class="ace-icon fa fa-home home-icon"></i>--%>
                    <%--<a href="#">Home</a>--%>
                <%--</li>--%>

                <%--<li>--%>
                    <%--<a href="#">Forms</a>--%>
                <%--</li>--%>
                <%--<li class="active">Form Elements</li>--%>
            <%--</ul><!-- /.breadcrumb -->--%>
        <%--</div>--%>
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                    <%--Message--%>
                    <c:if test="${not empty message}">
                        <div class="alert alert-${alert}">
                            ${message}
                        </div>
                    </c:if>
                    <%--form:form của spring form có thuộc tính modelAttribute, những name trong input, form sẽ matching vs các field của thằng model--%>
                    <form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
                        <div class="form-group">
                            <label for="categoryCode" class="col-sm-3 control-label no-padding-right">Thể loại</label>
                            <div class="col-sm-9">
                                <form:select path="categoryCode" id="categoryCode">
                                    <form:option value="" label="-- Chọn thể loại --"/>
                                    <%--form:options đã matching với categoryCode rồi, việc matching dựa vào path, nó sẽ thay cho thuộc tính name--%>
                                    <%--items truyền vào là 1 cái map--%>
                                    <form:options items="${categories}"/>
                                </form:select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="title">Tên bài viết</label>

                            <div class="col-sm-9">
                                <%--<input type="text" class="col-xs-10 col-sm-5" id="title" name="title" value="${model.title}"/>--%>
                                <%--cái path tương đương với name và value, id để lable for được--%>
                                <form:input path="title" cssClass="col-xs-10 col-sm-5" id="title"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="thumbnail">Ảnh đại diện</label>

                            <div class="col-sm-9">
                                <input type="file" class="col-xs-10 col-sm-5" id="thumbnail" name="thumbnail"/>
                                <%--<form:input path="thumbnail" cssClass="col-xs-10 col-sm-5" id="thumbnail"/>--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="shortDescription" class="col-sm-3 control-label no-padding-right">Mô tả ngắn:</label>
                            <div class="col-sm-9">
                                <%--<textarea class="form-control" rows="5" cols="10" id="shortDescription" name="shortDescription">${model.shortDescription}</textarea>--%>
                                <form:textarea path="shortDescription" rows="5" cols="10" cssClass="form-control" id="shortDescription"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="content" class="col-sm-3 control-label no-padding-right">Nội dung:</label>
                            <div class="col-sm-9">
                                <%--<textarea class="form-control" rows="5" cols="10" id="content" name="content">${model.content}</textarea>--%>
                                <form:textarea path="content" rows="5" cols="10" cssClass="form-control" id="content"/>
                            </div>
                        </div>
                        <form:hidden path="id" id="newsID"/>
                        <div class="clearfix form-actions">
                            <div class="col-md-offset-3 col-md-9">
                                <c:if test="${not empty model.id}">
                                    <button class="btn btn-info" type="button" id="btnAddOrUpdateNews">
                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                        Cập nhật bài viết
                                    </button>
                                </c:if>
                                <c:if test="${empty model.id}">
                                    <button class="btn btn-info" type="button" id="btnAddOrUpdateNews">
                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                        Thêm bài viết
                                    </button>
                                </c:if>

                                &nbsp; &nbsp; &nbsp;
                                <button class="btn" type="reset" id="rejectAddOrUpdate" onclick="warningBeforeRejectAddOrUpdate()">
                                    <i class="ace-icon fa fa-undo bigger-110"></i>
                                    Hủy
                                </button>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function warningBeforeRejectAddOrUpdate() {
        swal({
            title: "Hủy bỏ thao tác",
            text: "Bạn có chắc chắn muốn hủy bỏ thao tác không",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn-success",
            cancelButtonClass: "btn-danger",
            confirmButtonText: "Có",
            cancelButtonText: "Không"
        }).then(function (isConfirm) {
            if(isConfirm.value === true) {
                window.location.href = "${newsURL}?page=1&limit=5&sortName=title&sortBy=desc";
            }
        });
    }

    $('#btnAddOrUpdateNews').click(function (e) {
        // tránh việc submit nhầm vào URL ở file đang đứng
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray(); // data này ở bên thằng client
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        var id = $('#newsID').val();
        if (id == "") {
            addNews(data);
        } else {
            updateNews(data);
        }
    });

    function addNews(data) {
        $.ajax({
            url: '${newsAPI}',
            type: 'POST',
            contentType: 'application/json', // thuộc tính mô tả kiểu dữ liệu sẽ gửi data từ client về server
            data: JSON.stringify(data), // data ngoài html là dạng object, cần parse về json
            dataType: 'json', // sau khi API xử lý xong logic, data trả về cho client dưới dạng này
            // result ở đây chính là cái mà hàm createNews trong NewsAPI trả về
            success: function (result) {
                notiSuccess("Thêm bài viết thành công");
                <%--window.location.href = "${editNewsURL}?id="+result.id+"&message=insert_success";--%>
            },
            error: function (error) {
                notiError("Thêm bài viết không thành công");
                <%--window.location.href = "${newsURL}?page=1&limit=2&sortName=title&sortBy=desc&message=error_system";--%>
            }
        });
    }

    function updateNews(data) {
        $.ajax({
            url: '${newsAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                notiSuccessUpdate("Cập nhật thành công");
                <%--window.location.href = "${editNewsURL}?id="+result.id+"&message=update_success";--%>
            },
            error: function (error) {
                notiErrorUpdate("Cập nhật không thành công");
                <%--window.location.href = "${editNewsURL}?id="+result.id+"&message=error_system";--%>
            }
        });
    }

    function  notiSuccess(message) {
        swal({
            title: "Thông báo",
            text: message,
            type: "success",
            confirmButtonClass: "btn-success",
            confirmButtonText: "OK",
        }).then((isConfirm) => {
            if(isConfirm.value === true) {
                window.location.href = "${newsURL}?page=1&limit=5&sortName=title&sortBy=desc";
            }
        });
    }

    function  notiSuccessUpdate(message) {
        swal({
            title: "Thông báo",
            text: message,
            type: "success",
            confirmButtonClass: "btn-success",
            confirmButtonText: "OK",
        });
    }

    function  notiError(message) {
        swal({
            title: "Thông báo",
            text: message,
            type: "warning",
        }).then((isConfirm) => {
            if(isConfirm.value === true) {
                window.location.href = "${newsURL}?page=1&limit=5&sortName=title&sortBy=desc";
            }
        });
    }

    function  notiErrorUpdate(message) {
        swal({
            title: "Thông báo",
            text: message,
            type: "warning",
        });
    }
</script>
</body>
</html>