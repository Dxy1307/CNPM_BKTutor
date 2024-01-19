<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Trang chủ"/></title>
</head>

	<!-- Bootstrap core CSS -->
  	<link href="<c:url value='/template/web/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">

  	<!-- Custom styles for this template -->
  	<link href="<c:url value='/template/web/css/small-business.css'/>" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value="/template/web/css/mobiscroll.jquery.min.css"/>">
	<script src="<c:url value='template/web/vendor/jquery/jquery.min.js'/>"></script>
	<script src="<c:url value='template/web/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script src="<c:url value="/template/web/js/mobiscroll.jquery.min.js"/>"></script>

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.1/dist/sweetalert2.all.min.js" type="text/javascript"></script>
	<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.1/dist/sweetalert2.min.css" rel="stylesheet">

	<%--Link by Quan--%>
<%--dang-ky.html--%>
<link rel="preload" href="<c:url value="/template/web/quan/vn/assets/web/css/bootstrap0f16.css?t=1030"/>" as="style"
	  onload="this.onload=null;this.rel='stylesheet'">
<link href="<c:url value="/template/web/quan/vn/assets/web/css/dang-ky/style.css"/>" rel="stylesheet">
<link rel="preload" href="<c:url value="/template/web/quan/vn/assets/web/css/responsive0f16.css?t=1030"/>" as="style"
	  onload="this.onload=null;this.rel='stylesheet'">

<%--cap-nhat-thong-tin-ca-nhan.html--%>
<link rel="stylesheet" href="<c:url value="/template/web/quan/vn/assets/web/css/bootstrap0f16.css"/>" as="style"
      onload="this.onload=null;this.rel='stylesheet'">
<link rel="stylesheet" href="<c:url value="/template/web/quan/vn/assets/web/font-awesome/css/all0f16.css"/>" as="style"
      onload="this.onload=null;this.rel='stylesheet'">
<link href="<c:url value="/template/web/quan/tai-khoan/css/cap-nhat-thong-tin-ca-nhan/style.css"/>" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/template/web/quan/vn/assets/web/css/responsive0f16.css"/>" as="style"
      onload="this.onload=null;this.rel='stylesheet'">

<%--index.html--%>
<link rel="preload" href="<c:url value="/template/web/quan/vn/assets/web/font-awesome/css/all0f16.css?t=1030"/>" as="style"
      onload="this.onload=null;this.rel='stylesheet'">
<link rel="preload" href="<c:url value="/template/web/quan/vn/assets/web/css/slick0f16.css?t=1030"/>" as="style"
      onload="this.onload=null;this.rel='stylesheet'">
<link href="<c:url value="/template/web/quan/vn/assets/web/css/style-minify0f16.css?t=1030"/>" rel="stylesheet">

<%--dang-nhap.html--%>
<link href="<c:url value="/template/web/quan/vn/assets/web/css/dang-nhap/style.css"/>" rel="stylesheet">
<%--dang-ky.html--%>
<link href="<c:url value="/template/web/quan/vn/assets/web/css/dang-ky/style.css"/>" rel="stylesheet">
<%--doi-ngu-gia-su.html--%>
<link href="<c:url value="/template/web/quan/vn/assets/web/css/doi-ngu-gia-su/style.css"/>" rel="stylesheet">
<%--gia-su-tuyen-sinh.html--%>
<link href="<c:url value="/template/web/quan/vn/assets/web/css/gia-su-tuyen-sinh/style.css"/>" rel="stylesheet">
<%--tim-gia-su.html--%>
<%--quen-mat-khau.html--%>
<%--chi-tiet-gia-su.html--%>
<%--chi-tiet-lop-hoc.html--%>
<link href="<c:url value="/template/web/quan/vn/assets/web/css/chi-tiet-lop-hoc/style.css"/>" rel="stylesheet">
<%--cap-nhat-thong-tin-ca-nhan.html--%>
<%--dang-ky-lam-gia-su.html--%>
<%--trang-thai-lop.html--%>
<link href="<c:url value="/template/web/quan/tai-khoan/css/trang-thai-lop/style.css"/>" rel="stylesheet">
<%--tao-lop.html--%>
<%--index.html--%>
<link href="<c:url value="/template/web/quan/vn/assets/web/css/index/style.css"/>" rel="stylesheet">
<%--doi-mat-khau.html--%>
<link href="<c:url value="/template/web/quan/tai-khoan/css/doi-mat-khau/style.css"/>" rel="stylesheet">
<%--notice--%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body style="padding-top: 0;">
	<!-- Navigation -->
	<%--Header--%>
	<%@ include file="/common/web/header.jsp" %>

	<%--Content--%>
  	<dec:body/>

	<%--Hộp thông báo đăng ký dành cho gia sư--%>
	<security:authorize access="isAnonymous()">
		<div class="signup-main">
			<div class="container">
				<div class="signup-main-box">
					<h2>Đăng ký dành cho gia sư và giáo viên</h2>
					<p>Dạy thêm - Tăng thu nhập</p>
					<a href="<c:url value="/dang-ky"/>" class="btn btn-light">Đăng ký ngay</a>
				</div>
			</div>
		</div>
	</security:authorize>

  	<!-- Footer -->
  	<%@ include file="/common/web/footer.jsp" %>

	<%--Button contact--%>
	<div id="button-contact-vr" class="">
		<div id="gom-all-in-one">
			<!-- v3 -->
			<!-- contact -->
			<!-- end contact -->
			<!-- viber -->
			<!-- end viber -->
			<!-- zalo -->
			<div id="contact-vr" class="button-contact">
				<div class="phone-vr">
					<div class="phone-vr-circle-fill"></div>
					<div class="phone-vr-img-circle">
						<a title="https://m.me/www.ketnoigiasu.vn" target="_blank"
						   href="">
							<img src="<c:url value="/template/web/quan/vn/assets/lib/images/messenger1.png"/>">
						</a>
					</div>
				</div>
			</div>
			<div id="zalo-vr" class="button-contact">
				<div class="phone-vr">
					<div class="phone-vr-circle-fill"></div>
					<div class="phone-vr-img-circle">
						<a title="2399395211075226351" target="_blank" href="">
							<img src="<c:url value="/template/web/quan/vn/assets/lib/images/zalo.png"/>">
						</a>
					</div>
				</div>
			</div>
			<!-- end zalo -->
			<!-- Phone -->
			<div id="phone-vr" class="button-contact">
				<div class="phone-vr">
					<div class="phone-vr-circle-fill"></div>
					<div class="phone-vr-img-circle">
						<a title="" href="">
							<img src="<c:url value="/template/web/quan/vn/assets/lib/images/phone.png"/>">
						</a>
					</div>
				</div>
			</div>
			<!-- end phone -->
		</div><!-- end v3 class gom-all-in-one -->
	</div>
	<style>
		#button-contact-vr {
			right: 0;
		}

		#button-contact-vr {
			position: fixed;
			bottom: 20px;
			right: 10px;
			z-index: 99999;
		}
	</style>

<%--Script by Quan--%>
    <%--script index.html--%>
    <script src="<c:url value="/template/web/quan/com/js/web0f16.js"/>" type="text/javascript"></script>
    <script>
        let current_app = 'vue-get-classroom';
    </script>
    <script async src="<c:url value="/template/web/quan/vn/assets/lib/fancybox3/jquery.fancybox.min0f16.js?t=1030"/>"></script>
    <script async src="<c:url value="/template/web/quan/vn/assets/lib/jquery.lazy/jquery.lazy.min0f16.js?t=1030"/>"></script>

    <%--<script defer src="cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>--%>
    <script defer src="<c:url value="/template/web/quan/vn/assets/web/js/bootstrap0f16.js?t=1030"/>"></script>
    <script defer src="<c:url value="/template/web/quan/vn/assets/web/js/slick0f16.js?t=1030"/>"></script>
    <script defer src="<c:url value="/template/web/quan/vn/assets/web/js/main0f16.js?t=1030"/>"></script>

	<script src="<c:url value='template/web/vendor/jquery/jquery.min.js'/>"></script>
	<script src="<c:url value="/template/web/js/mobiscroll.jquery.min.js"/>"></script>
	<%--script pagination--%>
	<script src="<c:url value='/template/web/quan/pagination/jquery.twbsPagination.js' />"></script>
<script>
    function toggleMenu(id) {
        $("#" + id).toggleClass("show");
    }
</script>
</body>
</html>