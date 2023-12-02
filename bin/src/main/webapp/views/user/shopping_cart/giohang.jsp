<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/views/user/css/giohang.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- menu -->
	<form action="">
		<header>
			<div class="row">
				<div class="col-5">
					<div>
						<nav class="navbar navbar-expand-lg">
							<div class="container-fluid"
								style="padding-left: 50px; padding-top: 10px;">
								<div class="collapse navbar-collapse" id="navbarNav">
									<ul class="navbar-nav">
										<li class="nav-item"><a class="nav-link" href="#">NAM</a>
										</li>
										<li class="nav-item"><a class="nav-link" href="#">NỮ</a></li>
										<li class="nav-item"><a class="nav-link"
											style="width: 70px;" href="#">TRẺ EM</a></li>
										<li class="nav-item"><a class="nav-link"
											style="width: 90px;" href="#">GIẢM GIÁ</a></li>
										<li class="nav-item"><a class="nav-link" href="#">CUỘC
												SỐNG</a></li>
										<li class="nav-item"><a class="nav-link"
											style="width: 140px;" href="#">VỀ CHÚNG TÔI</a></li>
									</ul>
								</div>
							</div>
						</nav>
					</div>
				</div>
				<div class="col-3" id="logo">
					<img src="../image/iconft.jpg"
						style="padding-top: 20px; width: 200px;" alt="">
				</div>
				<div class="col-4" id="search">
					<div id="w-left-50">
						<div class="find-product">
							<input type="search" placeholder="TÌM KIẾM SẢN PHẨM">
							<button type="submit">Search</button>
						</div>
					</div>
					<div id="w-right-50">
						<a href="#"><i class="bi bi-globe-americas"></i></a> <a href="/form/login"><i
							class="bi bi-person"></i></a> <a href="/form/login"><i class="bi bi-bag"></i></a>
					</div>

				</div>
			</div>
		</header>
		<hr>
		<!-- main -->
		<section class="container">
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
		</section>
		<!-- footer -->
		<footer class="container" style="margin-top: 70px;">
			<div class="row">
				<div class="col-3">
					<img
						src="../image/z4805893268304_4da797551877695a26a2914211ce8e30.jpg"
						style="width: 100%;" alt="">
					<p>Công ty Cổ phần Dự Kim với số đăng ký kinh doanh: 0105777650</p>
					<p>Địa chỉ đăng ký: Tổ dân phố Tháp, P.Đại Mỗ, Q.Nam Từ Liêm,
						TP.Hà Nội, Việt Nam</p>
					<p>Số điện thoại: 0243 205 2222/ 090 589 8683</p>
					<p>Email: cskh@ivy.com.vn</p>

				</div>
				<div class="col-2">
					<h3>Giới thiệu</h3>
					<p>Về Fashion Thread</p>
					<p>Tuyển dụng</p>
					<p>Hệ thống của hàng</p>
				</div>
				<div class="col-3">
					<h3>Dịch vụ khách hàng</h3>
					<p>Chính sách điều khoản</p>
					<p>Hướng dẫn mua hàng</p>
					<p>Chính sách thanh toán</p>
					<p>Chính sách đổi trả</p>
					<p>Chính sách bảo hành</p>
					<p>Chính sách giao hành vận chuyển</p>
					<p>Chính sách thẻ thành viên</p>
					<p>Hệ thống cửa hàng</p>
					<p>Q&A</p>
				</div>
				<div class="col-2">
					<h3>Liên hệ</h3>
					<p>Hotline</p>
					<p>Email</p>
					<p>Live Chat</p>
					<p>Messenger</p>
					<p>Liên hệ</p>
				</div>
				<div class="col-2"
					style="border-radius: 50px 10px; border: solid; height: 300px;">
					<h4 style="margin-top: 40px;">Nhận thông tin chương trình</h4>
					<input id="input-form" style="margin-top: 20px;" type="email"
						placeholder="Nhập địa chỉ email">
					<button
						style="margin-top: 20px; border-radius: 20px 2px; float: right;"
						type="button" class="btn btn-outline-dark">Dark</button>
				</div>
			</div>

		</footer>
	</form>
</body>
</html>