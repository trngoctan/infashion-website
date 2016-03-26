<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:directive.include file="includes/top.jsp" />
<jsp:directive.include file="includes/menu.jsp" />
<title>Người dùng | InFashion</title>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Danh sách người dùng
                <small>Người dùng</small>
            </h1>
            <!--<ol class="breadcrumb">-->
            <!--<li><a href="#"><i class="fa fa-dashboard"></i> Tin tức</a></li>-->
            <!--<li class="active">Thể loại</li>-->
            <!--</ol>-->
        </section>

        <section class="content-toolbar">
            <button id="btn-back" class="btn btn-primary btn-sm" type="button" style="display:none">
                <i class="fa fa-arrow-left"></i> Quay lại
            </button>
            <button id="btn-create" class="btn btn-primary btn-sm" type="button">
                <i class="fa fa-plus"></i> Tạo mới
            </button>
            <button id="btn-save" class="btn btn-success btn-sm" type="button" data-action="save" style="display:none">
                <i class="fa fa-save"></i> Lưu
            </button>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div id="list-user-box">
                        <table id="list-user" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th data-column-id="userName">Tài khoản</th>
                                <th data-column-id="fullName">Họ và tên</th>
                                <th data-column-id="email">Email</th>
                                <th data-column-id="phone">Điện thoại</th>
                                <th data-column-id="commands" data-align="center" data-header-css-class="command" data-formatter="commands" data-sortable="false"></th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                    <div id="form-create-user" class="form-horizontal" style="display:none">
                        <div class="form-group">
                            <label for="txt-username" class="col-sm-2 control-label">Tài khoản</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="txt-username" placeholder="Tài khoản">
                            </div>
                            <label for="txt-fullname" class="col-sm-2 control-label">Họ tên</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="txt-fullname" placeholder="Họ tên">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txt-email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-4">
                                <input type="email" class="form-control" id="txt-email" placeholder="Email">
                            </div>
                            <label for="txt-phone" class="col-sm-2 control-label">Số điện thoại</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="txt-phone" placeholder="Số điện thoại">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txt-email" class="col-sm-2 control-label">Quyền hạn</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="txt-roles" placeholder="Quyền hạn">
                            </div>
                            <label for="txt-email" class="col-sm-2 control-label">Mật khẩu</label>
                            <div class="col-sm-4">
                                <input type="password" class="form-control" id="txt-password" placeholder="Mật khẩu">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->

<jsp:directive.include file="includes/bottom.jsp" />
<script type="text/javascript" src='<c:url value="/resources/admin/js/admin/user.js"/>'></script>
</body>
</html>