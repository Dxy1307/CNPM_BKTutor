<%@ page import="com.webgiasu.util.SecurityUtils"%>
<%@include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">--%>
    <%--<div class="container">--%>
      <%--<a class="navbar-brand" href="#">Start Bootstrap</a>--%>
      <%--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">--%>
        <%--<span class="navbar-toggler-icon"></span>--%>
      <%--</button>--%>
      <%--<div class="collapse navbar-collapse" id="navbarResponsive">--%>
        <%--<ul class="navbar-nav ml-auto">--%>
          <%--<li class="nav-item active">--%>
            <%--<a class="nav-link" href="<c:url value='/trang-chu'/>">Trang chủ--%>
              <%--<span class="sr-only">(current)</span>--%>
            <%--</a>--%>
          <%--</li>--%>
          <%--&lt;%&ndash;Khi chưa đăng nhập thì hiển thị đăng nhập, đăng ký&ndash;%&gt;--%>
          <%--<security:authorize access="isAnonymous()">--%>
            <%--<li class="nav-item">--%>
              <%--<a class="nav-link" href="<c:url value="/dang-nhap"/>">Đăng nhập</a>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
              <%--<a class="nav-link" href="<c:url value="/dang-ky"/>">Đăng ký</a>--%>
            <%--</li>--%>
          <%--</security:authorize>--%>

          <%--&lt;%&ndash;Khi đã đăng nhập vào được&ndash;%&gt;--%>
          <%--<security:authorize access="isAuthenticated()">--%>
            <%--<li class="nav-item">--%>
              <%--<a class="nav-link" href="#">Welcome <%=SecurityUtils.getPrincipal().getFullName()%></a>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
              <%--<c:url var="updateInformation" value="/cap-nhat-thong-tin-ca-nhan">--%>
                <%--<c:param name="id" value="<%=SecurityUtils.getPrincipal().getId().toString()%>"/>--%>
              <%--</c:url>--%>
              <%--<a class="nav-link" href="${updateInformation}">Cập nhật thông tin cá nhân</a>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
              <%--<c:url var="registerTutor" value="/dang-ky-gia-su">--%>
                <%--<c:param name="id" value="<%=SecurityUtils.getPrincipal().getId().toString()%>"/>--%>
              <%--</c:url>--%>
              <%--<a class="nav-link" href="${registerTutor}">Đăng ký làm gia sư</a>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
              <%--<c:url var="PHRegisterClass" value="/phu-huynh-tao-lop">--%>
                <%--<c:param name="Id_Nguoitao" value="<%=SecurityUtils.getPrincipal().getId().toString()%>"/>--%>
              <%--</c:url>--%>
              <%--<a class="nav-link" href="${PHRegisterClass}">Phụ huynh tạo lớp</a>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
              <%--<c:url var="SVRegisterClass" value="/sinh-vien-tao-lop">--%>
                <%--<c:param name="Id_Nguoitao" value="<%=SecurityUtils.getPrincipal().getId().toString()%>"/>--%>
              <%--</c:url>--%>
              <%--<a class="nav-link" href="${SVRegisterClass}">Sinh viên tạo lớp</a>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
              <%--<a class="nav-link" href="<c:url value='/thoat'/>">Thoát</a>--%>
            <%--</li>--%>
          <%--</security:authorize>--%>
        <%--</ul>--%>
      <%--</div>--%>
    <%--</div>--%>
  <%--</nav>--%>

<%--Quan--%>
<div class="header header-inner">
  <div class="container">

    <div class="logo"  >
      <a href="#" class="lazy" style="background-image: url(/template/web/quan/vn/storage/logo/logo.jpg);"></a>
    </div>

    <security:authorize access="isAnonymous()">
      <div class="right-header">
        <a href="<c:url value="/dang-ky"/>" class="btn btn-link">Đăng ký</a>
        <a href="<c:url value="/dang-nhap"/>" class="btn btn-link">Đăng nhập</a>
      </div>
    </security:authorize>

    <security:authorize access="isAuthenticated()">
      <%--<div class="right-header">--%>
        <%--<a href="" class="btn btn-link"><%=SecurityUtils.getPrincipal().getFullName()%></a>--%>
      <%--</div>--%>
    <div class="right-header">
        <div class="dropdown">
            <div class="cover-i-user" onclick="toggleMenu('header_menu')">
                <span>
                    <%--<c:if test="<%=SecurityUtils.getPrincipal().getAvatar().isEmpty() == true%>">--%>
                        <%=SecurityUtils.getPrincipal().getFullName().substring(0, 2).toUpperCase()%>
                    <%--</c:if>--%>
                    <%--<c:if test="<%=!SecurityUtils.getPrincipal().getAvatar().isEmpty()%>">--%>
                        <%--<img src="<%=SecurityUtils.getPrincipal().getAvatar()%>">--%>
                    <%--</c:if>--%>
                </span>
            </div>
            <c:url var="updateInformation" value="/cap-nhat-thong-tin-ca-nhan">
                <c:param name="id" value="<%=SecurityUtils.getPrincipal().getId().toString()%>"/>
            </c:url>
            <c:url var="registerTutor" value="/dang-ky-gia-su">
                <c:param name="id" value="<%=SecurityUtils.getPrincipal().getId().toString()%>"/>
            </c:url>
            <c:url var="PHRegisterClass" value="/phu-huynh-tao-lop">
                <c:param name="Id_Nguoitao" value="<%=SecurityUtils.getPrincipal().getId().toString()%>"/>
            </c:url>
            <c:url var="SVRegisterClass" value="/sinh-vien-tao-lop">
                <c:param name="Id_Nguoitao" value="<%=SecurityUtils.getPrincipal().getId().toString()%>"/>
            </c:url>
            <%--<c:url var="statusClass" value="/trang-thai-lop">--%>
                <%--<c:param name="Id_Nguoitao" value="<%=SecurityUtils.getPrincipal().getId().toString()%>"/>--%>
            <%--</c:url>--%>
            <div id="header_menu" class="dropdown-menu" aria-labelledby="dropdownMenuButton_header">
                <a class="dropdown-item" href="${updateInformation}">Cập nhật thông tin cá nhân</a>
                <c:if test='<%=!SecurityUtils.getPrincipal().getRoleCode().equals("TUTOR")%>'>
                    <a class="dropdown-item" href="${registerTutor}">Đăng ký làm gia sư</a>
                </c:if>
                <c:if test='<%=SecurityUtils.getPrincipal().getRoleCode().equals("TUTOR")%>'>
                    <a class="dropdown-item" href="${SVRegisterClass}">GS tạo lớp tuyển học sinh</a>
                </c:if>
                <a class="dropdown-item" href="${PHRegisterClass}">PH tạo lớp tìm gia sư</a>
                <%--<a class="dropdown-item" href="${statusClass}">Trạng thái lớp</a>--%>
                <a class="dropdown-item" href="">Thay đổi mật khẩu</a>
                <a class="dropdown-item" href="<c:url value="/thoat"/>"><i class="fa fa-sign-out mr-1" aria-hidden="true"></i>Đăng xuất</a>
            </div>
        </div>
    </div>
    </security:authorize>

      <div class="menu">
          <ul>
              <li class="active"><a href="<c:url value="/trang-chu"/>">Trang chủ</a></li>
              <li><a href="#" class="link-a">Lớp học Gia Sư <i class="fa fa-chevron-down"></i></a>
                  <ul class="sub-a">
                      <li><a href="<c:url value="/gia-su-tuyen-sinh?page=1&limit=8"/>">Tuyển học sinh</a></li>
                      <li><a href="<c:url value="/tim-gia-su?page=1&limit=8"/>">Tìm gia sư</a></li>
                      <li><a href="<c:url value="/doi-ngu-gia-su?page=1&limit=15"/>">Đội ngũ gia sư</a></li>
                  </ul>
              </li>
              <li><a href="javascript:void(0)" class="link-a">Trung tâm dạy học <i
                      class="fa fa-chevron-down"></i></a>
                  <ul class="sub-a">
                      <li><a href="">Danh sách trung tâm</a></li>
                      <li><a href="">Các lớp học</a></li>

                  </ul>
              </li>
              <li><a href="javascript:void(0)">Ôn tập <i class="fa fa-chevron-down"></i></a>
                  <ul class="sub-a">
                      <li><a href="">Trắc nghiệm</a></li>
                      <li><a href="">Tài liệu</a></li>
                  </ul>
              </li>
              <li><a href="">Tin tức</a></li>
              <li><a href="">Thông tin trang web</a></li>
              <security:authorize access="isAuthenticated()">
                  <li class="notification_wrap">
                      <div>
                          <p>
                          <div class="notifier new">
                              <i class="bell fa fa-bell-o" onclick="toggleMenu('list_noti')"></i>
                              <div class="badge">3</div>
                          </div>
                          <div id="list_noti" class="dropdown-menu" style="top: 60px; left: -120px;">
                              <div class="dropdown-item">
                                  <div class="notify_info">
                                      <p>Yêu cầu gia sư<span>ĐÃ ĐƯỢC PHÊ DUYỆT!</span></p>
                                      <span class="notify_time">5 minutes ago</span>
                                  </div>
                              </div>
                              <div class="dropdown-item">
                                  <div class="notify_info">
                                      <p>Lớp GS8 môn Vật lý 8 đã tạo<span>THÀNH CÔNG</span></p>
                                      <span class="notify_time">10 minutes ago</span>
                                  </div>
                              </div>
                              <div class="dropdown-item">
                                  <div class="notify_info">
                                      <p>Lớp GS11 môn Toán 3 đã tạo<span>THÀNH CÔNG</span></p>
                                      <span class="notify_time">15 minutes ago</span>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </li>
              </security:authorize>
          </ul>
      </div>
      <div class="toogle-a"><span></span><span></span><span></span></div>
      <div class="bg-menu"></div>

  </div>
</div>