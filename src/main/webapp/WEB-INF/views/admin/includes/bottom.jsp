<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
			<footer class="main-footer">
                <!-- To the right -->
                <div class="pull-right hidden-xs">
                    Phiên bản: 1.0
                </div>
                <!-- Default to the left -->
                <strong>Copyright &copy; 2016 <a href="#">InFashion</a>.</strong> All rights reserved.
            </footer>
            <aside class="control-sidebar control-sidebar-dark" style="position: fixed; max-height: 100%; overflow: auto; padding-bottom: 50px;">
                <!-- Create the tabs -->
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    <li class="active"><a data-toggle="tab" href="#control-sidebar-home-tab"><i class="fa fa-home"></i></a></li>
                    <li><a data-toggle="tab" href="#control-sidebar-settings-tab"><i class="fa fa-gears"></i></a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- Home tab content -->
                    <div id="control-sidebar-home-tab" class="tab-pane active">
                        <h3 class="control-sidebar-heading">Recent Activity</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript:;">
                                    <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                                        <p>Will be 23 on April 24th</p>
                                    </div>
                                </a>
                            </li>
                        </ul><!-- /.control-sidebar-menu -->

                        <h3 class="control-sidebar-heading">Tasks Progress</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript:;">
                                    <h4 class="control-sidebar-subheading">
                                        Custom Template Design
                                        <span class="label label-danger pull-right">70%</span>
                                    </h4>
                                    <div class="progress progress-xxs">
                                        <div style="width: 70%" class="progress-bar progress-bar-danger"></div>
                                    </div>
                                </a>
                            </li>
                        </ul><!-- /.control-sidebar-menu -->

                    </div><!-- /.tab-pane -->
                    <!-- Stats tab content -->
                    <div id="control-sidebar-stats-tab" class="tab-pane">Stats Tab Content</div><!-- /.tab-pane -->
                    <!-- Settings tab content -->
                    <div id="control-sidebar-settings-tab" class="tab-pane">
                        <form method="post">
                            <h3 class="control-sidebar-heading">General Settings</h3>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Report panel usage
                                    <input type="checkbox" checked="" class="pull-right">
                                </label>
                                <p>
                                    Some information about this general settings option
                                </p>
                            </div><!-- /.form-group -->
                        </form>
                    </div><!-- /.tab-pane -->
                </div>
            </aside>
            <div class="control-sidebar-bg" style="position: fixed; height: auto;"></div>
         </div>

<script type="text/javascript" src='<c:url value="/resources/admin/js/jquery/jquery-2.2.1.min.js"/>'></script>
<script type="text/javascript" src='<c:url value="/resources/admin/js/bootstrap/bootstrap.min.js"/>'></script>
<script type="text/javascript" src='<c:url value="/resources/admin/js/jquery/plugin/jquery.slimscroll.min.js"/>'></script>
<script type="text/javascript" src='<c:url value="/resources/admin/js/jquery/plugin/fastclick.min.js"/>'></script>
<script type="text/javascript" src='<c:url value="/resources/admin/js/jquery/plugin/jquery.bootgrid.min.js"/>'></script>
<script type="text/javascript" src='<c:url value="/resources/admin/js/jquery/plugin/jquery.bootgrid.fa.min.js"/>'></script>
<script type="text/javascript" src='<c:url value="/resources/admin/js/app.js"/>'></script>
<script type="text/javascript">
    InFashion.config = {
        contextPath: '${pageContext.request.contextPath}',
        ext: ''
    };
</script>