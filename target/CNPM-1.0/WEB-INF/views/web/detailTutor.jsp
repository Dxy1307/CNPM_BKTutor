<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết gia sư</title>
</head>
<body>
<div class="inner-content">
    <div class="detail-main">
        <div class="container">
            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">

                <ol class="breadcrumb ">

                    <li class="breadcrumb-item "><a href="<c:url value="/trang-chu"/>">Trang chủ</a></li>

                    <li class="breadcrumb-item active"><a href="#">Gia sư
                        ${model.fullName}</a></li>
                </ol>
            </nav>
            <style>
                .breadcrumb-item.active a {
                    color: #333 !important;
                }
            </style>
            <div class="row detail-teacher">

                <div class="col-sm-12 col-md-12 order-first">
                    <div class="box-main">
                        <div class="header-box-main">
                            <h2>Thông tin cá nhân</h2>
                        </div>
                        <div class="body-box-main ">
                            <div class="row">
                                <div class="col-md-8 p-0 col-12 word-break-word">
                                    <div class="d-flex flex-wrap">
                                        <div class="col-12 col-md-3 mb-2 mb-lg-0 pr-lg-0 ">
                                            <div class="item-t p-1">
                                                <div class="item-t-pic"><a
                                                        href="#">
                                                    <c:if test="${not empty model.avatar}">
                                                        <img src = "${model.avatar}"
                                                             class="lazy " />
                                                    </c:if>
                                                    <c:if test="${empty model.avatar}">
                                                        <img src = "<c:url value="/template/web/quan/vn/storage/avatar/no-image-user.jpg"/>"
                                                             class="lazy " />
                                                    </c:if>
                                                </a></div>

                                            </div>
                                        </div>
                                        <div class="col-12 col-md-7">
                                            <p class="mb-1-teacher">
                                                <a href="#"
                                                   class="font-weight-bold text-dark">
                                                    ${model.fullName}
                                                </a>
                                            </p>

                                            <p class="mb-1-teacher font-w-600">
                                                <b> Năm sinh:</b> ${model.birthday}
                                            </p>
                                            <p class="mb-1-teacher font-w-600">
                                                <b> Sinh viên:</b> ${model.university}
                                            </p>
                                            <p class="mb-1-teacher font-w-600">
                                                <b>Ngành học:</b> ${model.major}
                                            </p>
                                            <p class="mb-1-teacher font-w-600">
                                                <strong>Mã GS:</strong> GS${model.id}
                                            </p>
                                            <div>
                                                <strong class="mb-1-teacher font-w-600">Môn dạy: </strong>
                                                <span class="font-w-600">${model.subject}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <h6 class="my-1"><strong class="d-block">Profile</strong>
                                        </h6>
                                        <div class="font-w-600">
                                            - Điểm thi THPT Quốc gia Toán: 9.2<br />
                                            - Cấp 1,2 tham gia Đội tuyển HSG Toán<br />
                                            - Cấp 1 đạt 3 giải Khuyến khích HSG Toán cấp Huyện<br />
                                            - Cấp 2: đạt 2 giải Nhì HSG Toán cấp Huyện, giải Nhất Toán Tiếng Anh qua
                                            mạng, giải Khuyến khích HSG Toán cấp Tỉnh<br />
                                            - Có hơn 3 năm kinh nghiệm gia sư 1 kèm 1<br />
                                            - Nắm chắc kiến thức, nhận dạy học sinh mất gốc, thi chuyển cấp, thi
                                            THPT Quốc gia, ôn luyện kiến thức từ cơ bản đến nâng cao
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 p-0 col-12 d-none d-md-block">
                                    <img src ="<c:url value="/template/web/quan/vn/storage/images/about.png"/>"
                                         class="lazy qc-image" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-main">
                        <div class="header-box-main">
                            <h2>Các lớp đang tuyển</h2>
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
                            <h2>Các lớp đã (đang) dạy</h2>
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
                    <div id="vue-comment">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>