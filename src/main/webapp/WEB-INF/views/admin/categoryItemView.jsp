<jsp:directive.include file="includes/top.jsp" />
<jsp:directive.include file="includes/menu.jsp" />
			
			<div class="content-wrapper" style="min-height: 344px;">
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
                    <button style="display: none;" type="button" class="btn btn-primary btn-sm" id="btn-back">
                        <i class="fa fa-arrow-left"></i> Quay lại
                    </button>
                    <button type="button" class="btn btn-primary btn-sm" id="btn-create" style="display: inline-block;">
                        <i class="fa fa-plus"></i> Tạo mới
                    </button>
                    <button style="display: none;" data-action="save" type="button" class="btn btn-success btn-sm" id="btn-save">
                        <i class="fa fa-save"></i> Lưu
                    </button>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="list-user-box" style="display: block;">
                                <div class="bootgrid-header container-fluid" id="list-user-header"><div class="row"><div class="col-sm-12 actionBar"><div class="search form-group"><div class="input-group"><span class="icon fa input-group-addon fa-search"></span> <input type="text" placeholder="Search" class="search-field form-control"></div></div><div class="actions btn-group"></div></div></div></div><table class="table table-hover table-bordered bootgrid-table" id="list-user" aria-busy="false">
                                    <thead>
                                    <tr><th style="" class="text-left" data-column-id="userName"><a class="column-header-anchor sortable" href="javascript:void(0);"><span class="text">Tài khoản</span><span class="icon fa "></span></a></th><th style="" class="text-left" data-column-id="fullName"><a class="column-header-anchor sortable" href="javascript:void(0);"><span class="text">Họ và tên</span><span class="icon fa "></span></a></th><th style="" class="text-left" data-column-id="email"><a class="column-header-anchor sortable" href="javascript:void(0);"><span class="text">Email</span><span class="icon fa "></span></a></th><th style="" class="text-left" data-column-id="phone"><a class="column-header-anchor sortable" href="javascript:void(0);"><span class="text">Điện thoại</span><span class="icon fa "></span></a></th></tr>
                                    </thead>
                                    <tbody><tr data-row-id="0"><td style="" class="text-left">nbchicong</td><td style="" class="text-left">Nguyễn Bá Chí Công</td><td style="" class="text-left">nbchicong@gmail.com</td><td style="" class="text-left">0902844290</td></tr><tr data-row-id="1"><td style="" class="text-left">ttthanh</td><td style="" class="text-left">Trần Thu Thanh</td><td style="" class="text-left">ttthanh@gmail.com</td><td style="" class="text-left">0975064489</td></tr><tr data-row-id="2"><td style="" class="text-left">hathu</td><td style="" class="text-left">Trần Hà Thu</td><td style="" class="text-left">hathu@gmail.com</td><td style="" class="text-left">0909152768</td></tr></tbody>
                                </table><div class="bootgrid-footer container-fluid" id="list-user-footer"><div class="row"><div class="col-sm-6"><ul class="pagination"><li class="first disabled" aria-disabled="true"><a class="button" data-page="first">«</a></li><li class="prev disabled" aria-disabled="true"><a class="button" data-page="prev">&lt;</a></li><li class="page-1 active" aria-disabled="false" aria-selected="true"><a class="button" data-page="1">1</a></li><li class="next disabled" aria-disabled="true"><a class="button" data-page="next">&gt;</a></li><li class="last disabled" aria-disabled="true"><a class="button" data-page="last">»</a></li></ul></div><div class="col-sm-6 infoBar"><div class="infos">Showing 1 to 3 of 3 entries</div></div></div></div>
                            </div>
                            <div style="display: none;" class="form-horizontal" id="form-create-user">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="txt-username">Tài khoản</label>
                                    <div class="col-sm-4">
                                        <input type="text" placeholder="Tài khoản" id="txt-username" class="form-control">
                                    </div>
                                    <label class="col-sm-2 control-label" for="txt-fullname">Họ tên</label>
                                    <div class="col-sm-4">
                                        <input type="text" placeholder="Họ tên" id="txt-fullname" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="txt-email">Email</label>
                                    <div class="col-sm-4">
                                        <input type="email" placeholder="Email" id="txt-email" class="form-control">
                                    </div>
                                    <label class="col-sm-2 control-label" for="txt-phone">Số điện thoại</label>
                                    <div class="col-sm-4">
                                        <input type="text" placeholder="Số điện thoại" id="txt-phone" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section><!-- /.content -->
            </div>


			<jsp:directive.include file="includes/bottom.jsp" />
	<script type="text/javascript" src='<c:url value="/resources/admin/js/admin/user.js"/>'></script>		
</body>
</html>