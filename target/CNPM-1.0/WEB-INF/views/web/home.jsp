<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>Trang chủ</title>
</head>

<body>

  <%--<!-- Page Content -->--%>
  <%--<div class="container">--%>

    <%--<!-- Heading Row -->--%>
    <%--<div class="row align-items-center my-5">--%>
      <%--<div class="col-lg-7">--%>
        <%--<img class="img-fluid rounded mb-4 mb-lg-0" src="http://placehold.it/900x400" alt="">--%>
      <%--</div>--%>
      <%--<!-- /.col-lg-8 -->--%>
      <%--<div class="col-lg-5">--%>
        <%--<h1 class="font-weight-light">Business Name or Tagline</h1>--%>
        <%--<p>This is a template that is great for small businesses. It doesn't have too much fancy flare to it, but it makes a great use of the standard Bootstrap core components. Feel free to use this template for any project you want!</p>--%>
        <%--<a class="btn btn-primary" href="#">Call to Action!</a>--%>
      <%--</div>--%>
      <%--<!-- /.col-md-4 -->--%>
    <%--</div>--%>
    <%--<!-- /.row -->--%>

    <%--<!-- Call to Action Well -->--%>
    <%--<div class="card text-white bg-secondary my-5 py-4 text-center">--%>
      <%--<div class="card-body">--%>
        <%--<p class="text-white m-0">This call to action card is a great place to showcase some important information or display a clever tagline!</p>--%>
      <%--</div>--%>
    <%--</div>--%>

    <%--<!-- Content Row -->--%>
    <%--<div class="row">--%>
      <%--<div class="col-md-4 mb-5">--%>
        <%--<div class="card h-100">--%>
          <%--<div class="card-body">--%>
            <%--<h2 class="card-title">Card One</h2>--%>
            <%--<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>--%>
          <%--</div>--%>
          <%--<div class="card-footer">--%>
            <%--<a href="#" class="btn btn-primary btn-sm">More Info</a>--%>
          <%--</div>--%>
        <%--</div>--%>
      <%--</div>--%>
      <%--<!-- /.col-md-4 -->--%>
      <%--<div class="col-md-4 mb-5">--%>
        <%--<div class="card h-100">--%>
          <%--<div class="card-body">--%>
            <%--<h2 class="card-title">Card Two</h2>--%>
            <%--<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt pariatur voluptatem sunt quam eaque, vel, non in id dolore voluptates quos eligendi labore.</p>--%>
          <%--</div>--%>
          <%--<div class="card-footer">--%>
            <%--<a href="#" class="btn btn-primary btn-sm">More Info</a>--%>
          <%--</div>--%>
        <%--</div>--%>
      <%--</div>--%>
      <%--<!-- /.col-md-4 -->--%>
      <%--<div class="col-md-4 mb-5">--%>
        <%--<div class="card h-100">--%>
          <%--<div class="card-body">--%>
            <%--<h2 class="card-title">Card Three</h2>--%>
            <%--<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>--%>
          <%--</div>--%>
          <%--<div class="card-footer">--%>
            <%--<a href="#" class="btn btn-primary btn-sm">More Info</a>--%>
          <%--</div>--%>
        <%--</div>--%>
      <%--</div>--%>
      <%--<!-- /.col-md-4 -->--%>

    <%--</div>--%>
    <%--<!-- /.row -->--%>

  <%--</div>--%>
  <%--<!-- /.container -->--%>

  <div class="banner">
    <div class="slider-banner">
      <div class="item-banner">
        <div class="img-banner">
          <img data-lazy="/template/web/quan/vn/storage//banner/banner2.png" alt="">
        </div>
        <div class="txt-banner">
          <div class="container">
            <div class="row">
              <div class="col-sm-6">
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="item-banner">
        <div class="img-banner">
          <img data-lazy="/template/web/quan/vn/storage//banner/banner1.jpg" alt="Trung tâm kết nối gia sư">
        </div>
        <div class="txt-banner">
          <div class="container">
            <div class="row">
              <div class="col-sm-6">
                <h2>Trung tâm kết nối gia sư</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="padding-main seation-main-class">
      <div class="container">
          <div class="title-main">
              <h2><span>Danh sách</span> lớp mới</h2>
          </div>
          <div class="tab-main">
              <li class="active my-1">
                  <a href="<c:url value="/tim-gia-su?page=1&limit=8"/>">Tìm gia sư</a>
              </li>
              <li class=" my-1">
                  <a href="#">Lớp tuyển sinh</a>
              </li>

          </div>
          <div class="slider-4 slider-class">
              <div class="item-c">
                  <div class="item-c-header cursor-pointer">
                      <div class="item-c-sub mb-0">Môn: Toán</div>
                      <div class="item-c-price ">Thỏa thuận
                      </div>
                      <div class="item-c-sub mb-0">Mã số: ST20</div>
                      <div class="item-c-status grey">
                          Chưa giao
                      </div>
                  </div>
                  <div class="item-c-content cursor-pointer">
                      <p class="limit-classrom-teacher">
                          Toán (LỚP 5)
                      </p>
                      <p>
                          Hình thức học: Offline
                      </p>
                      <p>Thời gian: 3 buổi/tuần </p>
                      <p>Ngày tạo: 12/04/2023 10:04 </p>
                      <p>Yêu cầu khác: &quot;Toán 5/ HS nữ/ HL TBK
                          Cần GS củng cố kiến thức và nâng cao thêm
                          ĐC Lê Văn Lương, p.Nhân Chính, Thanh Xuân
                          YC GS nam nữ ok&quot;</p>
                      <p class="limit-address">
                      </p>
                  </div>
                  <div class="item-c-footer d-flex justify-content-between">

                      <a href="">Nhận lớp</a>
                      <a class="d-flex ml-auto" href="#">
                          <i class="fa fa-arrow-right"></i>
                      </a>
                  </div>
              </div>
              <div class="item-c">
                  <div class="item-c-header cursor-pointer">
                      <div class="item-c-sub mb-0">Môn: Vật Lý</div>
                      <div class="item-c-price ">Thỏa thuận
                      </div>
                      <div class="item-c-sub mb-0">Mã số: ST21</div>
                      <div class="item-c-status grey">
                          Chưa giao
                      </div>
                  </div>
                  <div class="item-c-content cursor-pointer">
                      <p class="limit-classrom-teacher">
                          Vật Lý (LỚP 9)
                      </p>
                      <p>
                          Hình thức học: Online
                      </p>
                      <p>Thời gian: 3 buổi/tuần </p>
                      <p>Ngày tạo: 12/04/2023 10:04 </p>
                      <p>Yêu cầu khác: &quot;Lý 9/ HS nam/ HL Khá
                          Cần nắm chắc kiến thức và ôn luyện thêm
                          Mục tiêu thi chuyên Lý
                          YC GS nam nữ ok
                          DC Trung Hòa, Nhân Chính
                          Học các buổi chiều trừ t4&quot;</p>
                      <p class="limit-address">
                      </p>
                  </div>
                  <div class="item-c-footer d-flex justify-content-between">

                      <a href="">Nhận lớp</a>
                      <a class="d-flex ml-auto" href="#">
                          <i class="fa fa-arrow-right"></i>
                      </a>
                  </div>
              </div>
              <div class="item-c">
                  <div class="item-c-header cursor-pointer">
                      <div class="item-c-sub mb-0">Môn: Tin Học</div>
                      <div class="item-c-price ">Thỏa thuận
                      </div>
                      <div class="item-c-sub mb-0">Mã số: ST22</div>
                      <div class="item-c-status grey">
                          Chưa giao
                      </div>
                  </div>
                  <div class="item-c-content cursor-pointer">
                      <p class="limit-classrom-teacher">
                          Tin Học (LỚP 10)
                      </p>
                      <p>
                          Hình thức học: Online
                      </p>
                      <p>Thời gian: 4 buổi/tuần </p>
                      <p>Ngày tạo: 12/04/2023 10:04 </p>
                      <p>Yêu cầu khác: &quot;Học sau Tết
                          Tin học 10/ HS nam / HL Khá Dạy tại nhà Trường Chinh, Đống Đa
                          YC GS nam nữ ok&quot;</p>
                      <p class="limit-address">
                      </p>
                  </div>
                  <div class="item-c-footer d-flex justify-content-between">

                      <a href="">Nhận lớp</a>
                      <a class="d-flex ml-auto" href="#">
                          <i class="fa fa-arrow-right"></i>
                      </a>
                  </div>
              </div>
              <div class="item-c">
                  <div class="item-c-header cursor-pointer">
                      <div class="item-c-sub mb-0">Môn: Hóa</div>
                      <div class="item-c-price ">Thỏa thuận
                      </div>
                      <div class="item-c-sub mb-0">Mã số: ST24</div>
                      <div class="item-c-status grey">
                          Chưa giao
                      </div>
                  </div>
                  <div class="item-c-content cursor-pointer">
                      <p class="limit-classrom-teacher">
                          Hóa (LỚP 11)
                      </p>
                      <p>
                          Hình thức học: Offline
                      </p>
                      <p>Thời gian: 2 buổi/tuần </p>
                      <p>Ngày tạo: 12/04/2023 10:04 </p>
                      <p>Yêu cầu khác: &quot;Toán + Tiếng Việt + Tiếng Anh 4/ HS nữ/ HL Khá
                          Cần GS ôn luyện chắc kiến thức và nâng cao thêm
                          Mục tiêu thi cấp 2 CLC
                          Dạy tại nhà ĐC phú thượng tây hồ
                          YC GS nữ, tách GS
                          Học phí 150 - 200k/2&quot;</p>
                      <p class="limit-address">
                      </p>
                  </div>
                  <div class="item-c-footer d-flex justify-content-between">

                      <a href="">Nhận lớp</a>
                      <a class="d-flex ml-auto" href="#">
                          <i class="fa fa-arrow-right"></i>
                      </a>
                  </div>
              </div>
          </div>
          <div class="view-all-btn"><a href="" class="btn btn-primary">Xem tất cả</a></div>
      </div>
  </div>

  <div class="padding-main seation-main-teacher">
      <div class="container">
          <div class="title-main title-white">
              <h2><span>Gia sư </span> tiêu biểu</h2>
          </div>
          <div class="slider-teacher slider-tes">
              <div class="item-t item-t-hover item-t-custom cursor-pointer">
                  <div class="item-t-pic"><a href="">
                      <img src="<c:url value="/template/web/quan/vn/storage/avatar/3509854.jpg"/>"
                           alt="">
                  </a></div>
                  <div class="item-t-txt">
                      <h3 class="m-0">
                          <a href=""
                             class="font-weight-bold ">
                              Nguyễn Đức Duy
                          </a>
                      </h3>
                      Gia sư
                      <div class="limit-classrom-teacher">
                            <span>
                                Địa
                            </span>
                      </div>
                      <div class="w-100 ">
                          <div class="word-break-word">
                              <span class="white-space-pre">Sinh viên:</span><span class="pl-1">Đại học Quốc Gia Hà Nội
                                </span>
                          </div>
                          <div class="word-break-word">
                              <span class="white-space-pre">Ngành học:</span><span class="pl-1">Công nghệ thông tin</span>
                          </div>
                      </div>
                  </div>
              </div>

              <div class="item-t item-t-hover item-t-custom cursor-pointer">
                  <div class="item-t-pic"><a href="">
                      <img src="https://cdn.sforum.vn/sforum/wp-content/uploads/2023/11/avatar-dep-85.jpg"
                           alt="">
                  </a></div>
                  <div class="item-t-txt">
                      <h3 class="m-0">
                          <a href=""
                             class="font-weight-bold ">
                              Trần Đức Nam
                          </a>
                      </h3>
                      Gia sư
                      <div class="limit-classrom-teacher">
                            <span>
                                Tiếng Anh
                            </span>
                      </div>
                      <div class="w-100 ">
                          <div class="word-break-word">
                              <span class="white-space-pre">Sinh viên:</span><span class="pl-1">CNTT&TT - Đại học Bách Khoa Hà Nội
                                </span>
                          </div>
                          <div class="word-break-word">
                              <span class="white-space-pre">Ngành học:</span><span class="pl-1">Hóa dược</span>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <div class="view-all-btn"><a href="<c:url value="/doi-ngu-gia-su?page=1&limit=15"/>" class="btn btn-primary">Xem tất cả</a></div>
      </div>
  </div>

  <div class="padding-main seation-main-about py-2">
      <div class="container">
          <div class="row">
              <div class="col-sm-6 txt-about">
                  <div class="title-main ">
                      <h2 class="up-font-ad-home-1"><span>Trung tâm </span> kết nối gia sư</h2>
                  </div>
                  <p class="up-font-ad-home-2">100% Gia sư Trường TOP từ các trường Đại học Sư Phạm, Đại học Quốc Gia,
                      Đại học Kinh tế Quốc dân, Đại
                      học Ngoại ngữ…</p>
                  <ul class="ul-feature">
                  </ul>
              </div>
              <div class="col-sm-6 img-about">
                  <img class="lazy" src="<c:url value="/template/web/quan/vn/storage/images/about.png"/>" width="100%">
              </div>
          </div>
      </div>
  </div>

  <div class="padding-main seation-main-tes">
      <div class="container ">
          <div class="title-main">
              <h2><span>Phụ huynh </span> &amp; Gia sư nói về chúng tôi</h2>
          </div>
          <div class="slider-2 slider-tes slick-initialized slick-slider">
              <div class="slick-list draggable" >
                  <div class="item-tes" style="width: 50%; display:block;">
                      <div class="img-tes">
                          <img class="lazy " src="https://ketnoigiasu.com/storage/51/V0mqKD5Fp3WjVTphdgXjuv8LscBTYUJfTws9gpJ9.jpg" style="">
                      </div>
                      <div class="txt-tes">
                          <p>Về phía gia đình rất hài lòng về cách dạy của bạn Dư. Bạn dạy dễ hiểu và
                              truyệt đạt tốt, sau này tìm được bạn đồng hành nhất định chị sẽ nhờ bạn Dư ở
                              trung tâm mình.</p>
                          <div class="name-tes">
                              <h3>PH Phượng 0848****88</h3>

                          </div>
                      </div>
                  </div>
                  <div class="item-tes" style="width: 50%; display:block;">
                      <div class="img-tes">
                          <img class="lazy " src="https://ketnoigiasu.com/storage/51/V0mqKD5Fp3WjVTphdgXjuv8LscBTYUJfTws9gpJ9.jpg" style="">
                      </div>
                      <div class="txt-tes">
                          <p>Về phía gia đình rất hài lòng về cách dạy của bạn Dư. Bạn dạy dễ hiểu và
                              truyệt đạt tốt, sau này tìm được bạn đồng hành nhất định chị sẽ nhờ bạn Dư ở
                              trung tâm mình.</p>
                          <div class="name-tes">
                              <h3>PH Phượng 0848****88</h3>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>

</body>

</html>