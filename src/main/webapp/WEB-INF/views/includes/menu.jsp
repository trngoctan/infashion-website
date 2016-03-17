<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
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
                <ul class="nav navbar-nav clearfix sm">
                    <li class="active">
                        <a href="trangchu" class="current" title="Trang chủ">
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
                        <a href="#" class="" title="Tin tức">
                            <span>Tin tức</span>
                        </a>
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
                <ul class="nav navbar-nav pull-right sm">
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
        });
        $(document).on("click", "ul.mobile-menu-icon .dropdown-menu ,.drop-control .dropdown-menu, .drop-control .input-dropdown", function (e) {
            e.stopPropagation();
        });
    </script>
</nav>
<!--END NAVBAR-->