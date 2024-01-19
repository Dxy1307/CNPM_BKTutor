<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết lớp tuyển gia sư</title>
</head>
<body>
<div class="inner-content">
    <div class="detail-main">
        <div class="container">
            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                <ol class="breadcrumb ">  <!--Class này trong bootstrap-->
                    <li class="breadcrumb-item "><a href="<c:url value="/trang-chu"/>">Trang chủ</a></li>
                    <li class="breadcrumb-item active"><a href="">ST${model.id}</a></li>
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
                            <div class="mb-1">
                                <b>LỚP ${model.trinhdo}</b>
                            </div>
                            <div class="mb-1">
                                Hình thức học: ${model.hinhthuc}
                            </div>
                            <div class="mb-1 ">Địa chỉ:
                                ${model.diadiem}
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
                    <div class="box-main">
                        <div class="header-box-main">
                            <h2>Phụ huynh</h2>
                        </div>
                        <div class="body-box-main">
                            <div class="info-user">
                                <div class="info-user-img">
                                    <img data-src=https://ketnoigiasu.vn/assets/lib/images/no-image.png class="lazy " />
                                </div>
                                <div class="info-user-txt">
                                    <div>
                                        <a href="javascript:void(0)" class="font-weight-bold text-dark">
                                            Admin
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
                    <div id="vue-review">
                    </div>
                    <%--<script>--%>
                        <%--var current_app = 'vue-review';--%>
                        <%--var model_id_review = "232";--%>
                        <%--var type_review = "student_class";--%>
                        <%--var own_id_review = "1";--%>
                    <%--</script>--%>
                    <%--<script src="../ketnoigiasu.com/js/web0f16.js?t=1030" type="text/javascript"></script>--%>
                    <div id="vue-comment">
                    </div>
                    <%--<script>--%>
                        <%--current_app = 'vue-comment';--%>
                        <%--model_id_comment = "232";--%>
                        <%--type_comment = "student_class";--%>
                        <%--own_id_comment = "1";--%>
                    <%--</script>--%>
                    <%--<script src="../ketnoigiasu.com/js/web0f16.js?t=1030" type="text/javascript"></script>--%>
                </div>
                <div class="col-sm-5 col-md-4">
                    <div class="item-c">
                        <div class="item-c-header">
                            <div class="item-c-sub">Mã số: ST${model.id}</div>
                            <div class="item-c-sub">Môn: ${model.monday}</div>
                            <div class="item-c-price">${model.mucluong}
                            </div>
                            <div class="item-c-status grey">
                                Chưa giao
                            </div>
                        </div>
                        <div class="body-box-main">
                            <a class="btn btn-primary btn-block" href="javascript:void(0)">
                                Nhận lớp
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>