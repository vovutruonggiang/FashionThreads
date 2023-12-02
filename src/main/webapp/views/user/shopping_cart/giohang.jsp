<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/views/user/css/giohang.css">
<link rel="icon" href="/views/image/Fashion-small.png" type=""
	sizes="16x16">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<meta charset="UTF-8">
<title>Giỏ hàng | Fashion Threads</title>
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/style_02.css?v=14" />
<!-- <link rel="stylesheet" -->
<!-- 	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/responsive.css" /> -->
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/style.css?v=12" />
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/custom.css?v=5" />
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/product-detail-temp.css">

<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/fixed.css?v=23" />
<!-- <link rel="stylesheet" -->
<!-- 	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/pvh.css?v=7" /> -->

</head>
<body>
	<!-- menu -->
	<form action="">
		<jsp:include page="/views/user/layout/header.jsp"></jsp:include>
		<hr>
		<!-- main -->
		<%-- <section class="container">
			<p style="margin-bottom: 50px;">
				<a id="link-page" href="/views/home">Trang chủ</a><i
					class="bi bi-chevron-right"></i> <a id="link-page"
					href="../html/giohang.html">Giỏ hàng</a>
			</p>
			<h3>Giỏ hàng của bạn</h3>
			<div class="row">
				<div class="col-9">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Sản phẩm</th>
								<th scope="col">Số lượng</th>
								<th scope="col">Tổng tiền</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>



							<c:forEach items="${cart}" var="c">

								<tr>
									<td style="width: 600px;">
										<div class="row">
											<div class="col-3">
												<img src="/views/image/${c.product.image}" alt=""
													style="width: 100%;">
											</div>
											<div class="col-9">
												<p style="font-weight: 500;">${c.product.product_name}</p>
												<span>Màu sắc: ${c.color} </span><span
													style="margin-left: 5%;">Size: ${c.size} </span>
											</div>
										</div>

									</td>
									<td><input class="form-control" name="soluong"
										id="soluong" style="width: 80px;" type="number" min="1"
										value="${c.quantity}"></td>



									<!-- Đếm số lượng sản phẩm trong giỏ hàng -->

						 

									<td>${(c.price * c.quantity).intValue() }</td>


									<td><strong> </strong></td>
									<td><a href="/cart/delete/${c.id}"
										style="text-decoration: none; color: red;" href=""><i
											class="bi bi-trash3"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="col-3" style="border: 1px solid; height: 360px;">
					<div style="padding: 20px;">
						<p style="font-weight: 650; font-size: 22px;">TÓM TẮT ĐƠN HÀNG</p>
						<div>
							<div style="float: left; width: 50%; text-align: start;">
								<p>Tổng sản phẩm</p>
								<p>Tổng tiền hàng</p>
								<p>Giảm Voucher</p>
								<p>Tạm tính</p>
								<p>Phí vận chuyển</p>
								<hr>
								<p>Tiền thanh toán</p>
							</div>
							<div style="float: right; width: 50%; text-align: end;">
								<p>${countQuantity}</p>
								<p>${countTotalProduct}</p>
								<p>0</p>
								<p>${countTotalProduct}</p>
								<p>38.000đ</p>
								<hr>
								<p>
									<strong>${countTotalProduct} </strong>
								</p>
							</div>
						</div>
					</div>
					<button style="width: 100%; margin-top: 50px;" type="button"
						class="btn btn-outline-dark"> <a href="/views/payment">Thanh toán</a> </button>
				</div>

			</div>
		</section> --%>
			<main id="main" class="site-main"
		style="padding-left: 80px; padding-right: 80px; padding-top: 0 !important;">
			<div class="container-fluid">
				<form name="frm_cart" id="frm_cart" method="post" action=""
					enctype="application/x-www-form-urlencoded">
					<input type="hidden" name="is_cart_page" value="1" />
					<div class="cart pt-40 cart-page">
						<div class="row">
							<!--<h3>Giỏ hàng của bạn</h3>-->
							<div class="col-lg-8">

								<div id="box_product_total_cart">
									<div class="cart__list">
										<h2 class="cart-title">Giỏ hàng của bạn</h2>
										<table class="cart__table">
											<thead>
												<tr>
													<th>Tên Sản phẩm</th>
													<th>VOUCHER</th>
													<th>Số lượng</th>
													<th>Tổng tiền</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${cart}" var="c">
													<tr>
														<td>
															<div class="cart__product-item">
																<div class="cart__product-item__img">
																	<a href=""> <img
																		src="/views/image/${c.product.image}"
																		alt="Áo sơ mi lụa cổ đức">
																	</a>
																</div>
																<div class="cart__product-item__content">
																	<a href="">
																		<h3 class="cart__product-item__title">${c.product.product_name}</h3>
																	</a>
																	<div class="cart__product-item__properties">
																		<p>
																			Màu sắc: <span>${c.color}</span>
																		</p>
																		<p>
																			Size: <span style="text-transform: uppercase">${c.size}</span>
																		</p>
																	</div>
																</div>
															</div>
														</td>
														<td class="cart-sale-price">
															<p>-575.000đ</p>
															<p class="cart-sale_item">( -50% )</p>
														</td>
														<td>
															<div class="product-detail__quantity-input"
																data-product-sub-id="188735">
																<input type="number" value="${c.quantity}" min="0"
																	data-product-index="0" />
																<div class="product-detail__quantity--increase">+</div>
																<div class="product-detail__quantity--decrease">-</div>
															</div>
														</td>
														<td>
															<div class="cart__product-item__price">${(c.price * c.quantity).intValue() }</div>
														</td>
														<td><a href="/cart/delete/${c.id}"
															class="remove-item-cart" data-product-index="0"
															data-product-sub-id="188735"><span
																class="icon-ic_garbage"></span></a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div class="cart__list--attach"></div>
									<div class="cart__list--attach">
										<!---->
									</div>
								</div>
								<a href="/product"
									class="btn btn--large btn--outline btn-cart-continue mb-3">
									<span class="icon-ic_left-arrow"></span> Tiếp tục mua hàng
								</a>
							</div>
							<div class="col-lg-4 cart-page__col-summary"
								style="padding-top: 100px; margin-left: 20px;">
								<div class="cart-summary" id="cart-page-summary">
									<div class="cart-summary__overview">
										<h3>Tổng tiền giỏ hàng</h3>
										<div class="cart-summary__overview__item">
											<p>Tổng sản phẩm</p>
											<p class="total-product">${countQuantity}</p>
										</div>
										<div class="cart-summary__overview__item">
											<p>Tổng tiền hàng</p>
											<p class="total-not-discount">${countTotalProduct}</p>
										</div>
										<div class="cart-summary__overview__item">
											<p>Voucher</p>
											<p class="total-not-discount">0</p>
										</div>
										<div class="cart-summary__overview__item">
											<p>Phí vẫn chuyển</p>
											<p class="total-not-discount">0</p>
										</div>
										<div class="cart-summary__overview__item">
											<p>Thành tiền</p>
											<p>
												<b class="order-price-total">${countTotalProduct}</b>
											</p>
										</div>
									</div>
									<div class="cart-summary__note">
										<div class="inner-note d-flex">
											<div class="left-inner-note">
												<span class="icon-ic_alert"></span>
											</div>
											<div class="content-inner-note">
												<p>
													Miễn <b>đổi trả</b> đối với sản phẩm đồng giá / sale trên
													50%
												</p>
											</div>
											<div class="left-inner-note left-inner-note-shipping d-none">
												<span class="icon-ic_alert"></span>
											</div>
											<div
												class="content-inner-note content-inner-note-shipping d-none">
												<p>Miễn phí ship đơn hàng có tổng gía trị trên
													2.000.000đ</p>
												<div class="sub-note">
													<!--                                                                                                                        Mua thêm <strong>1.425.000đ</strong> để được miễn phí SHIP
                                                                            -->
													Mua thêm <strong>1.425.000đ</strong> để được miễn phí SHIP
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="cart-summary__button">
									<a href="/views/payment" class="btn" style="border-radius: 15px 0px 15px 0; height: 50px;
									 background: black; color: white; text-align: center; padding-top: 15px;" id="purchase-step-1">Đặt
										hàng</a>
								</div>
							</div>
						</div>
					</div>
				</form>



			</div>
		</main>
		<!-- footer -->
		<jsp:include page="/views/user/layout/footer.jsp"></jsp:include>
	</form>
</body>
</html>