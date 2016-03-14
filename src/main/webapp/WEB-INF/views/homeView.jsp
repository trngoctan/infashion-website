<jsp:directive.include file="includes/top.jsp" />
<%@ page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>


<section id="content" class="clearfix container">
	<div class="row contents">
		<div class="col-md-9 col-sm-12 col-xs-12">
			<!-- Begin slider -->
			<div class="slider-default col-md-12 col-sm-12 col-xs-12">
				<div class="flexslider-container">
					<div class="flexslider">
						<ul class="slides">
							<li><a href="/collections/all"> <img
									src="images/slideshow/slideshow_1.jpg" alt="2323123" />
							</a></li>
							<li><a href="/collections/all"> <img
									src="images/slideshow/slideshow_2.jpg" alt="" />
							</a></li>
							<li><a href="/collections/all"> <img
									src="images/slideshow/slideshow_3.jpg" alt="" />
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
					<a href=""> <img class="img-responsive" alt=""
						src="images/products/img_left_1.jpg"></a>
				</div>
			</div>
			<div class="banner2">
				<div class="image">
					<a href=""> <img class="img-responsive" alt=""
						src="images/products/img_left_2.jpg"></a>
				</div>
			</div>
		</div>
	</div>
	<aside class="col-md-3  hidden-sm hidden-xs">
		<!-- Sidebar menu-->
		<div class="list-group" id="list-group-l">
			<ul class="nav navs sidebar menu" id="cssmenu">
				<div class="mega-left-title">
					<strong>Nhóm danh mục</strong>
				</div>
				<li class="item current active  first"><a href="/"> <span>Trang
							chủ</span>
				</a></li>
				<li class="item  "><a href="/collections/all"> <span>Sản
							phẩm</span>
				</a></li>
				<li class="item  "><a href="/blogs/news"> <span>Blog</span>
				</a></li>
				<li class="item  last"><a href="/pages/about-us"> <span>Giới
							thiệu</span>
				</a></li>
			</ul>
		</div>
		<script>
			$(document).ready(
					function() {
						//$('ul li:has(ul)').addClass('hassub');
						$('#cssmenu ul ul li:odd').addClass('odd');
						$('#cssmenu ul ul li:even').addClass('even');
						$('#cssmenu > ul > li > a').click(
								function() {
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
								function(e) {
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
		<!-- Sidebar menu-->
		<!-- Support-->
		<div class="sidebar-support list-group">
			<span href="#" class="list-group-item active"> <img
				src="//hstatic.net/817/1000071817/1000101448/avatar-answ.png?v=1"
				class="img-responsive">
			</span>
			<h3>Hỗ trợ trực tuyến</h3>
			<div class="support">
				<div class="text-center">
					<p>
						<span class="supp-name">Support01</span> <br> <span	class="phone">1900.0000</span>
					</p>
					<a href="skype:haravan.com?chat" class="skype"> 
						<img src="//hstatic.net/0/0/global/design/theme-default/skype-icon.png"
						class="img-responsive">
					</a> 
					<a href="ymsgr:sendim?haravan.com" class="yahoo">
						<img src="//hstatic.net/0/0/global/design/theme-default/yahoo-icon.png"
						class="img-responsive">
					</a>
				</div>
				<div class="text-center">
					<span class="supp-name">Số hotline </span> <br>
					<p>0000.000.000</p>
				</div>
				<div class="text-center">
					<span class="supp-name">Thời gian làm việc </span>
					<p>Bất kể khi nào bạn cần, hỗ trợ 24/7, 7 ngày trong tuần</p>
				</div>
			</div>
		</div>
		<!-- Support-->
		<!-- Facebook -->
		<!-- Facebook-->
		<!-- Banner quảng cáo -->
		<div class="list-group_l banner-left">
			<a href="/pages/about-us"> <img
				src="//hstatic.net/817/1000071817/1000101448/left_image_ad.jpg?v=1">
			</a>
		</div>
		<!-- Banner quảng cáo -->
		<div class="list-group_2 banner-left">
			<a href="/"> <img
				src="//hstatic.net/817/1000071817/1000101448/left_image_ad_2.jpg?v=1">
			</a>
		</div>
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
									</div> <img alt="Áo Cardigan Dolman"
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
									</div> <img alt="INNER CIRCLE - Đầm Suông Cổ V"
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
									</div> <img alt="MANGO - Đầm May Đắp Chéo"
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
									</div> <img alt="MANGO - Đầm Xòe In Chấm Bi"
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
									</div> <img alt="ZYP - Áo Sơ Mi Nam Dáng Ôm"
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
									</div> <img alt="Áo Len Colourblocked"
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
									</div> <img alt="Áo Thun"
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
									</div> <img alt="MANGO - Đầm In Họa Tiết"
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
									</div> <img alt="PUMA - Áo Thể Thao Active Formstripe"
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
									</div> <img alt="Áo Khoác Nam"
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
									</div> <img alt="Áo Khoác Nam"
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
									</div> <img alt="Áo Khoác Thể Thao Nike Tech Windrunner-1Mm"
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
									</div> <img alt="Túi Đeo Chéo Chiếc Lá"
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
									</div> <img alt="Túi Đeo Chéo T.DUFFLE - SIMPLECARRY"
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
									</div> <img alt="Túi Xách Canvas"
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



<jsp:directive.include file="includes/bottom.jsp" />
