<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đội ngũ gia sư</title>
</head>
<body>
<div class="inner-content">
    <div class="find-teacher lazy" data-src=""
         style="background-image: url(/template/web/quan/vn/storage/banner/bg-i.jpg);">
        <div class="container">
            <h2>Đội ngũ gia sư
            </h2>
            <div class="form-find-teacher">
                <div>
                    <form class="w-100 d-flex flex-wrap justify-content-center">
                        <div class="p-0 col-md-5 col-12">
                            <div class="icon-search-on-input">
                                <i aria-hidden="true" class="fa fa-user icon-search text-muted"></i>
                                <input type="text" name="search" aria-describedby="helpId"
                                       placeholder="Nhập tên gia sư, mã số gia sư hoặc tên trường học của gia sư..."
                                       class="form-control input-search" fdprocessedid="">
                            </div>
                        </div>
                        <div class="p-0 col-md-4 col-12">
                            <div>
                                <select class="form-control" fdprocessedid="">
                                    <option value="">Môn học</option>
                                    <option index="0" value="1">Toán</option>
                                    <option index="1" value="2">Toán Tiếng Anh</option>
                                    <option index="2" value="3">Văn (Tiếng Việt)</option>
                                    <option index="3" value="4">Vật Lý</option>
                                    <option index="4" value="5">Hóa</option>
                                    <option index="5" value="6">Sinh</option>
                                    <option index="6" value="7">Tiếng Anh</option>
                                    <option index="7" value="8">Sử</option>
                                    <option index="8" value="9">Địa</option>
                                    <option index="9" value="10">Tin Học</option>
                                    <option index="10" value="11">Nhạc</option>
                                    <option index="11" value="12">Cờ Tướng</option>
                                    <option index="12" value="13">Cờ Vua</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-auto col-12 p-0">
                            <button type="button" class="btn btn-primary" fdprocessedid=""><i
                                    class="fa-solid fa-magnifying-glass"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--Hộp các gia sư-->
    <form action="<c:url value="/doi-ngu-gia-su"/>" id="formSubmit" method="get">
        <div class="detail-main index-teacher">
            <div class="container">
                <security:authorize access="isAnonymous()">
                    <div class="top-list-main">
                        <a href="<c:url value="/dang-ky"/>" class="btn btn-primary">Đăng ký ngay</a>
                    </div>
                </security:authorize>
                <div class="row list-item">
                    <c:forEach var="item" items="${model.listResult}">
                        <c:url var="detailTutor" value="/chi-tiet-gia-su">
                            <c:param name="id" value="${item.id}"/>
                        </c:url>
                        <div class="col-sm-6 col-md-4 col-lg-4">
                            <div class="item-t item-t-hover item-t-custom cursor-pointer">
                                <div class="item-t-pic">
                                    <a href="${detailTutor}"> <!--trang chi tiết gia sư-->
                                        <!--avatar-->
                                        <img src="${item.avatar}" alt="">
                                    </a>
                                </div>
                                <div class="item-t-txt">
                                    <h3 class="m-0">
                                        <a href="${detailTutor}"
                                           class="font-weight-bold ">
                                                ${item.fullName}
                                        </a>
                                    </h3>
                                    Gia sư
                                    <div class="limit-classrom-teacher">
                                        <span> ${item.subject}</span>
                                    </div>
                                    <div class="w-100 ">
                                        <div class="word-break-word">
                                            <span class="white-space-pre">Sinh viên:</span>
                                            <span class="pl-1">${item.university}</span>
                                        </div>
                                        <div class="word-break-word">
                                            <span class="white-space-pre">Ngành học:</span>
                                            <span class="pl-1">${item.major}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <!--pagination-->
                <div class="d-flex justify-content-center flex-wrap">
                    <nav>
                        <ul class="pagination" id="pagination"></ul>
                        <input type="hidden" value="" id="page" name="page"/>
                        <input type="hidden" value="" id="limit" name="limit"/>
                    </nav>
                </div>
            </div>
        </div>
    </form>
</div>

<script>
    let currentPage = ${model.page};
    let totalPages = ${model.totalPages};
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if(currentPage !== page) {
                    $('#page').val(page);
                    $('#limit').val(15);
                    $('#formSubmit').submit();
                }
            }
        });
    });
</script>
</body>
</html>