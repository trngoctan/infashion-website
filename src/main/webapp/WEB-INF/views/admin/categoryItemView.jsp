<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<jsp:directive.include file="includes/top.jsp" />
<jsp:directive.include file="includes/menu.jsp" />

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Danh sách thể loại
                <small>Thể loại</small>
            </h1>
            <!--<ol class="breadcrumb">-->
            <!--<li><a href="#"><i class="fa fa-dashboard"></i> Tin tức</a></li>-->
            <!--<li class="active">Thể loại</li>-->
            <!--</ol>-->
        </section>

        <section class="content-toolbar">
            <button id="btn-create" class="btn btn-primary btn-sm" type="button" data-toggle="modal" data-target="#modal-create-category">
                <i class="fa fa-plus"></i> Tạo mới
            </button>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <table id="list-category" class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th data-column-id="id" data-formatter="idFormatter" data-align="center" data-header-align="center" data-header-css-class="col-id" data-type="numeric">ID</th>
                            <th data-column-id="name">Tên thể loại</th>
                            <th data-column-id="commands" data-align="center" data-header-css-class="command" data-formatter="commands" data-sortable="false"></th>
                        </tr>
                        </thead>
                    </table>
                    <!-- Modal Create -->
                    <div class="modal fade" id="modal-create-category" tabindex="-1" role="dialog" aria-labelledby="modal-create-label">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="modal-create-label">Tạo mới</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <label for="category-name" class="col-sm-3 control-label">Tên thể loại</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" id="category-name" placeholder="Tên thể loại">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="category-url" class="col-sm-3 control-label">Url</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" id="category-url" placeholder="Đường dẫn (URL)">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Hủy bỏ</button>
                                    <button id="btn-save" type="button" class="btn btn-primary" data-action="save">Lưu</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
    <jsp:directive.include file="includes/bottom.jsp" />
    <script type="text/javascript" src='<c:url value="/resources/admin/js/admin/category.js"/>'></script>
</body>
</html>