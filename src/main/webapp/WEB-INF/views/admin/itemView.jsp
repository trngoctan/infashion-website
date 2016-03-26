<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:directive.include file="includes/top.jsp" />
<jsp:directive.include file="includes/menu.jsp" />
<title>Bài viết | InFashion</title>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Danh sách bài viết
                <small>Bài viết</small>
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
                    <div id="list-item-box">
                        <table id="list-item" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th data-column-id="subject">Tên bài viết</th>
                                <th data-column-id="category">Thể loại</th>
                                <th data-column-id="created">Ngày tạo</th>
                                <th data-column-id="commands" data-align="center" data-header-css-class="command" data-formatter="commands" data-sortable="false"></th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                    <div id="form-create-item" class="form-horizontal" style="display:none">
                        <div class="form-group">
                            <label for="txt-item-subject" class="col-sm-2 control-label">Tên bài viết</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="txt-item-subject" placeholder="Tên bài viết">
                            </div>
                            <label for="cbb-item-category" class="col-sm-1 control-label">Thể loại</label>
                            <div class="col-sm-3">
                                <select class="form-control" id="cbb-item-category">
                                <c:forEach items="${cateList}" var="cate">
                                    <option value="${cate.id}" data-url="${cate.url}">${cate.name}</option>
                                </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txt-item-brief" class="col-sm-2 control-label">Mô tả ngắn</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" id="txt-item-brief" rows="2" placeholder="Mô tả ngắn"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txt-item-image" class="col-sm-2 control-label">Hình đại diện</label>
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="txt-item-image" placeholder="Chọn hình đại diện...">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-default" type="button"><i class="fa fa-file-picture-o"></i></button>
                                                </span>
                                </div><!-- /input-group -->
                            </div>
                            <label for="txt-item-viewed" class="col-sm-1 control-label">Lượt xem</label>
                            <div class="col-sm-1">
                                <input type="text" class="form-control" id="txt-item-viewed" value="0">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <textarea class="form-control" id="txt-item-content" placeholder="Nội dung"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
    <jsp:directive.include file="includes/bottom.jsp" />
    <script type="text/javascript" src='<c:url value="/resources/admin/js/ckeditor/ckeditor.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/admin/js/admin/item.js"/>'></script>
</body>
</html>