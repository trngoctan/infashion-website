<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<jsp:directive.include file="includes/top.jsp"/>
<jsp:directive.include file="includes/common.jsp"/>

<title>Sản phẩm - InFashion</title>
<meta property="og:title" content="Sản phẩm - InFashion">

<jsp:directive.include file="includes/header.jsp"/>
<jsp:directive.include file="includes/menu.jsp"/>

<section id="content" class="clearfix container">
    <aside class="col-md-3  hidden-sm hidden-xs">
        <!-- Sidebar menu-->
        <jsp:directive.include file="boxes/category.jsp"/>
        <!-- End Sidebar menu-->
        <!-- Filter-->
        <jsp:directive.include file="boxes/filter.jsp"/>
        <!-- End Filter-->
        <!-- Support-->
        <jsp:directive.include file="boxes/support.jsp"/>
        <!-- Support-->
        <!-- Facebook -->
        <!-- Facebook-->
        <!-- Banner quảng cáo -->
        <jsp:directive.include file="boxes/ads-leftbar.jsp"/>
        <!-- Banner quảng cáo -->
    </aside>
    <div id="collection">
        <!-- Begin collection info -->
        <!-- Content-->
        <div class="col-md-9 col-sm-12 col-xs-12">
            <div class="row">
                <div class="main-content">
                    <div class="col-md-12 ">
                        <ol class="breadcrumb breadcrumb-arrow hidden-sm hidden-xs">
                            <li><a href="trangchu" target="_self">Trang chủ</a></li>
                            <li><a href="sanpham" target="_self">Danh mục</a></li>
                            <li class="active"><span>Tất cả sản phẩm</span></li>
                        </ol>
                    </div>
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <h1>
                                    Tất cả sản phẩm
                                </h1>
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                <div class="browse-tags">
                                    <span>Sắp xếp theo:</span>
                                    <span class="custom-dropdown custom-dropdown--white">
                                        <select class="sort-by custom-dropdown__select custom-dropdown__select--white">
                                            <option value="manual">Sản phẩm nổi bật</option>
                                            <option value="price-ascending">Giá: Tăng dần</option>
                                            <option value="price-descending">Giá: Giảm dần</option>
                                            <option value="title-ascending">Tên: A-Z</option>
                                            <option value="title-descending">Tên: Z-A</option>
                                            <option value="created-ascending">Cũ nhất</option>
                                            <option value="created-descending">Mới nhất</option>
                                            <option value="best-selling">Bán chạy nhất</option>
                                        </select>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 product-list">
                        <div class="row content-product-list">
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng  -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <div class="product-sale">
                                            <img src="<c:url value='/resources/images/icon/sale.png'/>" alt="ZYP - Áo Sơ Mi Tay Dài">
                                            <span><label class="sale-lb">Sale</label> 25%</span>
                                        </div>
                                        <a href="/products/zyp-ao-so-mi-tay-dai" title="ZYP - Áo Sơ Mi Tay Dài">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/zyp-ao-so-mi-tay-dai" alt="ZYP - Áo Sơ Mi Tay Dài">
                                            </div>
                                            <img alt="ZYP - Áo Sơ Mi Tay Dài" src="<c:url value='/resources/images/products/zyp-3696-281773-1_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-left -->
                                        <p class="pro-price">449,000₫</p>
                                        <p class="pro-price-del text-left"><del class="compare-price">600,000₫</del>
                                        </p><h3 class="pro-name"><a href="/products/zyp-ao-so-mi-tay-dai" title="ZYP - Áo Sơ Mi Tay Dài">ZYP - Áo Sơ Mi Tay Dài </a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng  -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <a href="/products/zyp-ao-so-mi-nam-dang-om" title="ZYP - Áo Sơ Mi Nam Dáng Ôm">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/zyp-ao-so-mi-nam-dang-om" alt="ZYP - Áo Sơ Mi Nam Dáng Ôm">
                                            </div>
                                            <img alt="ZYP - Áo Sơ Mi Nam Dáng Ôm" src="<c:url value='/resources/images/products/zyp-5061-884573-1_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-right -->
                                        <p class="pro-price">499,000₫</p>
                                        <p class="pro-price-del text-left">
                                        </p><h3 class="pro-name"><a href="/products/zyp-ao-so-mi-nam-dang-om" title="ZYP - Áo Sơ Mi Nam Dáng Ôm">ZYP - Áo Sơ Mi Nam Dáng Ôm </a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng end -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <a href="/products/tui-xach-canvas" title="Túi Xách Canvas">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/tui-xach-canvas" alt="Túi Xách Canvas">
                                            </div>
                                            <img alt="Túi Xách Canvas" src="<c:url value='/resources/images/products/mango-man-9609-991093-1_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-left -->
                                        <p class="pro-price">1,499,000₫</p>
                                        <p class="pro-price-del text-left">
                                        </p><h3 class="pro-name"><a href="/products/tui-xach-canvas" title="Túi Xách Canvas">Túi Xách Canvas </a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng  -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <a href="/products/tui-deo-cheo-t-duffle-simplecarry" title="Túi Đeo Chéo T.DUFFLE - SIMPLECARRY">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/tui-deo-cheo-t-duffle-simplecarry" alt="Túi Đeo Chéo T.DUFFLE - SIMPLECARRY">
                                            </div>
                                            <img alt="Túi Đeo Chéo T.DUFFLE - SIMPLECARRY" src="<c:url value='/resources/images/products/simplecarry-6594-439193-1_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-right -->
                                        <p class="pro-price">350,000₫</p>
                                        <p class="pro-price-del text-left">
                                        </p><h3 class="pro-name"><a href="/products/tui-deo-cheo-t-duffle-simplecarry" title="Túi Đeo Chéo T.DUFFLE - SIMPLECARRY">Túi Đeo Chéo T.DUFFLE - SIMPLECARRY </a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng  -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <a href="/products/tui-deo-cheo-chiec-la" title="Túi Đeo Chéo Chiếc Lá">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/tui-deo-cheo-chiec-la" alt="Túi Đeo Chéo Chiếc Lá">
                                            </div>
                                            <img alt="Túi Đeo Chéo Chiếc Lá" src="<c:url value='/resources/images/products/madam-dzi-8631-901293-1_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-left -->
                                        <p class="pro-price">199,000₫</p>
                                        <p class="pro-price-del text-left">
                                        </p><h3 class="pro-name"><a href="/products/tui-deo-cheo-chiec-la" title="Túi Đeo Chéo Chiếc Lá">Túi Đeo Chéo Chiếc Lá </a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng end -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <div class="product-sale">
                                            <img src='<c:url value="/resources/images/icon/sale.png"/>' alt="TIFALU">
                                            <span><label class="sale-lb">Sale</label> 18%</span>
                                        </div>
                                        <a href="/products/tifalu" title="TIFALU">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/tifalu" alt="TIFALU">
                                            </div>
                                            <img alt="TIFALU" src="<c:url value='/resources/images/products/006_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-right -->
                                        <p class="pro-price">490,000₫</p>
                                        <p class="pro-price-del text-left"><del class="compare-price">600,000₫</del>
                                        </p><h3 class="pro-name"><a href="/products/tifalu" title="TIFALU">TIFALU </a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng  -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <div class="product-sale">
                                            <img src='<c:url value="/resources/images/icon/sale.png"/>' alt="PUMA - Áo Thể Thao Active Formstripe">
                                            <span><label class="sale-lb">Sale</label> 26%</span>
                                        </div>
                                        <a href="/products/puma-ao-the-thao-active-formstripe-1" title="PUMA - Áo Thể Thao Active Formstripe">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/puma-ao-the-thao-active-formstripe-1" alt="PUMA - Áo Thể Thao Active Formstripe">
                                            </div>
                                            <img alt="PUMA - Áo Thể Thao Active Formstripe" src="<c:url value='/resources/images/products/puma-3669-985983-1_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-left -->
                                        <p class="pro-price">595,000₫</p>
                                        <p class="pro-price-del text-left"><del class="compare-price">800,000₫</del>
                                        </p><h3 class="pro-name"><a href="/products/puma-ao-the-thao-active-formstripe-1" title="PUMA - Áo Thể Thao Active Formstripe">PUMA - Áo Thể Thao Active Formstripe </a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng  -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <a href="/products/mango-dam-xoe-in-cham-bi" title="MANGO - Đầm Xòe In Chấm Bi">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/mango-dam-xoe-in-cham-bi" alt="MANGO - Đầm Xòe In Chấm Bi">
                                            </div>
                                            <img alt="MANGO - Đầm Xòe In Chấm Bi" src="<c:url value='/resources/images/products/mango-3128-075093-2_ee030daf-1033-400d-79a6-288f0b60ec3d_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-right -->
                                        <p class="pro-price">1,299,000₫</p>
                                        <p class="pro-price-del text-left">
                                        </p><h3 class="pro-name"><a href="/products/mango-dam-xoe-in-cham-bi" title="MANGO - Đầm Xòe In Chấm Bi">MANGO - Đầm Xòe In Chấm Bi </a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng end -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <div class="product-sale">
                                            <img src='<c:url value="/resources/images/icon/sale.png"/>' alt="MANGO - Đầm In Họa Tiết">
                                            <span><label class="sale-lb">Sale</label> 35%</span>
                                        </div>
                                        <a href="/products/mango-dam-in-hoa-tiet" title="MANGO - Đầm In Họa Tiết">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/mango-dam-in-hoa-tiet" alt="MANGO - Đầm In Họa Tiết">
                                            </div>
                                            <img alt="MANGO - Đầm In Họa Tiết" src="<c:url value='/resources/images/products/mango-3861-864183-1_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-left -->
                                        <p class="pro-price">1,299,000₫</p>
                                        <p class="pro-price-del text-left"><del class="compare-price">2,000,000₫</del>
                                        </p><h3 class="pro-name"><a href="/products/mango-dam-in-hoa-tiet" title="MANGO - Đầm In Họa Tiết">MANGO - Đầm In Họa Tiết </a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng  -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <a href="/products/mango" title="MANGO - Đầm May Đắp Chéo">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/mango" alt="MANGO - Đầm May Đắp Chéo">
                                            </div>
                                            <img alt="MANGO - Đầm May Đắp Chéo" src="<c:url value='/resources/images/products/mango-3101-175093-1_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-right -->
                                        <p class="pro-price">1,699,000₫</p>
                                        <p class="pro-price-del text-left">
                                        </p><h3 class="pro-name"><a href="/products/mango" title="MANGO - Đầm May Đắp Chéo">MANGO - Đầm May Đắp Chéo </a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng  -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <a href="/products/inner-circle-dam-suong-co-v" title="INNER CIRCLE - Đầm Suông Cổ V">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/inner-circle-dam-suong-co-v" alt="INNER CIRCLE - Đầm Suông Cổ V">
                                            </div>
                                            <img alt="INNER CIRCLE - Đầm Suông Cổ V" src="<c:url value='/resources/images/products/inner-circle-6633-520093-2_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-left -->
                                        <p class="pro-price">469,000₫</p>
                                        <p class="pro-price-del text-left">
                                        </p><h3 class="pro-name"><a href="/products/inner-circle-dam-suong-co-v" title="INNER CIRCLE - Đầm Suông Cổ V">INNER CIRCLE - Đầm Suông Cổ V </a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12 pro-loop"> <!--sử dụng end -->
                                <div class="product-block product-resize fixheight" style="height: 480px;">
                                    <div class="product-img image-resize view view-third clearfix" style="height: 368px;">
                                        <div class="product-sale">
                                            <img src='<c:url value="/resources/images/icon/sale.png"/>' alt="Áo Thun">
                                            <span><label class="sale-lb">Sale</label> 17%</span>
                                        </div>
                                        <a href="/products/ao-thun" title="Áo Thun">
                                            <div class="mask">
                                                <img src='<c:url value="/resources/images/icon/quick-look.png"/>' data-handle="/products/ao-thun" alt="Áo Thun">
                                            </div>
                                            <img alt="Áo Thun" src="<c:url value='/resources/images/products/24-01-2420-384363-2_large.jpg'/>">
                                        </a>
                                    </div>
                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-right -->
                                        <p class="pro-price">499,000₫</p>
                                        <p class="pro-price-del text-left"><del class="compare-price">600,000₫</del>
                                        </p><h3 class="pro-name"><a href="/products/ao-thun" title="Áo Thun">Áo Thun </a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 ">
                        <div id="pagination" class="">
                            <div class="col-lg-2 col-md-2 col-sm-3 hidden-xs">
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 text-center">
                                <span class="page-node current">1</span>
                                <a class="page-node" href="/collections/all?page=2">2</a>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-3 hidden-xs">
                                <a class="pull-right next fa fa-angle-right" href="/collections/all?page=2"><span>Trang sau</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End collection info -->
        <!-- Begin no products -->
        <!-- End no products -->
    </div>
    <script>
        Haravan.queryParams = {};
        if (location.search.length) {
            for (var aKeyValue, i = 0, aCouples = location.search.substr(1).split('&'); i < aCouples.length; i++) {
                aKeyValue = aCouples[i].split('=');
                if (aKeyValue.length > 1) {
                    Haravan.queryParams[decodeURIComponent(aKeyValue[0])] = decodeURIComponent(aKeyValue[1]);
                }
            }
        }
        var collFilters = jQuery('.coll-filter');
        collFilters.change(function() {
            var newTags = [];
            var newURL = '';
            delete Haravan.queryParams.page;
            collFilters.each(function() {
                if (jQuery(this).val()) {
                    newTags.push(jQuery(this).val());
                }
            });
            newURL = '/collections/' + 'all';
            if (newTags.length) {
                newURL += '/' + newTags.join('+');
            }
            var search = jQuery.param(Haravan.queryParams);
            if (search.length) {
                newURL += '?' + search;
            }
            location.href = newURL;
        });
        jQuery('.sort-by')
                .val('created-descending')
                .bind('change', function() {
                    Haravan.queryParams.sort_by = jQuery(this).val();
                    location.search = jQuery.param(Haravan.queryParams);
                });
    </script>
</section>

<jsp:directive.include file="includes/bottom.jsp"/>
