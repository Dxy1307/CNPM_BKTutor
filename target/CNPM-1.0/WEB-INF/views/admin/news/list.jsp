<%@include file="/common/taglib.jsp" %>
<c:url var="newsAPI" value="/api/news"/>
<c:url var="newsURL" value="/quan-tri/bai-viet/danh-sach"/>
<c:set var="pageType" value="list"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Danh sách bài viết</title>
</head>
<body>
    <div class="board">
        <form action="<c:url value="/quan-tri/bai-viet/danh-sach"/>" id="formSubmit" method="get">
            <div class="main-content-inner">
                <%--<div class="breadcrumbs ace-save-state" id="breadcrumbs">--%>
                    <%--<ul class="breadcrumb">--%>
                        <%--<li>--%>
                            <%--<i class="ace-icon fa fa-home home-icon"></i>--%>
                            <%--<a href="<c:url value="/quan-tri/trang-chu"/>">Trang chủ</a>--%>
                        <%--</li>--%>
                    <%--</ul><!-- /.breadcrumb -->--%>
                <%--</div>--%>
                <div class="page-content" style="padding-bottom: 0;">
                    <div class="row" >
                        <div class="col-xs-12">
                            <%--message--%>
                            <c:if test="${not empty message}">
                                <div class="alert alert-${alert}">
                                        ${message}
                                </div>
                            </c:if>
                            <div class="widget-box table-filter">
                                <div class="table-btn-controls">
                                    <div class="pull-right tableTools-container">
                                        <div class="dt-buttons btn-overlap btn-group">
                                        <c:url var="createNewsURL" value="/quan-tri/bai-viet/chinh-sua"/>
                                            <a flag="info"
                                               class="dt-button buttons-colvis btn btn-white btn-primary btn-bold" data-toggle="tooltip"
                                               title='Thêm bài viết' href='${createNewsURL}'>
                                                        <span>
                                                            <i class="fa fa-plus-circle bigger-110 purple"></i>
                                                        </span>
                                            </a>
                                            <button id="btnDelete" type="button" onclick="warningBeforeDelete()"
                                                    class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Xóa bài viết'>
                                                        <span>
                                                            <i class="fas fa-minus-circle"></i>
                                                        </span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class = "row">
                                <div class = "col-xs-12">
                                    <div class = "table-responsive" style="height: 385px;">
                                        <table style="width: 100%;" class = "table table-bordered" id="tutor">
                                            <thead>
                                                <tr>
                                                    <td><input type="checkbox" id="checkAll" onchange="checkAllCheckBoxes()"></td>
                                                    <td>Tên bài viết</td>
                                                    <td>Mô tả ngắn</td>
                                                    <td>Thao tác</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="item" items="${model.listResult}">
                                                    <tr>
                                                        <td><input type="checkbox" value="${item.id}" id="checkbox_${item.id}"></td>
                                                        <td>${item.title}</td>
                                                        <td>${item.shortDescription}</td>
                                                        <td>
                                                            <c:url var="updateNewsURL" value="/quan-tri/bai-viet/chinh-sua">
                                                                <%--c:param chính là phần ? sau /quan-tri/bai-viet/danh-sach--%>
                                                                <c:param name="id" value="${item.id}"/>
                                                            </c:url>
															<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
															   title="Cập nhật bài viết" href='${updateNewsURL}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
															</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                        <ul style="position: absolute; bottom: 0; left: 50%; transform: translateX(-60%);" class = "pagination" id = "pagination"></ul>
                                        <input type="hidden" value="" id="page" name="page"/>
                                        <input type="hidden" value="" id="limit" name="limit"/>
                                        <input type="hidden" value="" id="sortName" name="sortName"/>
                                        <input type="hidden" value="" id="sortBy" name="sortBy"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
<!-- /.main-content -->

<script type="text/javascript">
    var currentPage = ${model.page};
    var totalPages = ${model.totalPages};
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if(currentPage != page) {
                    $('#sortName').val('title');
                    $('#sortBy').val('desc');
                    $('#page').val(page);
                    $('#limit').val(5);
                    $('#formSubmit').submit();
                }
            }
        });
    });

    function checkAllCheckBoxes() {
        let checkAllCheckbox = document.getElementById("checkAll");
        let checkboxes = document.querySelectorAll('tbody input[type="checkbox"]');

        checkboxes.forEach(function (checkbox) {
            checkbox.checked = checkAllCheckbox.checked;
        });
    }

    function warningBeforeDelete() {
        swal({
            title: "Xác nhận xóa",
            text: "Bạn có chắc chắn muốn xóa không",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn-success",
            cancelButtonClass: "btn-danger",
            confirmButtonText: "Xác nhận",
            cancelButtonText: "Hủy bỏ"
        }).then(function (isConfirm) {
            if(isConfirm.value === true) {
                // call api delete
                var ids = $('tbody input[type=checkbox]:checked').map(function () {
                    return $(this).val();
                }).get();
                deleteNews(ids);
            }
        });
    }
    
    function deleteNews(data) {
        $.ajax({
            url: '${newsAPI}',
            type: 'DELETE',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
                notiSuccess("Xóa thành công");
            },
            error: function (error) {
                notiError("Xóa không thành công");
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
</script>
</body>
</html>