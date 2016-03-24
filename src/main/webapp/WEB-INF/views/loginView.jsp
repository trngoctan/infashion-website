<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <link href='<c:url value="/resources/images/icon/favicon.png"/>' rel="shortcut icon" type="image/png">
        <meta charset="UTF-8">
        <meta content="IE=edge" http-equiv="X-UA-Compatible">
        <title>Đăng nhập | InFashion</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"/>'>
        <link rel="stylesheet" href='<c:url value="/resources/css/font-awesome.min.css"/>'>
        <link rel="stylesheet" href='<c:url value="/resources/admin/css/ionicons.min.css"/>'>
        <link rel="stylesheet" href='<c:url value="/resources/admin/css/admin-lte.min.css"/>'>
        <link rel="stylesheet" href='<c:url value="/resources/admin/css/skin-blue.min.css"/>'>
        <!-- iCheck -->
        <link rel="stylesheet" href='<c:url value="/resources/admin/css/plugin/icheck/blue.css"/>'>
        <!--[if lt IE 9]>
        <script src='<c:url value="/resources/admin/js/html5/html5shiv.min.js"/>'></script>
        <script src='<c:url value="/resources/admin/js/respond/respond.min.js"/>'></script>
        <![endif]-->
    </head>
    <body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <a href="trangchu"><b>Admin</b>LTE</a>
        </div><!-- /.login-logo -->
        <div class="login-box-body">
            <p class="login-box-msg">Sign in to start your session</p>
            <form action="#" method="post">
                <div class="form-group has-feedback">
                    <input type="text" class="form-control" placeholder="Tài khoản">
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" class="form-control" placeholder="Mật khẩu">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <div class="checkbox icheck">
                            <label>
                                <input type="checkbox"> Ghi nhớ tôi
                            </label>
                        </div>
                    </div><!-- /.col -->
                    <div class="col-xs-4">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">Đăng nhập</button>
                    </div><!-- /.col -->
                </div>
            </form>

            <a href="#">Quên mật khẩu</a><br>

        </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <script type="text/javascript" src='<c:url value="/resources/admin/js/jquery/jquery-2.2.1.min.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/admin/js/bootstrap/bootstrap.min.js"/>'></script>
    <!-- iCheck -->
    <script type="text/javascript" src='<c:url value="/resources/admin/js/jquery/plugin/icheck.min.js"/>'></script>
    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
    </script>
    </body>
</html>