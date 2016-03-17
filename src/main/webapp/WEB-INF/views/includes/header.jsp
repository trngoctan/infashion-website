<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

</head>
<body>
<div class="container-mp nav-wrapper">
    <div id="mp-pusher" class="wrapper mp-pusher">
        <button type="button" class="navbar-toggle btn-sidebar" id="trigger">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <nav id="mp-menu" class="mp-menu mp-cover">
            <div class="mp-level" data-level="1">
                <ul class="lv1">
                    <li><a href="trangchu">Trang chủ</a></li>
                    <li class="has-children icon icon-arrow-left">
                        <a href="sanpham">Sản phẩm</a>
                        <div class="mp-level" data-level="2">
                            <h2>Sản phẩm</h2>
                            <a class="mp-back" href="#">Quay lại</a>
                            <ul class="cd-secondary-nav count-nav-2">
                                <li><a href="#">Mẹ bầu</a></li>
                                <li><a href="#">Mẹ và bé</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Giới thiệu</a></li>
                </ul>
            </div>
        </nav>
        <script>
            new mlPushMenu( document.getElementById( 'mp-menu' ), document.getElementById( 'trigger' ), {
                type : 'cover'
            });
        </script>
        <div class="scroller">
            <div class="scroller-inner">
                <!--BEGIN HEADER-->
                <header class="container clearfix">
                    <div class="col-md-12 clearfix">
                        <div class="logo col-md-3 col-xs-12">
                            <!-- LOGO -->
                            <h1>
                                <a href="trangchu">
                                    <img src='<c:url value="/resources/images/logo/infashion.png"/>' alt="InFashion.VN" class="img-responsive">
                                </a>
                            </h1>
                            <h1 style="display:none">
                                <a href="trangchu">InFashion.VN</a>
                            </h1>
                        </div>
                        <div class="col-md-1 hidden-xs"></div>
                        <div class="col-md-8 hidden-xs">
                            <!-- BANNER -->
                            <div class="banner">
                                <a href="trangchu">
                                    <img width="100%" src='<c:url value="/resources/images/banner-top.jpg"/>' alt="banner topđasad" class="img-responsive">
                                </a>
                            </div>
                        </div>
                    </div>
                </header>
                <!--END HEADER-->