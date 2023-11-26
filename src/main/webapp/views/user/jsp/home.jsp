<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<body>
	<%@include file="/views/user/layout/header.jsp"%>
	<main id="main" class="site-main">
		<div class="container">
			<!-- Promotion -->
			<!-- End Promotion -->

			<!--Slider-->
			<section class="home-banner bg-before bg-before_02">
				<div class="slider-banner owl-carousel">
					<div class="item-banner">
						<a
							href="https://ivymoda.com/danh-muc/loi-bay-to-tu-gia-tri-dich-thuc-2410">
							<img
							src="https://pubcdn.ivymoda.com/files/news/2023/11/02/a690e7e3cf02d3671e61e2e7211c67fb.jpg"
							alt="slide image" class="banner-pc">
						</a>
					</div>
					<div class="item-banner">
						<a href="https://s2.ivymoda.com/danh-muc/flash-sale-upto50-0411">
							<img
							src="https://pubcdn.ivymoda.com/files/news/2023/11/13/f213edc62530a066150e606c06cb0897.jpg"
							alt="slide image" class="banner-pc">
						</a>
					</div>
					<div class="item-banner">
						<a
							href="https://s2.ivymoda.com/danh-muc/clearance-sale-outlet-0411">
							<img
							src="https://pubcdn.ivymoda.com/files/news/2023/11/13/e8d42d70a49f22a36ad440b95ce82b13.gif"
							alt="slide image" class="banner-pc">
						</a>
					</div>
				</div>
			</section>
			<div style="display: none">
				<h1>Thời trang IVY moda</h1>
				<h2>Thời trang Nam</h2>
				<h2>Thời trang Nữ</h2>
				<h2>Thời trang Trẻ em</h2>
			</div>
			<!--/Slider-->

			<!-- Flash Sale -->
			<!-- End Flash Sale -->

			<!-- New Arrival -->
			<section class="home-new-prod">
				<div class="title-section">NEW ARRIVAL</div>
				<div class="exclusive-tabs">
					<div class="exclusive-head">
						<ul>
							<li class="exclusive-tab active arrival-tab"
								data-cate-slug="hang-nu-moi-ve" data-tab="tab-women">IVY
								moda</li>
							<li class="exclusive-tab arrival-tab"
								data-cate-slug="hang-nam-moi-ve" data-tab="tab-men">IVY men
							</li>
							<li class="exclusive-tab arrival-tab"
								data-cate-slug="hang-moi-ve-tre-em" data-tab="tab-kid">IVY
								kids</li>
						</ul>
					</div>
					<div class="exclusive-content">
						<div class="exclusive-inner active" id="tab-women">
							<div class="list-products new-prod-slider owl-carousel">
								<c:forEach var="list_n_p" items="${list_new_product}">
									<form action="/views/home/favorite" method="post">
										<div class="item-new-prod">
											<div class="product">
												<div class="thumb-product">
													<a href="/product/detail/${list_n_p.id}"> <img src="/views/image/${list_n_p.image}"
														alt="Single Breasted Set" class="lazy" /> <!-- <img src="https://pubcdn.ivymoda.com/files/product/thumab/400/2023/10/23/c4b8e47d2488dff5d0a910520c306f57.jpg" -->
														<!--alt="Single Breasted Set" class="hover-img lazy" /> -->
													</a>
												</div>
												<div class="info-product">
													<div class="list-color">
														<ul>
															<c:forEach var="color"
																items="${list_n_p.detailedProducts_Product}">
																<li class="checked"><a href="javascript:void(0)"
																	class="color-picker"> <img
																		src="/views/image/color/${color.color_id.img_color}"
																		alt="001" class="lazy" />
																</a></li>
															</c:forEach>
														</ul>
													    <div class="favourite">
													    <input type="hidden" name="id" value="${list_n_p.id}">
														<input type="hidden" name="account_id" value="${user}">
											    		<input type="hidden" name="product_id" value="${list_n_p.id}">
													        <button onclick="onClick()" style="border: none; background-color: transparent;" type="submit"><i class="icon-ic_heart"></i></button>
													    </div>
													</div>
													<h3 class="title-product">
														<a
															href="https://ivymoda.com/sanpham/single-breasted-set-ms-67m8480-38771">${list_n_p.product_name}</a>
													</h3>
													<div class="price-product">
														<ins>
															<span>${list_n_p.price}đ</span>
														</ins>
													</div>
												</div>
												<div class="add-to-cart">
													<a href="javascript:void(0)"><i
														class="icon-ic_shopping-bag"></i></a>
												</div>
												<div class="list-size">
													<ul>
														<c:forEach var="size"
															items="${list_n_p.detailedProducts_Product}">
															<li data-product-sub-id="188710"><button
																	class="btn bt-large">${size.size_id.size_name}</button></li>
														</c:forEach>
													</ul>
												</div>
											</div>
										</div>
									</form>
								</c:forEach>
							</div>
							<div class="link-product">
								<a href="/views/new-product" class="all-product">Xem tất cả</a>
							</div>
						</div>
						<div class="exclusive-inner" id="tab-men">
							<div class="list-products new-prod-slider owl-carousel">
								<div class="item-new-prod">
									<div class="product">
										<span class="badget badget_03">-75<span>%</span></span>
										<div class="thumb-product">
											<a
												href="https://ivymoda.com/sanpham/ao-vest-co-hai-ve-ms-67e2741-25952">
												<img
												src="https://pubcdn.ivymoda.com/files/product/thumab/400/2020/10/16/cd9044f5aa244fe3df9c359e88c06583.JPG"
												alt="Áo vest cổ hai ve" class="lazy" /> <img
												src="https://pubcdn.ivymoda.com/files/product/thumab/400/2020/10/16/cd9044f5aa244fe3df9c359e88c06583.JPG"
												alt="Áo vest cổ hai ve" class="hover-img lazy" />
											</a>
										</div>
<%-- 										<div>${username.id}</div> --%>
										<div class="info-product">
											<div class="list-color">
												<ul>
													<li class="checked"><a href="javascript:void(0)"
														class="color-picker" data-id="25952"> <img
															src="https://pubcdn.ivymoda.com/ivy2/images/color/005.png"
															alt="005" class="lazy" />
													</a></li>
													<li><a href="javascript:void(0)" class="color-picker"
														data-id="25953"> <img
															src="https://pubcdn.ivymoda.com/ivy2/images/color/024.png"
															alt="024" class="lazy" />
													</a></li>
													<li><a href="javascript:void(0)" class="color-picker"
														data-id="25954"> <img
															src="https://pubcdn.ivymoda.com/ivy2/images/color/k01.png"
															alt="k01" class="lazy" />
													</a></li>
													<li><a href="javascript:void(0)" class="color-picker"
														data-id="25955"> <img
															src="https://pubcdn.ivymoda.com/ivy2/images/color/k03.png"
															alt="k03" class="lazy" />
													</a></li>
													<li><a href="javascript:void(0)" class="color-picker"
														data-id="25956"> <img
															src="https://pubcdn.ivymoda.com/ivy2/images/color/k49.png"
															alt="k49" class="lazy" />
													</a></li>
												</ul>
												<div class="favourite" data-id="25952">
													<i class="icon-ic_heart"></i>
												</div>
											</div>
											<h3 class="title-product">
												<a
													href="https://ivymoda.com/sanpham/ao-vest-co-hai-ve-ms-67e2741-25952">Áo
													vest cổ hai ve</a>
											</h3>
											<div class="price-product">
												<ins>
													<span>800.000đ</span>
												</ins>
												<del>
													<span>3.200.000đ</span>
												</del>
											</div>
										</div>
										<div class="add-to-cart">
											<a href="javascript:void(0)"><i
												class="icon-ic_shopping-bag"></i></a>
										</div>
										<div class="list-size">
											<ul>
												<li data-product-sub-id="139332"><button
														class="btn bt-large">s</button></li>
												<li data-product-sub-id="139337"><button
														class="btn bt-large">m</button></li>
												<li data-product-sub-id="139342"><button
														class="btn bt-large">l</button></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="link-product">
								<a href="https://ivymoda.com/danh-muc/hang-nam-moi-ve"
									class="all-product">Xem tất cả</a>
							</div>
						</div>
						<div class="exclusive-inner" id="tab-kid">
							<div class="list-products new-prod-slider owl-carousel">
								<div class="item-new-prod">
									<div class="product">
										<div class="info-ticket ticket-news">NEW</div>
										<div class="thumb-product">
											<a
												href="https://ivymoda.com/sanpham/zuyp-2-lop-pretty-ms-31g1658-38712">
												<img
												src="https://pubcdn.ivymoda.com/files/product/thumab/400/2023/10/16/f1311b08999adb8f81e022597e4ed35e.jpg"
												alt="Zuýp 2 lớp Pretty" class="lazy" /> <img
												src="https://pubcdn.ivymoda.com/files/product/thumab/400/2023/10/12/9c07042f8688922af7f5bfd7de699ca0.jpg"
												alt="Zuýp 2 lớp Pretty" class="hover-img lazy" />
											</a>
										</div>
										<div class="info-product">
											<div class="list-color">
												<ul>
													<li class="checked"><a href="javascript:void(0)"
														class="color-picker" data-id="38712"> <img
															src="https://pubcdn.ivymoda.com/ivy2/images/color/001.png"
															alt="001" class="lazy" />
													</a></li>
													<li><a href="javascript:void(0)" class="color-picker"
														data-id="38713"> <img
															src="https://pubcdn.ivymoda.com/ivy2/images/color/057.png"
															alt="057" class="lazy" />
													</a></li>
												</ul>
												<div class="favourite" data-id="38712">
													<i class="icon-ic_heart"></i>
												</div>
											</div>
											<h3 class="title-product">
												<a
													href="https://ivymoda.com/sanpham/zuyp-2-lop-pretty-ms-31g1658-38712">Zuýp
													2 lớp Pretty</a>
											</h3>
											<div class="price-product">
												<ins>
													<span>399.000đ</span>
												</ins>
											</div>
										</div>
										<div class="add-to-cart">
											<a href="javascript:void(0)"><i
												class="icon-ic_shopping-bag"></i></a>
										</div>
										<div class="list-size">
											<ul>
												<li data-product-sub-id="188389"><button
														class="btn bt-large">4-5</button></li>
												<li data-product-sub-id="188400"><button
														class="btn bt-large">6-7</button></li>
												<li data-product-sub-id="188416"><button
														class="btn bt-large">8-9</button></li>
												<li data-product-sub-id="188427"><button
														class="btn bt-large">10-11</button></li>
												<li data-product-sub-id="188440"><button
														class="btn bt-large">12-13</button></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="link-product">
								<a href="https://ivymoda.com/danh-muc/hang-moi-ve-tre-em"
									class="all-product">Xem tất cả</a>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- End New Arrival -->

			<!-- Online exclusive -->
			<!-- Online exclusive -->

			<!-- Hot trending-->
			<!-- Hot trending -->

			<!-- Best Seller -->
			<section class="home-new-prod">
				<div class="title-section">ONLINE EXCLUSIVE - FLASH SALE UPTO
					50%</div>
				<div class="exclusive-tabs">
					<div class="exclusive-head">
						<ul>
							<li class="exclusive-tab arrival-tab active"
								data-cate-slug="hang-nu-moi-ve" data-tab="best-seller-tab-women">
								IVY moda</li>
							<li class="exclusive-tab arrival-tab"
								data-cate-slug="hang-nam-moi-ve" data-tab="best-seller-tab-men">
								IVY men</li>
							<li class="exclusive-tab arrival-tab"
								data-cate-slug="hang-moi-ve-tre-em"
								data-tab="best-seller-tab-kid">IVY kids</li>
						</ul>
					</div>
					<div class="exclusive-content">
						<div class="exclusive-inner active" id="best-seller-tab-women">
							<div class="list-products new-prod-slider owl-carousel">
								<div class="item-new-prod">
									<div class="product">
										<div class="info-ticket seller">Best Seller</div>
										<span class="badget">-30<span>%</span></span>
										<div class="thumb-product">
											<a
												href="https://ivymoda.com/sanpham/trench-coat-ao-khoac-mang-to-co-dai-ms-71b9547-38811">
												<img
												src="https://pubcdn.ivymoda.com/files/product/thumab/400/2023/10/23/fd348028d4fad084688f793dd70c4a46.jpg"
												alt="Trench Coat - Áo khoác Măng Tô có đai" class="lazy" />
												<img
												src="https://pubcdn.ivymoda.com/files/product/thumab/400/2023/10/09/e8d12f10fc80c4b0a08dd8f5ba95ba53.JPG"
												alt="Trench Coat - Áo khoác Măng Tô có đai"
												class="hover-img lazy" />
											</a>
										</div>
										<div class="info-product">
											<div class="list-color">
												<ul>
													<li class="checked"><a href="javascript:void(0)"
														class="color-picker" data-id="38811"> <img
															src="https://pubcdn.ivymoda.com/ivy2/images/color/004.png"
															alt="004" class="lazy" />
													</a></li>
												</ul>
												<div class="favourite" data-id="38811">
													<i class="icon-ic_heart"></i>
												</div>
											</div>
											<h3 class="title-product">
												<a
													href="https://ivymoda.com/sanpham/trench-coat-ao-khoac-mang-to-co-dai-ms-71b9547-38811">Trench
													Coat - Áo khoác Măng Tô có đai</a>
											</h3>
											<div class="price-product">
												<ins>
													<span>2.443.000đ</span>
												</ins>
												<del>
													<span>3.490.000đ</span>
												</del>
											</div>
										</div>
										<div class="add-to-cart">
											<a href="javascript:void(0)"><i
												class="icon-ic_shopping-bag"></i></a>
										</div>
										<div class="list-size">
											<ul>
												<li data-product-sub-id="188960"><button
														class="btn bt-large">s</button></li>
												<li data-product-sub-id="188961"><button
														class="btn bt-large">m</button></li>
												<li data-product-sub-id="188962"><button
														class="btn bt-large">l</button></li>
												<li data-product-sub-id="188963"><button
														class="btn bt-large">xl</button></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="link-product">
								<a href="https://ivymoda.com/danh-muc/nu?hid_best_seller=1"
									class="all-product">Xem tất cả</a>
							</div>
						</div>
						<div class="exclusive-inner" id="best-seller-tab-men">
							<div class="list-products new-prod-slider owl-carousel">
								<div class="item-new-prod">
									<div class="product">
										<div class="info-ticket seller">Best Seller</div>
										<span class="badget badget_03">-75<span>%</span></span>
										<div class="thumb-product">
											<a
												href="https://ivymoda.com/sanpham/ao-khoac-blazer-nam-ms-71e3307-32012">
												<img
												src="https://pubcdn.ivymoda.com/files/product/thumab/400/2022/01/11/c0830e219e922b5d2c809525f6746488.JPG"
												alt="Áo khoác blazer nam" class="lazy" /> <img
												src="https://pubcdn.ivymoda.com/files/product/thumab/400/2022/01/11/16926083e2b92753c9a0d8276af53b56.JPG"
												alt="Áo khoác blazer nam" class="hover-img lazy" />
											</a>
										</div>
										<div class="info-product">
											<div class="list-color">
												<ul>
													<li><a href="javascript:void(0)" class="color-picker"
														data-id="32011"> <img
															src="https://pubcdn.ivymoda.com/ivy2/images/color/004.png"
															alt="004" class="lazy" />
													</a></li>
													<li class="checked"><a href="javascript:void(0)"
														class="color-picker" data-id="32012"> <img
															src="https://pubcdn.ivymoda.com/ivy2/images/color/048.png"
															alt="048" class="lazy" />
													</a></li>
												</ul>
												<div class="favourite" data-id="32012">
													<i class="icon-ic_heart"></i>
												</div>
											</div>
											<h3 class="title-product">
												<a
													href="https://ivymoda.com/sanpham/ao-khoac-blazer-nam-ms-71e3307-32012">Áo
													khoác blazer nam</a>
											</h3>
											<div class="price-product">
												<ins>
													<span>672.500đ</span>
												</ins>
												<del>
													<span>2.690.000đ</span>
												</del>
											</div>
										</div>
										<div class="add-to-cart">
											<a href="javascript:void(0)"><i
												class="icon-ic_shopping-bag"></i></a>
										</div>
										<div class="list-size">
											<ul>
												<li class="unactive"><button class="btn bt-large">s</button>
												</li>
												<li data-product-sub-id="164513"><button
														class="btn bt-large">m</button></li>
												<li data-product-sub-id="164515"><button
														class="btn bt-large">l</button></li>
												<li data-product-sub-id="164517"><button
														class="btn bt-large">xl</button></li>
												<li data-product-sub-id="164519"><button
														class="btn bt-large">xxl</button></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="link-product">
								<a href="https://ivymoda.com/danh-muc/nam?hid_best_seller=1"
									class="all-product">Xem tất cả</a>
							</div>
						</div>
						<div class="exclusive-inner" id="best-seller-tab-kid">
							<div class="list-products new-prod-slider owl-carousel">
								<div class="item-new-prod">
									<div class="product">
										<div class="info-ticket seller">Best Seller</div>
										<span class="badget badget_02">-50<span>%</span></span>
										<div class="thumb-product">
											<a
												href="https://ivymoda.com/sanpham/ao-so-mi-be-trai-ms-16k1486-34336">
												<img
												src="https://pubcdn.ivymoda.com/files/product/thumab/400/2022/06/06/46c1203ba263bf937598d8e049dab8d1.jpg"
												alt="Áo sơ mi bé trai" class="lazy" /> <img
												src="https://pubcdn.ivymoda.com/files/product/thumab/400/2022/06/06/23de06610140d0254fb8979e063d40a0.jpg"
												alt="Áo sơ mi bé trai" class="hover-img lazy" />
											</a>
										</div>
										<div class="info-product">
											<div class="list-color">
												<ul>
													<li class="checked"><a href="javascript:void(0)"
														class="color-picker" data-id="34336"> <img
															src="https://pubcdn.ivymoda.com/ivy2/images/color/h11.png"
															alt="h11" class="lazy" />
													</a></li>
												</ul>
												<div class="favourite" data-id="34336">
													<i class="icon-ic_heart"></i>
												</div>
											</div>
											<h3 class="title-product">
												<a
													href="https://ivymoda.com/sanpham/ao-so-mi-be-trai-ms-16k1486-34336">Áo
													sơ mi bé trai</a>
											</h3>
											<div class="price-product">
												<ins>
													<span>199.500đ</span>
												</ins>
												<del>
													<span>399.000đ</span>
												</del>
											</div>
										</div>
										<div class="add-to-cart">
											<a href="javascript:void(0)"><i
												class="icon-ic_shopping-bag"></i></a>
										</div>
										<div class="list-size">
											<ul>
												<li data-product-sub-id="171053"><button
														class="btn bt-large">4-5</button></li>
												<li data-product-sub-id="171063"><button
														class="btn bt-large">6-7</button></li>
												<li data-product-sub-id="171070"><button
														class="btn bt-large">8-9</button></li>
												<li data-product-sub-id="171078"><button
														class="btn bt-large">10-11</button></li>
												<li data-product-sub-id="171085"><button
														class="btn bt-large">12-13</button></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="link-product">
								<a href="https://ivymoda.com/danh-muc/tre-em?hid_best_seller=1"
									class="all-product">Xem tất cả</a>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- End Best Seller -->

			<!-- Service -->
			<!-- End Service -->

			<!-- Sale -->
			<!-- End Sale -->

			<!-- Trending -->
			<a
				href="https://s2.ivymoda.com/danh-muc/khoac-len-phong-cach-don-gio-dong-0711">
				<section class="home-trending box-border bg-before bg-before_02">
					<div class="img-trending-desktop">
						<img
							src="https://pubcdn.ivymoda.com/files/news/2023/11/07/867f27ace7f96580715df7897f26b540.jpg"
							alt="BANNER TRENDING" class="lazy" />
					</div>
					<div class="trending-content">
						<div class="box-trending">
							<!--            <h3 style="text-transform: capitalize;">trending</h3>-->
							<!--            <h2>BANNER TRENDING</h2>-->
							<!--            <p></p>-->
						</div>
					</div>
				</section>
			</a>

			<!-- End Trending -->

			<!-- Brand -->
			<!-- End Brand -->

			<!-- Gallery -->
			<section class="home-gallery">
				<h3 class="title-gallery">GALLERY</h3>
				<div class="list-gallery owl-carousel">
					<div class="item-gallery">
						<a
							href="https://s2.ivymoda.com/sanpham/larissa-set-thiet-ke-ao-blazer-no-kem-chan-vay-ms-67m8562-38696">
							<img
							src="https://pubcdn.ivymoda.com/files/news/2023/11/13/5429a18606720c03e1ef3256f25ccac8.jpg"
							alt="" class="lazy" />
						</a>
					</div>
					<div class="item-gallery">
						<a
							href="https://s2.ivymoda.com/sanpham/elysia-set-thiet-ke-ao-kieu-kem-chan-vay-ms-16m8445-38591">
							<img
							src="https://pubcdn.ivymoda.com/files/news/2023/10/23/3ba30d59e7497a1aebb9dee83cd475a7.jpg"
							alt="" class="lazy" />
						</a>
					</div>
					<div class="item-gallery">
						<a
							href="https://s2.ivymoda.com/sanpham/gladys-dress-dam-xoe-tweed-ms-48m8557-38422">
							<img
							src="https://pubcdn.ivymoda.com/files/news/2023/11/13/abba5f224e36b344285525bca6f6417b.jpg"
							alt="" class="lazy" />
						</a>
					</div>
					<div class="item-gallery">
						<a
							href="https://ivymoda.com/sanpham/doris-dress-dam-lua-co-k-ms-48m8499-38654">
							<img
							src="https://pubcdn.ivymoda.com/files/news/2023/10/23/84122f992c83a8f0046e0cc6242584f2.jpg"
							alt="" class="lazy" />
						</a>
					</div>
					<div class="item-gallery">
						<a
							href="https://ivymoda.com/sanpham/louisa-set-ao-khoac-croptop-kem-chan-vay-a-ms-67b9545-38798">
							<img
							src="https://pubcdn.ivymoda.com/files/news/2023/10/23/ab6cef1bc439783f092c0c3d2f7eb5b7.jpg"
							alt="" class="lazy" />
						</a>
					</div>
				</div>
			</section>

			<!-- End Gallery -->


		</div>
	</main>
	<!--Footer-->

	<%@include file="/views/user/layout/footer.jsp"%>

	<!-- site-footer -->

	<!--<a href="#" id="back-to-top" title="Về đầu trang"><i class="fa fa-angle-double-up" aria-hidden="true"></i></a>-->
	<!--Owl slide js-->
	<!--<script src="https://pubcdn.ivymoda.com/ivy2/js/owlcarousel/app.js" type="text/javascript"></script>-->
	<!--<script src="https://pubcdn.ivymoda.com/ivy2/js/owlcarousel/owl.carousel.min.js" type="text/javascript"></script>-->
	<script src="https://pubcdn.ivymoda.com/ivy2/owl/owl.carousel.min.js"></script>
	<script src="https://pubcdn.ivymoda.com/ivy2/js/swiper-bundle.min.js"></script>


	<!--Owl slide js_END-->
	<!--  lazy load -->
	<script src="https://pubcdn.ivymoda.com/ivy2/js/jquery.lazyload.min.js"
		type="text/javascript"></script>
	<!-- function -->
	<script src="https://pubcdn.ivymoda.com/ivy2/js/new-kscript.js?v=13"
		type="text/javascript"></script>
	<script src="https://pubcdn.ivymoda.com/ivy2/js/main.js?v=8"
		type="text/javascript"></script>
	<script src="https://pubcdn.ivymoda.com/ivy2/js/custom_main.js?v=3"
		type="text/javascript"></script>
	<script src="https://pubcdn.ivymoda.com/ivy2/js/toastr.min.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="https://pubcdn.ivymoda.com/ivy2/js/fancybox/jquery.fancybox.min.js"></script>
	<!--<script title="text/javascript" src="https://pubcdn.ivymoda.com/ivy2/js/simple-lightbox.js"></script>-->
	<script src="https://pubcdn.ivymoda.com/ivy2/js/custom-product.js"
		type="text/javascript"></script>
	<script src="https://pubcdn.ivymoda.com/ivy2/js/shopping-cart.js?v=11"></script>
	<script src="https://pubcdn.ivymoda.com/ivy2/js/select2.min.js"></script>
	<script src="https://images.dmca.com/Badges/DMCABadgeHelper.min.js"></script>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KF775BP"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<script>
		/*if ($('#back-to-top').length) {
		    var scrollTrigger = 700, // px
		        backToTop = function () {
		            var scrollTop = $(window).scrollTop();
		            if (scrollTop > scrollTrigger) {
		                $('#back-to-top').addClass('show_top_ivy');
		            } else {
		                $('#back-to-top').removeClass('show_top_ivy');
		            }
		        };
		    backToTop();
		    $(window).on('scroll', function () {
		        backToTop();
		    });
		    $('#back-to-top').on('click', function (e) {
		        e.preventDefault();
		        $('html,body').animate({
		            scrollTop: 0
		        }, 700);
		    });
		};*/

		/*function ivytrack(link){
		    ga('send', 'event', {
		        eventAction: 'click',
		        eventCategory: 'View Sản phẩm',
		        eventLabel: link
		    });
		};*/

		if (navigator.userAgent.match(/Android/i)) {
			$('#app_ios').hide();
		} else if (navigator.userAgent.match(/iPhone/i)
				|| navigator.userAgent.match(/iPad/i)
				|| navigator.userAgent.match(/iPod/i)) {
			$('#app_android').hide();
		}

		toastr.options.positionClass = 'toast-bottom-right';
		toastr.options.preventDuplicates = true;

		ShoppingCartV2();
	</script>
	<script type=text/javascript>
		function setScreenHWCookie() {
			Cookies.set('screen_ak', screen.width + 'x' + screen.height + ':'
					+ guest_user, {
				expires : 365
			})
			return true;
		}
		setScreenHWCookie();
	</script>

	<!-- Start of widget script -->
	<script type="text/javascript">
		var logged_in_username = '';
		var logged_in_user_phone = '';
		var logged_in_id = '';
		var popup_enabled = [];

		logged_in_id = '420650';
		logged_in_username = 'Trường Giang';
		logged_in_user_phone = '0944120332';
	</script>

	<script type="text/javascript">
		function loadJsAsync(t, e) {
			var n = document.createElement("script");
			n.type = "text/javascript", n.src = t, n.addEventListener("load",
					function(t) {
						e(null, t)
					}, !1);
			var a = document.getElementsByTagName("head")[0];
			a.appendChild(n)
		}
		window.addEventListener("DOMContentLoaded", function() {
			loadJsAsync("https://webchat.caresoft.vn:8090/js/CsChat.js?v=4.0",
					function() {
						var t = {
							domain : "Ivymoda",
							domainId : 6896,
							hide : 1,
							username : logged_in_username,
							phone : logged_in_user_phone
						};
						embedCsChat(t)
					})
		}, !1);
	</script>

	<!--<div class="box-show-support" id="box-show-support" >-->
	<!--    <img src="https://pubcdn.ivymoda.com/ivy2/images/support_new1.png" style="vertical-align: middle"/>-->
	<!--</div>-->
	<div class="box-support" id="box-support" style="display: none">
		<div class="box-show">
			<div class="box-icon box-icon-phone" id="box-icon-phone"
				title="Hotline">
				<img src="https://pubcdn.ivymoda.com/ivy2/images/support_new2.png"
					style="vertical-align: middle" />
			</div>
			<div class="box-icon box-icon-phone"
				title="Chat với nhân viên hỗ trợ">
				<a href="javascript: openCsChatBox();"><img
					src="https://pubcdn.ivymoda.com/ivy2/images/support_new3.png"
					style="vertical-align: middle" /></a>
			</div>
			<div class="box-icon box-icon-messenger"
				title="Chat facebook messenger">
				<a href="http://messenger.com/t/thoitrangivymoda" target="_blank">
					<img src="https://pubcdn.ivymoda.com/ivy2/images/support_new5.png"
					style="vertical-align: middle" />
				</a>
			</div>
			<div class="box-icon box-icon-contact" title="Liên hệ">
				<a href="https://ivymoda.com/lien-he"> <img
					src="https://pubcdn.ivymoda.com/ivy2/images/support_new4.png"
					style="vertical-align: middle" />
				</a>
			</div>
		</div>
	</div>
	<div id="modal_phone" class="modal fade" role="dialog"
		style="display: none">
		<div class="modal-dialog modal-sm">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<p class="modal-title">IVY moda hỗ trợ</p>
				</div>
				<div class="modal-body">
					<p>
						HOTLINE: <span style="font-size: 16px">0246 662 3434</span>
					</p>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		function onClick() {
			alert("Đã thêm vào danh sách yêu thích")
		}	
	</script>
</body>

</html>