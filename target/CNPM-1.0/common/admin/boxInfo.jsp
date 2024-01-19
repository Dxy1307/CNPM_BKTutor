<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ page import="com.webgiasu.util.CommonInfoUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="values">
    <div class="val-box">
        <img src="<c:url value="/template/admin/img/graduation-cap-solid.svg"/>" alt="">
        <div>
            <h3><%=CommonInfoUtil.sumOfClassPending()%></h3>
            <span>Lớp đang chờ</span>
        </div>
    </div>
    <div class="val-box">
        <img src="<c:url value="/template/admin/img/graduation-cap-solid.svg"/>" alt="">
        <div>
            <h3><%=CommonInfoUtil.sumOfTutorTemp()%></h3>
            <span>Gia sư đang chờ</span>
        </div>
    </div>
    <div class="val-box">
        <img src="<c:url value="/template/admin/img/graduation-cap-solid.svg"/>" alt="">
        <div>
            <h3><%=CommonInfoUtil.sumOfClass()%></h3>
            <span>Lớp đã nhận</span>
        </div>
    </div>
    <div class="val-box">
        <img src="<c:url value="/template/admin/img/graduation-cap-solid.svg"/>" alt="">
        <div>
            <h3><%=CommonInfoUtil.sumOfTutor()%></h3>
            <span>Gia sư</span>
        </div>
    </div>
</div>