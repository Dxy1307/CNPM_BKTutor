<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
         <%--pageEncoding="UTF-8"%>--%>
<%--<%@include file="/common/taglib.jsp" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<meta charset="UTF-8">--%>
    <%--<title>Trạng thái lớp</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div class="adm-main">--%>
    <%--<div class="container">--%>
        <%--<div class="box-adm">--%>
            <%--<div class="left-adm">--%>
                <%--<div class="user-adm">--%>
                    <%--<div class="cover-i-user">--%>
                        <%--<span>--%>
                            <%--<c:if test="${not empty user.avatar}">--%>
                                <%--<img src="${user.avatar}">--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${empty user.avatar}">--%>
                                <%--${user.fullName.substring(0, 2).toUpperCase()}--%>
                            <%--</c:if>--%>
                        <%--</span>--%>
                    <%--</div>--%>
                    <%--<div class="txt-i-user">--%>
                        <%--<strong>${user.fullName}</strong><br>--%>
                        <%--<span>${user.email}</span>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="nav-adm">--%>
                    <%--<ul>--%>
                        <%--<li class=""><a href="<c:url value="/cap-nhat-thong-tin-ca-nhan?id=${user.id}"/>" aria-current="page"--%>
                                        <%--class="">Cập nhật thông tin cá nhân</a>--%>
                        <%--</li>--%>
                        <%--<li class=""><a href="<c:url value="/dang-ky-gia-su?id=${user.id}"/>" class="">Đăng ký làm gia sư</a></li>--%>
                        <%--<!---->--%>
                        <%--<li class=""><a href="" class=""><span> PH tạo lớp tìm gia--%>
                                        <%--sư </span></a></li> <!---->--%>
                        <%--<li class="active"><a href="">Trạng thái lớp</a></li>--%>
                        <%--<li class=""><a href="" class="">Thay đổi mật khẩu</a></li>--%>
                        <%--<li><a href="<c:url value="/thoat"/>">Đăng xuất</a></li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<!--Phải-->--%>
            <%--<div class="right-adm w-100" >--%>
                <%--<div class="content-right-adm">--%>
                    <%--<div class="title-adm">--%>
                        <%--<h2>--%>
                            <%--<span>--%>
                                <%--Trạng thái các lớp của bạn--%>
                            <%--</span>--%>
                        <%--</h2>--%>
                    <%--</div>--%>
                    <%--<div class="tab-main">--%>
                        <%--<li class="my-1 active"><a href="javascript:void(0)">Các lớp chờ duyệt</a></li>--%>
                        <%--<li class="my-1">--%>
                            <%--<a href="javascript:void(0)">--%>
                                <%--Các lớp<span> đã duyệt</span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    <%--</div>--%>
                    <%--<div class="row list-item">--%>
                        <%--<div class="col-md-6 col-lg-4">--%>
                            <%--<div class="item-c opacity-05">--%>
                                <%--<div class="item-c-header">--%>
                                    <%--<div class="item-c-sub">--%>
                                        <%--Môn:--%>
                                        <%--<span>Toán Tiếng Anh</span>--%>
                                    <%--</div>--%>
                                    <%--<div class="item-c-price"><span>Thỏa thuận</span></div>--%>
                                    <%--<div class="item-c-status grey"><span>Đang tuyển</span></div>--%>
                                <%--</div>--%>
                                <%--<div class="item-c-content" style="height: 216px;">--%>
                                    <%--<p><span>LỚP 1</span></p>--%>
                                    <%--<p>--%>
                                        <%--Hình thức: <span>offline</span></p>--%>
                                    <%--<p>--%>
                                        <%--Địa chỉ:--%>
                                            <%--<span>Xã Đức Hạnh</span> <span>, </span> <span>Huyện Bảo--%>
                                            <%--Lâm</span> <span>, </span><span>Tỉnh Cao Bằng</span>--%>
                                    <%--</p>--%>
                                    <%--<p>--%>
                                        <%--Thời gian:--%>
                                        <%--<span>1 buổi/tuần</span>--%>
                                    <%--</p>--%>
                                    <%--<p>Yêu cầu khác: <span></span></p>--%>
                                    <%--<p class="text-center"><span class="badge badge-pill badge-secondary temp">--%>
                                            <%--( Đang kiểm duyệt )--%>
                                        <%--</span></p>--%>
                                    <%--<p class="no-limit-text">--%>
                                        <%--Ngày tạo: <span>11-01-2024 21:00</span></p>--%>
                                <%--</div>--%>
                                <%--<div class="item-c-footer d-flex justify-content-between" style="height: 57px;"><a--%>
                                        <%--href="" class="">Chỉnh--%>
                                        <%--sửa</a><a href="javascript:void(0)" class="btn"><i--%>
                                            <%--aria-hidden="true" class="fa fa-trash text-danger"></i></a></div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<%--<script>--%>
<%--</script>--%>

<%--</body>--%>