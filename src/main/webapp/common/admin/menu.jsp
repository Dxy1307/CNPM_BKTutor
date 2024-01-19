<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--<div id="sidebar" class="sidebar                  responsive                    ace-save-state">--%>
    <%--<script type="text/javascript">--%>
        <%--try{ace.settings.loadState('sidebar')}catch(e){}--%>
    <%--</script>--%>
    <%--<ul class="nav nav-list">--%>
        <%--<li >--%>
            <%--<a href="#" class="dropdown-toggle">--%>
                <%--<i class="menu-icon fa fa-list"></i>--%>
                <%--<span class="menu-text"></span>--%>
                <%--Quản lý bài viết--%>
                <%--<b class="arrow fa fa-angle-down"></b>--%>
            <%--</a>--%>
            <%--<b class="arrow"></b>--%>
            <%--<ul class="submenu">--%>
                <%--<li>--%>
                    <%--<a href='<c:url value="/quan-tri/bai-viet/danh-sach?page=1&limit=2&sortName=title&sortBy=desc"/>'>--%>
                        <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                        <%--DS bài viết--%>
                    <%--</a>--%>
                    <%--<b class="arrow"></b>--%>
                <%--</li>--%>
            <%--</ul>--%>
            <%--<ul class="submenu">--%>
                <%--<li>--%>
                    <%--<a href='<c:url value="/quan-tri/khach-hang/danh-sach?page=1&limit=4&sortName=id&sortBy=asc"/>'>--%>
                        <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                        <%--Danh sách khách hàng--%>
                    <%--</a>--%>
                    <%--<b class="arrow"></b>--%>
                <%--</li>--%>
            <%--</ul>--%>
            <%--<ul class="submenu">--%>
                <%--<li>--%>
                    <%--<a href='<c:url value="/quan-tri/danh-sach-lop-dang-ky/phu-huynh?page=1&limit=2&sortName=id&sortBy=asc"/>'>--%>
                        <%--<i class="menu-icon fa fa-caret-right"></i>--%>
                        <%--Danh sách lớp đăng ký của phụ huynh--%>
                    <%--</a>--%>
                    <%--<b class="arrow"></b>--%>
                <%--</li>--%>
            <%--</ul>--%>
        <%--</li>--%>
    <%--</ul>--%>
    <%--<div class="sidebar-toggle sidebar-collapse">--%>
        <%--<i class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>--%>
    <%--</div>--%>
<%--<body>--%>
<div>
    <section id="menu">
        <div class="logo">
            <a href="<c:url value="/quan-tri/trang-chu"/>" class="logo_link">
                <img src="https://ketnoigiasu.com/storage/1061/loHaXRZqLItuwu7LK5G5xOvrejnnvDgyXIa8cX8z.jpg" alt="">
                <h2>BK Tutor</h2>
            </a>
        </div>

        <div class="items">
            <ul>
                <%--<li>--%>
                    <%--<a href='<c:url value="/quan-tri/bai-viet/danh-sach?page=1&limit=5&sortName=title&sortBy=desc"/>'>--%>
                        <%--Danh sách bài viết--%>
                    <%--</a>--%>
                <%--</li>--%>

                <li>
                    <a href='<c:url value="/quan-tri/khach-hang/danh-sach?page=1&limit=5&sortName=id&sortBy=asc"/>'>
                        Danh sách khách hàng
                    </a>
                </li>

                <li>
                    <a href='<c:url value="/quan-tri/gia-su/danh-sach?page=1&limit=5&sortName=id&sortBy=asc"/>'>
                        Danh sách gia sư
                    </a>
                </li>

                <li>
                    <a href='<c:url value="/quan-tri/gia-su-tam/danh-sach?page=1&limit=5&sortName=id&sortBy=asc"/>'>
                        Danh sách gia sư chờ
                    </a>
                </li>

                <li>
                    <a href='<c:url value="/quan-tri/phu-huynh-dang-ky-lop/dang-sach?page=1&limit=5&sortName=id&sortBy=asc"/>'>
                        Lớp phụ huynh đăng ký
                    </a>
                </li>

                <li>
                    <a href='<c:url value="/quan-tri/sinh-vien-dang-ky-lop/danh-sach?page=1&limit=5&sortName=id&sortBy=asc"/>'>
                        Lớp gia sư đăng ký
                    </a>
                </li>

                <li>
                    <a href='<c:url value="/quan-tri/lop-cua-phu-huynh/danh-sach?page=1&limit=5&sortName=id&sortBy=asc"/>'>
                        Lớp của phụ huynh
                    </a>
                </li>

                <li>
                    <a href='<c:url value="/quan-tri/lop-cua-sinh-vien/danh-sach?page=1&limit=5&sortName=id&sortBy=asc"/>'>
                        Lớp của gia sư
                    </a>
                </li>
            </ul>
        </div>
    </section>
</div>
<%--</body>--%>
<%--</div>--%>