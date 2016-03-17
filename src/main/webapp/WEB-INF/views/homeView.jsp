<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<jsp:directive.include file="includes/top.jsp"/>
<jsp:directive.include file="includes/common.jsp"/>

<title>Trang chủ - InFashion</title>
<meta property="og:title" content="InFashion">

<link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.css" />">
<script type="text/javascript" src='<c:url value="/resources/js/jquery/owl.carousel.js"/>'></script>
<link rel="stylesheet" href="<c:url value="/resources/css/flexslider.css" />">
<script type="text/javascript" src='<c:url value="/resources/js/jquery/jquery.flexslider.js"/>'></script>

<jsp:directive.include file="includes/header.jsp"/>
<jsp:directive.include file="includes/menu.jsp"/>

<section id="content" class="clearfix container">
    <div class="row contents">
        <div class="col-md-9 col-sm-12 col-xs-12">
            <!-- Begin slider -->
            <div class="slider-default col-md-12 col-sm-12 col-xs-12">
                <div class="flexslider-container">
                    <div class="flexslider">
                        <ul class="slides">
                            <li><a href="#">
                                <img src='<c:url value="/resources/images/slideshow/slideshow_1.jpg"/>' alt="2323123"/>
                            </a></li>
                            <li><a href="#"> <img
                                    src='<c:url value="/resources/images/slideshow/slideshow_2.jpg"/>' alt=""/>
                            </a></li>
                            <li><a href="#"> <img
                                    src='<c:url value="/resources/images/slideshow/slideshow_3.jpg"/>' alt=""/>
                            </a></li>
                        </ul>
                        <div class="flex-controls"></div>
                    </div>
                </div>
            </div>
            <!-- End slider -->
        </div>
        <div class="top-banner col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="banner1">
                <div class="image">
                    <a href=""><img class="img-responsive" alt="" src='<c:url value="/resources/images/products/img_left_1.jpg"/>'></a>
                </div>
            </div>
            <div class="banner2">
                <div class="image">
                    <a href=""><img class="img-responsive" alt="" src='<c:url value="/resources/images/products/img_left_2.jpg"/>'></a>
                </div>
            </div>
        </div>
    </div>
    <aside class="col-md-3  hidden-sm hidden-xs">
        <!-- Sidebar menu-->
        <jsp:directive.include file="boxes/category.jsp"/>
        <!-- End Sidebar menu-->
        <!-- Support-->
        <jsp:directive.include file="boxes/support.jsp"/>
        <!-- Support-->
        <!-- Facebook -->
        <!-- Facebook-->
        <!-- Banner quảng cáo -->
        <jsp:directive.include file="boxes/ads-leftbar.jsp"/>
        <!-- Banner quảng cáo -->
    </aside>
    <div class="col-md-9 col-sm-12 col-xs-12">
        <!-- Content-->
        <div class="main-content">

            <!-- Sản phẩm trang chủ -->

            <div class="product-list clearfix">
                <div class="title-line">
                    <h3>Sản phẩm nổi bật</h3>
                </div>
                <!--Product loop-->
                <div class="row content-product-list products-resize">
                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng  -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">
                                <a href="/products/ao-cardigan-dolman"
                                   title="Áo Cardigan Dolman">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/ao-cardigan-dolman"
                                                alt="Áo Cardigan Dolman">
                                    </div>
                                    <img alt="Áo Cardigan Dolman"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/mango-3379-646093-1_large.jpg">
                                </a>
                            </div>
                            <div class="product-detail clearfix">
                                <!-- sử dụng pull-left -->
                                <p class="pro-price">799,000₫</p>
                                <p class="pro-price-del text-left"></p>
                                <h3 class="pro-name">
                                    <a href="/products/ao-cardigan-dolman"
                                       title="Áo Cardigan Dolman">Áo Cardigan Dolman </a>
                                </h3>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng  -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">
                                <a href="/products/inner-circle-dam-suong-co-v"
                                   title="INNER CIRCLE - Đầm Suông Cổ V">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/inner-circle-dam-suong-co-v"
                                                alt="INNER CIRCLE - Đầm Suông Cổ V">
                                    </div>
                                    <img alt="INNER CIRCLE - Đầm Suông Cổ V"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/inner-circle-6633-520093-2_large.jpg">
                                </a>
                            </div>

                            <div class="product-detail clearfix">


                                <!-- sử dụng pull-right -->
                                <p class="pro-price">469,000₫</p>
                                <p class="pro-price-del text-left"></p>
                                <h3 class="pro-name">
                                    <a href="/products/inner-circle-dam-suong-co-v"
                                       title="INNER CIRCLE - Đầm Suông Cổ V">INNER CIRCLE - Đầm
                                        Suông Cổ V </a>
                                </h3>

                            </div>
                        </div>
                    </div>


                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng end -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">

                                <a href="/products/mango" title="MANGO - Đầm May Đắp Chéo">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/mango" alt="MANGO - Đầm May Đắp Chéo">
                                    </div>
                                    <img alt="MANGO - Đầm May Đắp Chéo"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/mango-3101-175093-1_large.jpg">
                                </a>
                            </div>

                            <div class="product-detail clearfix">


                                <!-- sử dụng pull-left -->
                                <p class="pro-price">1,699,000₫</p>
                                <p class="pro-price-del text-left"></p>
                                <h3 class="pro-name">
                                    <a href="/products/mango" title="MANGO - Đầm May Đắp Chéo">MANGO
                                        - Đầm May Đắp Chéo </a>
                                </h3>

                            </div>
                        </div>
                    </div>


                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng  -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">


                                <a href="/products/mango-dam-xoe-in-cham-bi"
                                   title="MANGO - Đầm Xòe In Chấm Bi">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/mango-dam-xoe-in-cham-bi"
                                                alt="MANGO - Đầm Xòe In Chấm Bi">
                                    </div>
                                    <img alt="MANGO - Đầm Xòe In Chấm Bi"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/mango-3128-075093-2_ee030daf-1033-400d-79a6-288f0b60ec3d_large.jpg">
                                </a>
                            </div>

                            <div class="product-detail clearfix">


                                <!-- sử dụng pull-right -->
                                <p class="pro-price">1,299,000₫</p>
                                <p class="pro-price-del text-left"></p>
                                <h3 class="pro-name">
                                    <a href="/products/mango-dam-xoe-in-cham-bi"
                                       title="MANGO - Đầm Xòe In Chấm Bi">MANGO - Đầm Xòe In Chấm
                                        Bi </a>
                                </h3>

                            </div>
                        </div>
                    </div>


                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng  -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">


                                <a href="/products/zyp-ao-so-mi-nam-dang-om"
                                   title="ZYP - Áo Sơ Mi Nam Dáng Ôm">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/zyp-ao-so-mi-nam-dang-om"
                                                alt="ZYP - Áo Sơ Mi Nam Dáng Ôm">
                                    </div>
                                    <img alt="ZYP - Áo Sơ Mi Nam Dáng Ôm"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/zyp-5061-884573-1_large.jpg">
                                </a>
                            </div>

                            <div class="product-detail clearfix">


                                <!-- sử dụng pull-left -->
                                <p class="pro-price">499,000₫</p>
                                <p class="pro-price-del text-left"></p>
                                <h3 class="pro-name">
                                    <a href="/products/zyp-ao-so-mi-nam-dang-om"
                                       title="ZYP - Áo Sơ Mi Nam Dáng Ôm">ZYP - Áo Sơ Mi Nam Dáng
                                        Ôm </a>
                                </h3>

                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-12 pull-center"></div>
                </div>
            </div>
            <!--Product loop-->


            <div class="product-list clearfix ">
                <div class="title-line">
                    <h3>Sản phẩm khuyến mãi</h3>
                </div>

                <div class="row content-product-list products-resize">
                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng end -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">

                                <div class="product-sale">
                                    <img
                                            src="//hstatic.net/0/0/global/design/theme-default/sale.png"
                                            alt="Áo Len Colourblocked"> <span><label
                                        class="sale-lb">Sale</label> 29%</span>
                                </div>


                                <a href="/products/ao-len-colourblocked"
                                   title="Áo Len Colourblocked">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/ao-len-colourblocked"
                                                alt="Áo Len Colourblocked">
                                    </div>
                                    <img alt="Áo Len Colourblocked"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/24-01-5482-929753-2_large.jpg">
                                </a>
                            </div>

                            <div class="product-detail clearfix">


                                <!-- sử dụng pull-right -->
                                <p class="pro-price">499,000₫</p>
                                <p class="pro-price-del text-left">
                                    <del class="compare-price">700,000₫</del>
                                </p>
                                <h3 class="pro-name">
                                    <a href="/products/ao-len-colourblocked"
                                       title="Áo Len Colourblocked">Áo Len Colourblocked </a>
                                </h3>

                            </div>
                        </div>
                    </div>


                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng  -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">

                                <div class="product-sale">
                                    <img
                                            src="//hstatic.net/0/0/global/design/theme-default/sale.png"
                                            alt="Áo Thun"> <span><label class="sale-lb">Sale</label>
										17%</span>
                                </div>


                                <a href="/products/ao-thun" title="Áo Thun">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/ao-thun" alt="Áo Thun">
                                    </div>
                                    <img alt="Áo Thun"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/24-01-2420-384363-2_large.jpg">
                                </a>
                            </div>

                            <div class="product-detail clearfix">


                                <!-- sử dụng pull-left -->
                                <p class="pro-price">499,000₫</p>
                                <p class="pro-price-del text-left">
                                    <del class="compare-price">600,000₫</del>
                                </p>
                                <h3 class="pro-name">
                                    <a href="/products/ao-thun" title="Áo Thun">Áo Thun </a>
                                </h3>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng  -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">
                                <div class="product-sale">
                                    <img
                                            src="//hstatic.net/0/0/global/design/theme-default/sale.png"
                                            alt="MANGO - Đầm In Họa Tiết"> <span><label
                                        class="sale-lb">Sale</label> 35%</span>
                                </div>
                                <a href="/products/mango-dam-in-hoa-tiet"
                                   title="MANGO - Đầm In Họa Tiết">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/mango-dam-in-hoa-tiet"
                                                alt="MANGO - Đầm In Họa Tiết">
                                    </div>
                                    <img alt="MANGO - Đầm In Họa Tiết"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/mango-3861-864183-1_large.jpg">
                                </a>
                            </div>
                            <div class="product-detail clearfix">
                                <!-- sử dụng pull-right -->
                                <p class="pro-price">1,299,000₫</p>
                                <p class="pro-price-del text-left">
                                    <del class="compare-price">2,000,000₫</del>
                                </p>
                                <h3 class="pro-name">
                                    <a href="/products/mango-dam-in-hoa-tiet"
                                       title="MANGO - Đầm In Họa Tiết">MANGO - Đầm In Họa Tiết </a>
                                </h3>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng end -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">
                                <div class="product-sale">
                                    <img
                                            src="//hstatic.net/0/0/global/design/theme-default/sale.png"
                                            alt="PUMA - Áo Thể Thao Active Formstripe"> <span><label
                                        class="sale-lb">Sale</label> 26%</span>
                                </div>
                                <a href="/products/puma-ao-the-thao-active-formstripe-1"
                                   title="PUMA - Áo Thể Thao Active Formstripe">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/puma-ao-the-thao-active-formstripe-1"
                                                alt="PUMA - Áo Thể Thao Active Formstripe">
                                    </div>
                                    <img alt="PUMA - Áo Thể Thao Active Formstripe"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/puma-3669-985983-1_large.jpg">
                                </a>
                            </div>
                            <div class="product-detail clearfix">
                                <!-- sử dụng pull-left -->
                                <p class="pro-price">595,000₫</p>
                                <p class="pro-price-del text-left">
                                    <del class="compare-price">800,000₫</del>
                                </p>
                                <h3 class="pro-name">
                                    <a href="/products/puma-ao-the-thao-active-formstripe-1"
                                       title="PUMA - Áo Thể Thao Active Formstripe">PUMA - Áo Thể
                                        Thao Active Formstripe </a>
                                </h3>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 pull-center"></div>
                </div>
            </div>
            <div class="product-list clearfix ">
                <div class="title-line">
                    <h3>Sản phẩm mới</h3>
                </div>
                <div class="row content-product-list products-resize">
                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng  -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">
                                <a href="/products/ao-khoac-nam-1" title="Áo Khoác Nam">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/ao-khoac-nam-1" alt="Áo Khoác Nam">
                                    </div>
                                    <img alt="Áo Khoác Nam"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/antix-5095-746953-1_large.jpg">
                                </a>
                            </div>

                            <div class="product-detail clearfix">
                                <!-- sử dụng pull-right -->
                                <p class="pro-price">420,000₫</p>
                                <p class="pro-price-del text-left"></p>
                                <h3 class="pro-name">
                                    <a href="/products/ao-khoac-nam-1" title="Áo Khoác Nam">Áo
                                        Khoác Nam </a>
                                </h3>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng  -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">
                                <a href="/products/ao-khoac-nam" title="Áo Khoác Nam">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/ao-khoac-nam" alt="Áo Khoác Nam">
                                    </div>
                                    <img alt="Áo Khoác Nam"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/ninomaxx-5559-823183-1_large.jpg">
                                </a>
                            </div>
                            <div class="product-detail clearfix">
                                <!-- sử dụng pull-left -->
                                <p class="pro-price">1,099,000₫</p>
                                <p class="pro-price-del text-left"></p>
                                <h3 class="pro-name">
                                    <a href="/products/ao-khoac-nam" title="Áo Khoác Nam">Áo
                                        Khoác Nam </a>
                                </h3>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng end -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">
                                <a href="/products/ao-khoac-the-thao-nike-tech-windrunner-1mm"
                                   title="Áo Khoác Thể Thao Nike Tech Windrunner-1Mm">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/ao-khoac-the-thao-nike-tech-windrunner-1mm"
                                                alt="Áo Khoác Thể Thao Nike Tech Windrunner-1Mm">
                                    </div>
                                    <img alt="Áo Khoác Thể Thao Nike Tech Windrunner-1Mm"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/nike-4002-972363-1_large.jpg">
                                </a>
                            </div>
                            <div class="product-detail clearfix">
                                <!-- sử dụng pull-right -->
                                <p class="pro-price">3,515,000₫</p>
                                <p class="pro-price-del text-left"></p>
                                <h3 class="pro-name">
                                    <a href="/products/ao-khoac-the-thao-nike-tech-windrunner-1mm"
                                       title="Áo Khoác Thể Thao Nike Tech Windrunner-1Mm">Áo
                                        Khoác Thể Thao Nike Tech Windrunner-1Mm </a>
                                </h3>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng  -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">
                                <a href="/products/tui-deo-cheo-chiec-la"
                                   title="Túi Đeo Chéo Chiếc Lá">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/tui-deo-cheo-chiec-la"
                                                alt="Túi Đeo Chéo Chiếc Lá">
                                    </div>
                                    <img alt="Túi Đeo Chéo Chiếc Lá"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/madam-dzi-8631-901293-1_large.jpg">
                                </a>
                            </div>
                            <div class="product-detail clearfix">
                                <!-- sử dụng pull-left -->
                                <p class="pro-price">199,000₫</p>
                                <p class="pro-price-del text-left"></p>
                                <h3 class="pro-name">
                                    <a href="/products/tui-deo-cheo-chiec-la"
                                       title="Túi Đeo Chéo Chiếc Lá">Túi Đeo Chéo Chiếc Lá </a>
                                </h3>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng  -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">
                                <a href="/products/tui-deo-cheo-t-duffle-simplecarry"
                                   title="Túi Đeo Chéo T.DUFFLE - SIMPLECARRY">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/tui-deo-cheo-t-duffle-simplecarry"
                                                alt="Túi Đeo Chéo T.DUFFLE - SIMPLECARRY">
                                    </div>
                                    <img alt="Túi Đeo Chéo T.DUFFLE - SIMPLECARRY"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/simplecarry-6594-439193-1_large.jpg">
                                </a>
                            </div>
                            <div class="product-detail clearfix">
                                <!-- sử dụng pull-right -->
                                <p class="pro-price">350,000₫</p>
                                <p class="pro-price-del text-left"></p>
                                <h3 class="pro-name">
                                    <a href="/products/tui-deo-cheo-t-duffle-simplecarry"
                                       title="Túi Đeo Chéo T.DUFFLE - SIMPLECARRY">Túi Đeo Chéo
                                        T.DUFFLE - SIMPLECARRY </a>
                                </h3>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 pro-loop">
                        <!--sử dụng end -->
                        <div class="product-block product-resize fixheight"
                             style="height: 480px;">
                            <div class="product-img image-resize view view-third clearfix"
                                 style="height: 368px;">
                                <a href="/products/tui-xach-canvas" title="Túi Xách Canvas">
                                    <div class="mask">
                                        <img
                                                src="//hstatic.net/0/0/global/design/member/default/quick-look.png"
                                                data-handle="/products/tui-xach-canvas" alt="Túi Xách Canvas">
                                    </div>
                                    <img alt="Túi Xách Canvas"
                                         src="//hstatic.net/817/1000071817/1/2016/2-16/mango-man-9609-991093-1_large.jpg">
                                </a>
                            </div>

                            <div class="product-detail clearfix">
                                <!-- sử dụng pull-left -->
                                <p class="pro-price">1,499,000₫</p>
                                <p class="pro-price-del text-left"></p>
                                <h3 class="pro-name">
                                    <a href="/products/tui-xach-canvas" title="Túi Xách Canvas">Túi
                                        Xách Canvas </a>
                                </h3>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 pull-center"></div>
                </div>
            </div>
            <!-- End sản phẩm trang chủ -->
        </div>
        <!-- Content-->
    </div>
</section>


<jsp:directive.include file="includes/bottom.jsp"/>
