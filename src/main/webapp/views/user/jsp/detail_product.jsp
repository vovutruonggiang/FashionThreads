<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Chi tiết sản phẩm</title>
<link rel="stylesheet" href="/views/user/css/chitietsanpham.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
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
</head>

<body>
	<%@include file="/views/user/layout/header.jsp"%>
	<form action="/cart/add/${detail.id}" method="post">
		<hr>
		<section class="container">
			<div class="row mt-5">
				<div class="col-6">
					<div class="row">
						<div id="img_product" class="col-9">
							<img src="" alt="" class="img-feature">
							<div class="control prev">
								<i class="bi bi-chevron-left"></i>
							</div>
							<div class="control next">
								<i class="bi bi-chevron-right"></i>
							</div>
						</div>


						<div class="list-image col-3">
							<div class="control2 prev2">
								<i id="left" class="bi bi-chevron-compact-up"></i>
							</div>
							<div class="control3 next2">
								<i id="right" class="bi bi-chevron-compact-down"></i>
							</div>
							<div id="list_image2" class="col-12">
								<c:forEach var="li" items="${listsp2}">
									<div>
										<img src="/views/image/${li.image_name}" alt="">
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="col-6 ">
					<c:forEach var="if_p" items="${listsp}">
						<div id="infor_product">
							<h3>${if_p.product_name}</h3>
							<p>${if_p.id}</p>
							<b>${if_p.price}</b>
							<p class="text-color">Màu sắc : Đỏ mận</p>

							<%-- <div id="radio_button">
											<c:forEach var="color" items="${if_p.detailedProducts_Product}">
												<input type="r	adio" name="color" id="${color.color_id.color_name}"
													checked="checked">
												<label
													for="${color.color_id.color_name}">${color.color_id.color_name}</label>
											</c:forEach>
										</div> --%>
							<c:set var="myVariable" value="${if_p.category_product.id}" />
							<h3 class="mausac">Màu sắc</h3>

							<div id="radio_button">
								<c:forEach items="${color}" var="c">
									<input type="radio" name="color" value="${c}" id="${c}"
										checked="checked">
									<label for="${c}">${c}</label>
								</c:forEach>
							</div>


							<h3 class="kichthuoc">Kích thước</h3>


							<div id="radio_button">
								<c:forEach items="${size}" var="s">
									<input type="radio" name="size" value="${s}" id="${s}"
										checked="checked">
									<label for="${s}">${s}</label>
								</c:forEach>
							</div>


							<%-- <div id="radio_button">
								<c:forEach var="size" items="${listsize}">
									<input type="radio" name="size" id="${size.id}">
									<label for="${size.id}">${size.size_name}</label>
								</c:forEach>
							</div> --%>

							<h3 class="soluong">Số lượng</h3>
							<div id="buy-amount">
								<button class="minus-btn" onclick="handleMinus()">
									<svg xmlns="http://www.w3.org/2000/svg" fill="none"
										viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
										class="w-6 h-6">
													<path stroke-linecap="round" stroke-linejoin="round"
											d="M19.5 12h-15" />
												</svg>
								</button>

								<input disabled type="text" name="amount" id="amount" value="1">

								<button class="plus-btn" onclick="handlePlush()">
									<svg xmlns="http://www.w3.org/2000/svg" fill="none"
										viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
										class="w-6 h-6">
													<path stroke-linecap="round" stroke-linejoin="round"
											d="M12 4.5v15m7.5-7.5h-15" />
												</svg>
								</button>
							</div>

							<div id="button" style="margin-top: 20px;">

								<div id="btn-xemthem">
									<button  class="btn btn-outline-dark">THÊM VÀO GIỎ HÀNG</button>

									<button type="button" class="btn btn-outline-dark">MUA
										HÀNG</button>
									<button type="button" class="btn btn-outline-dark">
										<i class="bi bi-suit-heart"></i>
									</button>
								</div>
								</button>

							</div>
							<hr>

							<h2 class="mota">Mô tả sản phẩm</h2>
							<hr>
							<div class="chitietsanpham">
								<input id="ch" type="checkbox">
								<p>Shirt Dress thành công thể hiện khái niệm lịch sự, sang
									trọng thông qua thiết kế kết hợp hài hòa giữa hai yếu tố cổ
									điển và hiện đại. Đầm mượn dáng sơ mi cổ điển với cổ đức trang
									nhã, tay dài, cổ và tay áo có thể điều chỉnh, thoải mái vận
									động. Thiết kế thân dưới xếp ly xòe nhẹ mang lại sự duyên dáng
									cho bộ đầm.</p>
								<div class="content">
									<p>Thiết kế mix cùng giày cao gót, bốt, hoặc giày xăng đan
										tùy thuộc vào dịp sự kiện. Bổ sung thêm phụ kiện như dây
										chuyền, vòng cổ, hoặc túi xách để hoàn thiện phong cách thời
										trang của bạn. Thông tin mẫu: Chiều cao: 167 cm Cân nặng: 50
										kg Số đo 3 vòng: 83-65-93 cm Mẫu mặc size M Lưu ý: Màu sắc sản
										phẩm thực tế sẽ có sự chênh lệch nhỏ so với ảnh do điều kiện
										ánh sáng khi chụp và màu sắc hiển thị qua màn hình máy tính/
										điện thoại.</p>
									<label id="buttonchitiet" for="ch">Ít hơn</label>
								</div>
								<label id="buttonchitiet" for="ch">Xem thêm</label>
							</div>
						</div>
					</c:forEach>
				</div>
				<h1 class="sanphamtuongtu">Sản phẩm tương tự</h1>

				<div class="row" id="dssp">
					<c:forEach var="list_p_tuongtu" items="${list_p_tuongtu}">
						<c:choose>
							<c:when
								test="${list_p_tuongtu.category_product.id == myVariable}">
								<div id="items" class="col-2">
									<div id="info-ticket">&ensp;MỚI&ensp;</div>
									<img id="img-items" src="/views/image/${list_p_tuongtu.image}"
										alt="">
									<p style="font-size: 20px;">
										<i class="bi bi-check-circle-fill" style="float: left;"></i><i
											class="bi bi-heart" style="float: right;"></i>
									</p>
									<p id="items-name">${list_p_tuongtu.product_name}</p>
									<p id="items-price">5.990.000đ</p>
									<button id="items-btn" type="button"
										class="btn btn-outline-dark">
										<i class="bi bi-cart2"></i>
									</button>
								</div>
							</c:when>
						</c:choose>
					</c:forEach>
				</div>

				<h1 class="sanphamtuongtu">Sản phẩm đã xem</h1>

				<div class="row" id="dssp">
					<div id="items" class="col-2">
						<div id="info-ticket">&ensp;MỚI&ensp;</div>
						<img id="img-items" src="../image/sp1.jpg" alt="">
						<p style="font-size: 20px;">
							<i class="bi bi-check-circle-fill" style="float: left;"></i><i
								class="bi bi-heart" style="float: right;"></i>
						</p>
						<p id="items-name">Calasta Dress - Đầm Dạ Hội Thêu Hoa</p>
						<p id="items-price">5.990.000đ</p>
						<button id="items-btn" type="button" class="btn btn-outline-dark">
							<i class="bi bi-cart2"></i>
						</button>
					</div>
					<div id="items" class="col-2">
						<div id="info-ticket">&ensp;MỚI&ensp;</div>
						<img id="img-items" src="../image/sp1.jpg" alt="">
						<p style="font-size: 20px;">
							<i class="bi bi-check-circle-fill" style="float: left;"></i><i
								class="bi bi-heart" style="float: right;"></i>
						</p>
						<p id="items-name">Calasta Dress - Đầm Dạ Hội Thêu Hoa</p>
						<p id="items-price">5.990.000đ</p>
						<button id="items-btn" type="button" class="btn btn-outline-dark">
							<i class="bi bi-cart2"></i>
						</button>
					</div>
					<div id="items" class="col-2">
						<div id="info-ticket">&ensp;MỚI&ensp;</div>
						<img id="img-items" src="../image/sp1.jpg" alt="">
						<p style="font-size: 20px;">
							<i class="bi bi-check-circle-fill" style="float: left;"></i><i
								class="bi bi-heart" style="float: right;"></i>
						</p>
						<p id="items-name">Calasta Dress - Đầm Dạ Hội Thêu Hoa</p>
						<p id="items-price">5.990.000đ</p>
						<button id="items-btn" type="button" class="btn btn-outline-dark">
							<i class="bi bi-cart2"></i>
						</button>
					</div>
					<div id="items" class="col-2">
						<div id="info-ticket">&ensp;MỚI&ensp;</div>
						<img id="img-items" src="../image/sp1.jpg" alt="">
						<p style="font-size: 20px;">
							<i class="bi bi-check-circle-fill" style="float: left;"></i><i
								class="bi bi-heart" style="float: right;"></i>
						</p>
						<p id="items-name">Calasta Dress - Đầm Dạ Hội Thêu Hoa</p>
						<p id="items-price">5.990.000đ</p>
						<button id="items-btn" type="button" class="btn btn-outline-dark">
							<i class="bi bi-cart2"></i>
						</button>
					</div>
					<div id="items" class="col-2">
						<div id="info-ticket">&ensp;MỚI&ensp;</div>
						<img id="img-items" src="../image/sp1.jpg" alt="">
						<p style="font-size: 20px;">
							<i class="bi bi-check-circle-fill" style="float: left;"></i><i
								class="bi bi-heart" style="float: right;"></i>
						</p>
						<p id="items-name">Calasta Dress - Đầm Dạ Hội Thêu Hoa</p>
						<p id="items-price">5.990.000đ</p>
						<button id="items-btn" type="button" class="btn btn-outline-dark">
							<i class="bi bi-cart2"></i>
						</button>
					</div>
				</div>

				<!-- banner -->
				<section class="container">
					<img src="../image/bannertrangchu.jpg"
						style="width: 100%; border-radius: 80px 0px;" alt="">
				</section>
		</section>
		<hr>
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
					<input style="margin-top: 20px;" type="email"
						placeholder="Nhập địa chỉ email">
					<button
						style="margin-top: 20px; border-radius: 20px 2px; float: right;"
						type="button" class="btn btn-outline-dark">Dark</button>
				</div>
			</div>

		</footer>
		<script src="/views/user/js/slideshow.js"></script>
		<script src="/views/user/js/tanggiam.js"></script>
	</form>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</html>