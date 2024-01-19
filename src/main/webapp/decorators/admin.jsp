<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><dec:title default="Trang chủ" /></title>
	<link rel="stylesheet" href="<c:url value='/template/admin/assets/css/bootstrap.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/template/admin/font-awesome/4.5.0/css/font-awesome.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/ace.min.css' />" class="ace-main-stylesheet" id="main-ace-style" />
    <script src="<c:url value='/template/admin/assets/js/ace-extra.min.js' />"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="<c:url value="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type='text/javascript' src='<c:url value="/template/admin/js/jquery-2.2.3.min.js" />'></script>
    <script src="<c:url value='/template/admin/assets/js/jquery.2.1.1.min.js' />"></script>
    <link rel="stylesheet" href="<c:url value="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
	<link rel="stylesheet" href="<c:url value='/template/admin/css/style.css'/>">

	<%-- sweetalert --%>
	<script src="<c:url value="/template/admin/sweetalert/sweetalert2.min.js"/>"></script>
	<link rel="stylesheet" href="<c:url value="/template/admin/sweetalert/sweetalert2.min.css"/>">

	<script src="<c:url value="/template/admin/js/commonJS/style.js"/>"></script>

	<%--<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.1/dist/sweetalert2.all.min.js" type="text/javascript"></script>--%>
	<%--<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.1/dist/sweetalert2.min.css" rel="stylesheet">--%>
</head>
<body>
	
	<%--<!-- header -->--%>
    <%--<%@ include file="/common/admin/header.jsp" %>--%>
    <%--<!-- header -->--%>

	<%--<div class="main-container" id="main-container">--%>
		<%--<script type="text/javascript">--%>
			<%--try{ace.settings.check('main-container' , 'fixed')}catch(e){}--%>
		<%--</script>--%>

		<%--<!-- menu -->--%>
    	<%--<%@ include file="/common/admin/menu.jsp" %>--%>
    	<%--<!-- menu -->--%>

    	<%--<dec:body/>--%>

    	<%--<!-- footer -->--%>
    	<%--<%@ include file="/common/admin/footer.jsp" %>--%>
    	<%--<!-- footer -->--%>

    	<%--<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse display">--%>
			<%--<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>--%>
		<%--</a>--%>
	<%--</div>--%>

	<%@ include file="/common/admin/menu.jsp" %>

	<div id="interface">

		<%@ include file="/common/admin/header.jsp" %>

		<%@ include file="/common/admin/boxInfo.jsp" %>

		<%--<div class="values">--%>
			<%--<div class="val-box">--%>
				<%--<img src="<c:url value="/template/admin/img/graduation-cap-solid.svg"/>" alt="">--%>
				<%--<div>--%>
					<%--<h3 class="number"></h3>--%>
					<%--<span>Lớp đang chờ</span>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="val-box">--%>
				<%--<img src="<c:url value="/template/admin/img/graduation-cap-solid.svg"/>" alt="">--%>
				<%--<div>--%>
					<%--<h3>2000</h3>--%>
					<%--<span>Gia sư đang chờ</span>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="val-box">--%>
				<%--<img src="<c:url value="/template/admin/img/graduation-cap-solid.svg"/>" alt="">--%>
				<%--<div>--%>
					<%--<h3>2000</h3>--%>
					<%--<span>Lớp đã nhận</span>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="val-box">--%>
				<%--<img src="<c:url value="/template/admin/img/graduation-cap-solid.svg"/>" alt="">--%>
				<%--<div>--%>
					<%--<h3>2000</h3>--%>
					<%--<span>Gia sư</span>--%>
				<%--</div>--%>
			<%--</div>--%>
		<%--</div>--%>

		<dec:body/>

		<!-- footer -->
		<%@ include file="/common/admin/footer.jsp" %>
		<!-- footer -->
	</div>

	<script src="<c:url value='/template/admin/paging/jquery.twbsPagination.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/jquery-ui.custom.min.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/jquery.ui.touch-punch.min.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/jquery.easypiechart.min.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/jquery.sparkline.min.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/jquery.flot.min.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/jquery.flot.pie.min.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/jquery.flot.resize.min.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/ace-elements.min.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/ace.min.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/bootstrap.min.js'/>"></script>
	
	<!-- page specific plugin scripts -->
	<script src="<c:url value='/template/admin/assets/js/jquery-ui.min.js'/>"></script>
</body>
</html>