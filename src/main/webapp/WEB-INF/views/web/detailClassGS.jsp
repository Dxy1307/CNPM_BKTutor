<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết lớp tuyển sinh</title>
</head>
<body>
<div class="inner-content">
    <div class="detail-main">
        <div class="container">
            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">

                <ol class="breadcrumb ">  <!--Class này trong bootstrap-->
                    <li class="breadcrumb-item "><a href="<c:url value="/trang-chu"/>">Trang chủ</a></li>
                    <li class="breadcrumb-item active"><a href="">GS${model.id}</a></li>
                </ol>
            </nav>
            <style>
                .breadcrumb-item.active a {
                    color: #333 !important;
                }
            </style>
            <div class="row">
                <div class="col-sm-7 col-md-8">
                    <div class="box-main">
                        <div class="header-box-main">
                            <h2>Thông tin lớp học</h2>
                        </div>
                        <div class="body-box-main">
                            <div class="mb-1">  <!--margin bottom 0.25rem-->
                                <b> ${model.monday} (Lớp ${model.trinhdo})</b>
                            </div>
                            <div class="mb-1">
                                Hình thức học: ${model.hinhthuc}
                            </div>
                            <div class="mb-1">
                                Địa chỉ: ${model.diadiem}
                            </div>
                            <div>
                                <div class="mb-1">
                                    <c:if test="${not empty model.thoigian}">
                                        Thời gian: ${model.thoigians.size()} buổi/tuần<br>
                                        <c:forEach var="item" items="${model.thoigians}">
                                            <strong>${item}</strong><br>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${empty model.thoigian}">
                                        Thời gian: Chưa xác định
                                    </c:if>
                                </div>
                            </div>
                            <div class="mb-1 d-flex flex-lg-nowrap flex-wrap ">
                                <div class=" white-space-nowrap">Yêu cầu khác:</div>
                                <div class="white-space-pre">${model.ttkhac}</div>
                            </div>
                            <div class="mb-1">
                                Ngày tạo lớp: <span>${model.createdDate}</span>
                            </div>
                        </div>
                    </div>
                    <!--Thông tin gia sư-->
                    <div class="box-main">
                        <div class="header-box-main">
                            <h2>Gia sư</h2>
                        </div>
                        <div class="body-box-main">
                            <div class="info-user">
                                <a href="<c:url value="/chi-tiet-gia-su?id=${user.id}"/>"
                                   class="info-user-img">
                                    <c:if test="${not empty user.avatar}">
                                        <img src="${user.avatar}" alt="">
                                    </c:if>
                                    <c:if test="${empty user.avatar}">
                                        <img src="<c:url value="/template/web/quan/vn/storage/avatar/no-image-user.jpg"/>" alt="">
                                    </c:if>
                                </a>
                                <div class="info-user-txt">
                                    <div>
                                        <a href="<c:url value="/chi-tiet-gia-su?id=${user.id}"/>"
                                           class="font-weight-bold text-dark">
                                            ${user.fullName}
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="box-main">
                        <div class="header-box-main">
                            <h2>Đánh giá</h2>
                        </div>
                        <div class="body-box-main">
                            <div class="row list-item">
                            </div>
                            <div class="d-flex justify-content-center flex-wrap">

                            </div>
                        </div>
                    </div>
                    <div class="box-main">
                        <div class="header-box-main">
                            <h2>Bình luận</h2>
                        </div>
                        <div class="body-box-main">
                            <div class="row list-item">
                            </div>
                            <div class="d-flex justify-content-center flex-wrap">

                            </div>
                        </div>
                    </div>
                    <!-- Hộp lớp học bên phải -->
                </div>
                <div class="col-sm-5 col-md-4">
                    <div class="item-c">

                        <div class="item-c-header">
                            <div class="item-c-sub">Mã số: GS${model.id}</div>
                            <div class="item-c-sub">Môn: ${model.monday} </div>
                            <div class="item-c-price">${model.mucluong}</div>
                            <div class="item-c-status grey">
                                Chưa giao
                            </div>
                        </div>
                        <div class="body-box-main">
                            <a class="btn btn-primary btn-block" href="javascript:void(0)" >Đăng ký học </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>