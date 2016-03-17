<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="list-group" id="list-group-l">
    <ul class="nav navs sidebar menu" id="cssmenu">
        <div class="mega-left-title">
            <strong>Nhóm danh mục</strong>
        </div>
        <li class="item current active first">
            <a href="trangchu"> <span>Trang chủ</span></a>
        </li>
        <li class="item has-sub">
            <a href="#">
                <span class="lbl">Sản phẩm</span>
                        <span data-toggle="collapse" data-parent="#cssmenu" href="#sub-item-2" class="sign collapsed">
                            <img src='<c:url value="/resources/images/icon/arrow-down.png"/>'>
                        </span>
            </a>
            <ul class="nav children collapse" id="sub-item-2">
                <li class="first">
                    <a href="#" title="Mẹ bầu">
                        <span>Mẹ bầu</span>
                    </a>
                </li>
                <li class="last">
                    <a href="#" title="Mẹ và bé">
                        <span>Mẹ và bé</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="item">
            <a href="#"><span>Blog</span></a>
        </li>
        <li class="item last">
            <a href="#">
                <span>Giới thiệu</span>
            </a>
        </li>
    </ul>
</div>
<script>
    $(document).ready(
            function () {
                //$('ul li:has(ul)').addClass('hassub');
                $('#cssmenu ul ul li:odd').addClass('odd');
                $('#cssmenu ul ul li:even').addClass('even');
                $('#cssmenu > ul > li > a').click(
                        function () {
                            $('#cssmenu li').removeClass('active');
                            $(this).closest('li').addClass('active');
                            var checkElement = $(this).nextS();
                            if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
                                $(this).closest('li').removeClass('active');
                                checkElement.slideUp('normal');
                            }
                            if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
                                $('#cssmenu ul ul:visible').slideUp('normal');
                                checkElement.slideDown('normal');
                            }
                            if ($(this).closest('li').find('ul').children().length == 0) {
                                return true;
                            } else {
                                return false;
                            }
                        });
                $('.drop-down').click(
                        function (e) {
                            if ($(this).parents('li').hasClass('has-sub')) {
                                e.preventDefault();
                                if ($(this).hasClass('open-nav')) {
                                    $(this).removeClass('open-nav');
                                    $(this).parents('li').children('ul.lve2')
                                            .slideUp('normal')
                                            .removeClass('in');
                                } else {
                                    $(this).addClass('open-nav');
                                    $(this).parents('li').children('ul.lve2')
                                            .slideDown('normal')
                                            .addClass('in');
                                }
                            } else {
                            }
                        });
            });
    $("#list-group-l ul.navs li.active").parents('ul.children').addClass("in");
</script>