<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
    .sidebar-filter h3 {
        text-align: left;
    }
    .sidebar-filter .filter {
        display: inherit;
        margin-bottom: 12px;
        overflow-y: auto;
    }
    .sidebar-filter .filter .f-item {
        border-bottom: 1px solid #DDDDDD;
    }
    .sidebar-filter .filter .f-item:last-of-type {
        border-bottom: 0;
    }
    .sidebar-filter .filter .f-item a {
        width: 100%;
        height: auto;
        line-height: 30px;
    }
    .sidebar-filter .filter.provider {
        max-height: 250px;
    }
    .sidebar-filter .line-search {
        border-bottom: 0;
    }
    .sidebar-filter .txt-search {
        width: 100%;
        background: url('<c:url value="/resources/images/icon-search-hover.png"/>') 95% center no-repeat;
        border: 1px solid #C3C3C3;
        padding: 7px;
    }
</style>
<div class="sidebar-support sidebar-filter list-group">
    <form action="sanpham" accept-charset="UTF-8">
    <div class="mega-left-title">
        <strong>Lọc sản phẩm</strong>
    </div>
    <h3>Thương hiệu</h3>
    <div class="support filter provider">
        <div class="text-center line-search">
            <input type="text" class="txt-search" name="provider" />
        </div>
        <div class="f-item text-left">
            <a href="#">Kitkat</a>
        </div>
        <div class="f-item text-left">
            <a href="#">Kappa</a>
        </div>
    </div>
    <h3>Kiểu dáng</h3>
    <div class="support filter provider">
        <div class="text-center line-search">
            <input type="text" class="txt-search" name="provider" />
        </div>
        <div class="f-item text-left">
            <a href="#">Vòng to</a>
        </div>
        <div class="f-item text-left">
            <a href="#">Đại nhỏ</a>
        </div>
    </div>
    <h3>Giá (VND)</h3>
    <div class="support filter">
        <div class="text-center line-search">
            <input type="number" name="price-start" style="width:110px" placeholder="Từ" />
            -
            <input type="number" name="price-end" style="width:110px" placeholder="đến" />
        </div>
    </div>
    </form>
</div>