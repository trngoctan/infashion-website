<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 335px;"><section class="sidebar" style="height: 335px; overflow: hidden; width: auto;">
                    <!-- Sidebar Menu -->
                    <ul class="sidebar-menu">
                        <!--<li class="header">HEADER</li>-->
                        <!-- Optionally, you can add icons to the links -->
                        <li class="treeview active">
                            <a href="javascript:;">
                                <i class="fa fa-link"></i>
                                <span>Tin tức</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu menu-open" style="display: block;">
                                <li><a href="${pageContext.request.contextPath}/admin/categoryitem">Thể loại</a></li>
                                <li><a href="item.html">Bài viết</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="javascript:;">
                                <i class="fa fa-link"></i>
                                <span>Quản lý người dùng</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu" style="display: none;">
                                <li><a href="roles.html">Phân quyền</a></li>
                                <li class=""><a href="user.html">Người dùng</a></li>
                            </ul>
                        </li>
                    </ul><!-- /.sidebar-menu -->
                </section><div class="slimScrollBar" style="background: rgba(0, 0, 0, 0.2) none repeat scroll 0% 0%; width: 3px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 335px;"></div><div class="slimScrollRail" style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div></div>
                <!-- /.sidebar -->
            </aside>