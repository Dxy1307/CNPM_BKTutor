<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="DSLopPHUrl" value="/quan-tri/lop-cua-phu-huynh/danh-sach"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thông tin lớp học của phụ huynh</title>
</head>
<body>
<div class="board">
    <div class="main-content-inner">
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                    <form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="monday">Môn dạy</label>
                                    <div class="col-sm-9">
                                        <form:input path="monday" cssClass="col-xs-10 col-sm-9" id="monday"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="hinhthuc">Hình thức</label>
                                    <div class="col-sm-9">
                                        <form:input path="hinhthuc" cssClass="col-xs-10 col-sm-9" id="hinhthuc"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="diadiem">Địa điểm</label>
                                    <div class="col-sm-9">
                                        <form:input path="diadiem" cssClass="col-xs-10 col-sm-9" id="diadiem"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="ttkhac">Yêu cầu khác</label>
                                    <div class="col-sm-9">
                                        <form:input path="ttkhac" cssClass="col-xs-10 col-sm-9" id="ttkhac"/>
                                    </div>
                                </div>


                            </div>

                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="trinhdo">Trình độ</label>
                                    <div class="col-sm-9">
                                        <form:input path="trinhdo" cssClass="col-xs-10 col-sm-9" id="trinhdo"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="thoigian">Thời gian</label>
                                    <div class="col-sm-9">
                                        <form:input path="thoigian" cssClass="col-xs-10 col-sm-9" id="thoigian"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="mucluong">Mức lương</label>
                                    <div class="col-sm-9">
                                        <form:input path="mucluong" cssClass="col-xs-10 col-sm-9" id="mucluong"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="id_Nguoitao">ID người tạo</label>
                                    <div class="col-sm-9">
                                        <form:input path="id_Nguoitao" cssClass="col-xs-10 col-sm-9" id="id_Nguoitao"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right" for="id_Nguoinhan">ID người nhận</label>
                                    <div class="col-sm-9">
                                        <form:input path="id_Nguoinhan" cssClass="col-xs-10 col-sm-9" id="id_Nguoinhan"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="clearfix form-actions" style="margin-bottom: 14px">
                                <div class="col-md-offset-3 col-md-9" style="width: 100%; text-align: center; margin-left: 0">
                                    <button class="btn" type="reset" id="rejectAddOrUpdate" onclick="turnback()">
                                        <i class="ace-icon fa fa-undo bigger-110"></i>
                                        Quay lại
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function turnback() {
        window.location.href = "${DSLopPHUrl}?page=1&limit=5&sortName=id&sortBy=asc";
    }
</script>
</body>
</html>