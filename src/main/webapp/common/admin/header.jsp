<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ page import="com.webgiasu.util.SecurityUtils"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%--<div id="navbar" class="navbar navbar-default          ace-save-state">--%>
    <%--<div class="navbar-container ace-save-state" id="navbar-container">--%>
        <%--&lt;%&ndash;<div class="navbar-header pull-left">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="<c:url value="/quan-tri/trang-chu"/>" class="navbar-brand">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<small>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<i class="fa fa-leaf"></i>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;BK Tutor&ndash;%&gt;--%>
                <%--&lt;%&ndash;</small>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--<div class="navbar-buttons navbar-header pull-right collapse navbar-collapse" role="navigation">--%>
            <%--<ul class="nav ace-nav">--%>
                <%--<li class="light-blue dropdown-modal">--%>
                    <%--<a data-toggle="dropdown" href="#" class="dropdown-toggle">--%>
                        <%--Xin chào, <%=SecurityUtils.getPrincipal().getFullName()%>--%>
                    <%--</a>--%>
                    <%--<li class="light-blue dropdown-modal">--%>
                        <%--<a href='<c:url value='/quan-tri/thoat'/>'>--%>
                            <%--<i class="ace-icon fa fa-power-off"></i>--%>
                            <%--Thoát--%>
                        <%--</a>--%>
                    <%--</li>--%>
                <%--</li>--%>
            <%--</ul>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<div class="navigation">
    <div class="n1">
        <div class="menubar"><img src="<c:url value="/template/admin/img/bars-solid.svg"/>" alt=""></div>
        <div id="search" oninput="searchUser">
            <img src="<c:url value="/template/admin/img/magnifying-glass-solid.svg"/>" alt="">
            <input type="text" placeholder="search">
        </div>

        <div class="profile">
            <%--<img src="<c:url value="/template/admin/img/bell-regular.svg"/>" alt="">--%>
            <%--<img src="<c:url value="/template/admin/img/user-regular.svg"/>" alt="">--%>
            <ul>
                <li>
                    <a href="#">
                        <%=SecurityUtils.getPrincipal().getFullName().toUpperCase()%>
                    </a>
                    <li>
                        <a href='<c:url value='/quan-tri/thoat'/>'>
                            Thoát
                        </a>
                    </li>
                </li>
            </ul>
        </div>
    </div>
</div>