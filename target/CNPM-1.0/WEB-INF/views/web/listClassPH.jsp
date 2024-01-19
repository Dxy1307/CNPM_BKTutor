<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tìm gia sư</title>
</head>
<body>

<div class="inner-content">
    <div class="find-teacher lazy" data-src=""
         style="background-image: url(/template/web/quan/vn/storage/banner/bg-i.jpg);">
        <div class="container">
            <h2>Phụ huynh tìm gia sư</h2>
            <div class="form-find-teacher">
                <div>
                    <form>
                        <div class="i-find">
                            <div>
                                <input type="text" aria-describedby="helpId" placeholder="Mã số lớp"
                                       class="form-control">
                            </div>
                        </div>
                        <div class="i-find">
                            <div><select class="form-control">
                                <option value="">Lớp học</option>
                                <option index="0" value="1">LỚP 1</option>
                                <option index="1" value="2">LỚP 2</option>
                                <option index="2" value="3">LỚP 3</option>
                                <option index="3" value="4">LỚP 4</option>
                                <option index="4" value="5">LỚP 5</option>
                                <option index="5" value="6">LỚP 6</option>
                                <option index="6" value="7">LỚP 7</option>
                                <option index="7" value="8">LỚP 8</option>
                                <option index="8" value="9">LỚP 9</option>
                                <option index="9" value="10">LỚP 10</option>
                                <option index="10" value="11">LỚP 11</option>
                                <option index="11" value="12">LỚP 12</option>
                            </select>
                            </div>
                        </div>
                        <div class="i-find">
                            <div>
                                <select class="form-control">
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
                                </select>
                            </div>
                        </div>
                        <div class="i-find">
                            <select class="form-control">
                                <option value="">Hà Nội</option>
                            </select>
                        </div>
                        <div class="i-find">
                            <select class="form-control">
                                <option value="">Quận huyện</option>
                                <option index="0" value="1">Ba Đình</option>
                                <option index="1" value="2">Hoàn Kiếm</option>
                                <option index="2" value="3">Tây Hồ</option>
                                <option index="3" value="4">Long Biên</option>
                                <option index="4" value="5">Cầu Giấy</option>
                                <option index="5" value="6">Đống Đa</option>
                                <option index="6" value="7">Hai Bà Trưng</option>
                                <option index="7" value="8">Hoàng Mai</option>
                                <option index="8" value="9">Thanh Xuân</option>
                                <option index="9" value="10">Hà Đông</option>
                                <option index="10" value="11">Bắc Từ Liêm</option>
                                <option index="11" value="12">Nam Từ Liêm</option>

                            </select>
                        </div>
                        <div class="i-find">
                            <select class="form-control">
                                <option value="">Chọn buổi học</option>
                                <option value="Sáng">Sáng</option>
                                <option value="Tối">Tối</option>
                            </select>
                        </div>
                        <div class="i-find">
                            <select class="form-control">
                                <option value="">Hình thức học</option>
                                <option value="online">Online</option>
                                <option value="offline">Offline</option>
                            </select>
                        </div>

                        <button type="button" class="btn btn-primary">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Danh sách các lớp -->
    <form action="<c:url value="/tim-gia-su"/>" id="formSubmit" method="get">
        <div class="padding-main" style="padding-bottom: 0;">
            <div class="container">
                <div class="row list-item">
                    <c:forEach var="item" items="${model.listResult}">
                        <c:url var="detailClassPH" value="/lop-hoc-phu-huynh">
                            <c:param name="id" value="${item.id}"/>
                        </c:url>
                        <a href="${detailClassPH}">
                            <div class="col-sm-6 col-md-4 col-lg-3">
                                <div class="item-c">
                                    <div class="item-c-header cursor-pointer">
                                        <div class="item-c-sub mb-0">Môn: <span>${item.monday}</span>
                                        </div>
                                        <div class="item-c-price ">${item.mucluong}</div>
                                        <div class="item-c-sub mb-0">Mã số: ST${item.id}</div>
                                        <div class="item-c-status grey">Chưa giao</div>
                                    </div>
                                    <div class="item-c-content cursor-pointer">
                                        <p>
                                            <span> ${item.monday} (LỚP ${item.trinhdo})</span>
                                        </p>
                                        <p> Hình thức học: ${item.hinhthuc} </p>
                                        <p>
                                            <c:if test="${not empty item.thoigian}">
                                                Thời gian: ${item.thoigians.size()} buổi/tuần
                                            </c:if>
                                            <c:if test="${empty item.thoigian}">
                                                Thời gian: Chưa xác định
                                            </c:if>
                                        </p>
                                        <p>Ngày tạo: ${item.createdDate}</p>
                                        <p>Yêu cầu khác: ${item.ttkhac}</p>
                                        <p>Địa chỉ: ${item.diadiem}</p>

                                    </div>
                                    <div class="item-c-footer d-flex justify-content-between">
                                        Nhận lớp
                                        <%--<a href="javascript:void(0)">Nhận lớp</a>--%>
                                        <a class="d-flex ml-auto" href="${detailClassPH}">
                                            <i class="fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>

                <div class="d-flex justify-content-center flex-wrap">
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
                    $('#limit').val(8);
                    $('#formSubmit').submit();
                }
            }
        });
    });
</script>
</body>
</html>