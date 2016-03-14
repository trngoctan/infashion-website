<!DOCTYPE html>

<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="vi">
<head>
    <link href='<c:url value="/resources/images/icon/favicon.png"/>' rel="shortcut icon" type="image/png">
    <meta charset="UTF-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>Trang chủ - InFashion</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=0" name="viewport">
    <link rel="canonical" href="/resources//">
    <meta property="og:type" content="website">
    <meta property="og:title" content="InFashion">
    <meta property="og:image" content='<c:url value="/resources/images/logo/logo.png"/>'>
    <meta property="og:url" content="/">
    <meta property="og:site_name" content="fmall">

    <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/theme.1.0.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/flexslider.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/styles.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/sidebar.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/roboto.css" />">

    <script type="text/javascript" src='<c:url value="/resources/js/jquery/jquery.min.1.11.0.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/bootstrap/bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/option_selection.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/api.jquery.js"/>'></script>

    <script type="text/javascript" src='<c:url value="/resources/js/scripts.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/modernizr.custom.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/html5shiv.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/jquery-migrate-1.2.0.min.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/jquery.touchSwipe.min.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/fixheightproductv2.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/haravan.plugin.1.0.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/jquery/jquery.flexslider.j"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/jquery/owl.carousel.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/mlpushmenu.js"/>'></script>
    
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
                        <li><a href="/">Trang chủ</a></li>
                        <li><a href="/">Sản phẩm</a></li>
                        <li><a href="/">Blog</a></li>
                        <li><a href="/">Giới thiệu</a></li>
                    </ul>
                </div>
            </nav>
            <div class="scroller">
                <div class="scroller-inner">
                    <!--BEGIN HEADER-->
                    <header class="container clearfix">
                        <div class="col-md-12 clearfix">
                            <div class="logo col-md-3 col-xs-12">
                                <!-- LOGO -->
                                <h1>
                                    <a href="/">
                                        <img src='<c:url value="=/resources/images/logo/logo-header.png"/>' alt="fmall" class="img-responsive">
                                    </a>
                                </h1>
                                <h1 style="display:none">
                                    <a href="/">fmall</a>
                                </h1>
                            </div>
                            <div class="col-md-9 hidden-xs">
                                <!-- BANNER -->
                                <div class="banner">
                                    <a href="">
                                        <img width="100%" src='<c:url value="/resources/images/banner-top.jpg"/>' alt="banner topđasad" class="img-responsive">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!--END HEADER-->
                    <!--BEGIN NAVBAR-->
                    <nav class="navbar-main navbar navbar-default cl-pri">
                        <!-- MENU MAIN -->
                        <div class="container nav-wrapper check_nav">
                            <div class="row">
                                <div class="navbar-header">
                                    <div class="pull-right mobile-menu-icon-wrapper">
                                        <ul class="mobile-menu-icon">
                                            <li class="search">
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-default dropdown-toggle icon-search" data-toggle="dropdown" aria-expanded="false">
                                                    </button>
                                                    <div class="dropdown-menu" role="menu">
                                                        <div class="search-bar">
                                                            <div class="">
                                                                <form class="col-md-12" action="/search">
                                                                    <input type="hidden" name="type" value="product">
                                                                    <input type="text" name="q" placeholder="Tìm kiếm...">
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li id="cart-target" class="cart">
                                                <a href="/cart" class="cart " title="Giỏ hàng">
                                                    <span class="fa fa-shopping-cart"></span>
                                                    <span id="cart-count">0</span>
                                                </a>
                                            </li>
                                            <li class="user"><a href="/account/login" title="Đăng nhập" class="fa fa-user"></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="navbar" class="navbar-collapse collapse">
                                    <ul class="nav navbar-nav clearfix sm" data-smartmenus-id="14564398842658706">
                                        <li class="active">
                                            <a href="/" class=" current" title="Trang chủ">
                                                <span>Trang chủ</span>
                                            </a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" title="Sản phẩm" class="has-submenu">
                                                <span>Sản phẩm</span>
                                            </a>
                                            <ul class="dropdown-menu sm-nowrap" role="menu" style="min-width: 10em; display: none; max-width: 20em; top: auto; left: 0px; margin-top: 0px; margin-left: 0px; width: auto;">
                                                <li>
                                                    <a href="#" title="Mẹ bầu">Mẹ bầu</a>
                                                </li>
                                                <li>
                                                    <a href="#" title="Mẹ và bé">Mẹ và bé</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" title="Giới thiệu" class="has-submenu">
                                                <span>Giới thiệu</span>
                                            </a>
                                            <ul class="dropdown-menu sm-nowrap" role="menu" style="min-width: 10em; display: none; max-width: 20em; top: auto; left: 0px; margin-top: 0px; margin-left: 0px; width: auto;">
                                                <li>
                                                    <a href="#" title="Mẹ bầu">InFashion</a>
                                                </li>
                                                <li>
                                                    <a href="#" title="Mẹ và bé">Các thương hiệu</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" class="" title="Hướng dẫn mua online">
                                                <span>Hướng dẫn</span>
                                            </a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" title="InFashion-er" class="has-submenu">
                                                <span>InFashion-er</span>
                                            </a>
                                            <ul class="dropdown-menu sm-nowrap" role="menu" style="min-width: 10em; display: none; max-width: 20em; top: auto; left: 0px; margin-top: 0px; margin-left: 0px; width: auto;">
                                                <li>
                                                    <a href="#" title="Club">Club</a>
                                                </li>
                                                <li>
                                                    <a href="#" title="Ưu đãi">Ưu đãi</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" class="" title="Liên hệ">
                                                <span>Liên hệ</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="hidden-xs pull-right right-menu">
                                    <ul class="nav navbar-nav pull-right sm" data-smartmenus-id="1456439884270434">
                                        <li id="user-icon">
                                            <ul>
                                                <li><a class="reg" href="#" title="Đăng ký">ĐĂNG KÝ</a></li>
                                                <li>hay <a class="log" href="#" title="Đăng nhập">Đăng nhập</a></li>
                                            </ul>
                                        </li>
                                        <li class="">
                                            <ul class="nodrop">
                                                <li id="search-icon" class="drop-control">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-default dropdown-toggle icon-search" data-toggle="dropdown" aria-expanded="false">
                                                        </button>
                                                        <div class="dropdown-menu" role="menu">
                                                            <div class="search-bar">
                                                                <div class="">
                                                                    <form class="col-md-12" action="/search">
                                                                        <input type="hidden" name="type" value="product">
                                                                        <input type="text" name="q" placeholder="Tìm kiếm...">
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                        <!-- Card -->
                                        <li class="">
                                            <ul class="nodrop" style="display: none;">
                                                <li id="cart-target" class="toolbar-cart ">
                                                    <a href="/cart" title="Giỏ hàng" class="cart">
                                                        <span class="icon-cart"></span>
                                                        <span>
                                                            <span id="cart-count">0</span>
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li> <!-- Card -->
                                    </ul>
                                </div><!--/.nav-collapse -->
                            </div>
                        </div><!-- End container  -->
                        <script>
                            $(window).resize(function(){
                                $('li.dropdown li.active').parents('.dropdown').addClass('active');
                                if($('.right-menu').width() + $('#navbar').width() > $('.check_nav.nav-wrapper').width() - 40)
                                {
                                    $('.container-mp.nav-wrapper').addClass('responsive-menu');
                                }
                                else{
                                    $('.container-mp.nav-wrapper').removeClass('responsive-menu');
                                }
                            })
                            $(document).on("click", "ul.mobile-menu-icon .dropdown-menu ,.drop-control .dropdown-menu, .drop-control .input-dropdown", function (e) {
                                e.stopPropagation();
                            });
                        </script>
                    </nav>
                    <!--END NAVBAR-->

