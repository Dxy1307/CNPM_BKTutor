<%@include file="/common/taglib.jsp" %>
<c:url var="acceptRegisterClassSVAPI" value="/api/accept-luu-lop-sv"/>
<c:url var="rejectRegisterClassSVAPI" value="/api/tu-choi-tao-lop-sv"/>
<c:url var="DSLopDKSVUrl" value="/quan-tri/sinh-vien-dang-ky-lop/danh-sach"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lớp gia sư đăng ký</title>
</head>
<body>
<div class="board">
    <form action="<c:url value="/quan-tri/sinh-vien-dang-ky-lop/danh-sach"/>" id="formSubmit" method="get">
        <div class="main-content-inner">
            <div class="page-content" style="padding-bottom: 0;">
                <div class="row" >
                    <div class="col-xs-12">
                        <div class="widget-box table-filter">
                            <div class="table-btn-controls">
                                <div class="pull-right tableTools-container">
                                    <div class="dt-buttons btn-overlap btn-group">
                                        <button id="btnAcceptClass" type="button" onclick="confirmBeforeAcceptRegisterClassSV()"
                                                class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Chấp nhận'>
                                            <span>
                                                <i class="fa fa-plus-circle bigger-110 purple"></i>
                                            </span>
                                        </button>

                                        <button id="btnRejectClass" type="button" onclick="confirmBeforeRejectRegisterClassSV()"
                                                class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Từ chối'>
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
                                    <table style="width: 100%" class = "table table-bordered">
                                        <thead>
                                        <tr>
                                            <th><input type="checkbox" id="checkAll" onchange="checkAllCheckBoxes()"></th>
                                            <th>Môn dạy</th>
                                            <th>Thời gian</th>
                                            <th>Trình độ lớp</th>
                                            <th>Hình thức</th>
                                            <th>Thao tác</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="item" items="${model.listResult}">
                                            <tr>
                                                <td><input type="checkbox" value="${item.id}" id="checkbox_${item.id}"></td>
                                                <td>${item.monday}</td>
                                                <td>${item.thoigian}</td>
                                                <td>${item.trinhdo}</td>
                                                <td>${item.hinhthuc}</td>
                                                <td style="text-align: center">
                                                    <c:url var="detailClassRegisterBySV" value="/quan-tri/sinh-vien-dang-ky-lop/danh-sach/chi-tiet">
                                                        <c:param name="id" value="${item.id}"/>
                                                    </c:url>
                                                    <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
                                                       title="Chi tiết" href='${detailClassRegisterBySV}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
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
    let currentPage = ${model.page};
    let totalPages = ${model.totalPages};
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if(currentPage != page) {
                    $('#sortName').val('id');
                    $('#sortBy').val('asc');
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
    
    function confirmBeforeAcceptRegisterClassSV() {
        let ids = $('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();

        if (ids.length === 0) {
            notiAlert("Chưa có lớp nào được chọn");
        } else {
            swal({
                title: "THÊM LỚP CHO GIA SƯ",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-success",
                cancelButtonClass: "btn-danger",
                confirmButtonText: "Xác nhận",
                cancelButtonText: "Hủy bỏ"
            }).then(function (isConfirm) {
                if(isConfirm.value === true) {
                    acceptRegisterClassSV(ids);
                }
            });
        }
    }
    
    function confirmBeforeRejectRegisterClassSV() {
        let ids = $('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();

        if (ids.length === 0) {
            notiAlert("Chưa có lớp nào được chọn");
        } else {
            swal({
                title: "TỪ CHỐI LỚP CỦA GIA SƯ",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-success",
                cancelButtonClass: "btn-danger",
                confirmButtonText: "Xác nhận",
                cancelButtonText: "Hủy bỏ"
            }).then(function (isConfirm) {
                if(isConfirm.value === true) {
                    let ids = $('tbody input[type=checkbox]:checked').map(function () {
                        return $(this).val();
                    }).get();
                    rejectRegisterClassSV(ids);
                }
            });
        }
    }

    function acceptRegisterClassSV(data) {
        $.ajax({
            url: '${acceptRegisterClassSVAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
                notiSuccess("Thao tác thành công");
            },
            error: function (error) {
                notiError("Thao tác thất bại");
            }
        });
    }

    function rejectRegisterClassSV(data) {
        $.ajax({
            url: '${rejectRegisterClassSVAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
                notiSuccess("Thao tác thành công");
            },
            error: function (error) {
                notiError("Thao tác thất bại");
            }
        });
    }

    function  notiSuccess(message) {
        swal({
            title: "Thông báo",
            text: message,
            type: "success",
        }).then((isConfirm) => {
            if(isConfirm.value === true) {
                window.location.href = "${DSLopDKSVUrl}?page=1&limit=5&sortName=id&sortBy=asc";
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
                window.location.href = "${DSLopDKSVUrl}?page=1&limit=5&sortName=id&sortBy=asc";
            }
        });
    }

    function notiAlert(message) {
        swal({
            title: "Thông báo",
            text: message,
            type: "warning",
        });
    }
</script>
</body>
</html>