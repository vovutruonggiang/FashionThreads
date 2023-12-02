<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
		<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
			<!DOCTYPE html>
			<html lang="en">

			<head>
				<meta charset="UTF-8">
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
				<title>Document</title>
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
					crossorigin="anonymous">
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
					integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
					crossorigin="anonymous"></script>
				<link rel="stylesheet"
					href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
				<style>
					#inputform {
						margin-top: 20px;
					}

					#inputform button {
						width: 200px;
						margin-top: 10px;
						height: 40px;
					}

					body {
						height: 800px;
					}

					#sumary {
						margin-top: 60px;
						border: 1px solid;
						height: auto;
						padding: 20px
					}

					#sumary1 {
						margin-top: 20px;
						border: 1px solid;
						height: auto;
						padding: 20px
					}

					#cart-items {
						margin-bottom: 20px;
					}

					#cart-total {
						overflow-y: scroll;
						height: 200px;
					}
				</style>
			</head>

			<body class="container">
				<div class="row" style="margin-top: 30px;">
					<div class="col-8">
						<form:form action="/checkout/save" method="POST" modelAttribute="invoice">
							<p style="font-size: 30px;">Chi tiết thanh toán</p>
							<hr>
							<h5>1. ĐỊA CHỈ LIÊN LẠC</h5>
							<div id="inputform" class="input-group mb-3">
								<span class="input-group-text"><i class="bi bi-person"></i></span>
								<input type="text" path="accounts" class="form-control" placeholder="Họ tên"
									readonly="true" value="${username.staff.fullname}">
							</div>
							<div id="inputform" class="input-group mb-3">
								<span class="input-group-text"><i class="bi bi-geo-alt"></i></span>
								<input type="text" class="form-control" placeholder="Địa chỉ" path="delivery_address"
									readonly="true" value="${username.staff.address}">
							</div>
							<div id="inputform" class="input-group mb-3">
								<span class="input-group-text"><i class="bi bi-telephone"></i></span>
								<input type="text" class="form-control" placeholder="Số điện thoại" path="accounts"
									readonly="true" value="${username.staff.phone_number}">
							</div>
							<hr>
							<h5>2. PHƯƠNG THỨC THANH TOÁN</h5>
							<div id="inputform" class="input-group mb-3">
								<label class="input-group-text" for="inputGroupSelect01"><i
										class="bi bi-bank"></i></label>
										<form:select  class="form-select" id="inputGroupSelect01" path="payment_methods">
											<form:option value="tiền mặt">tiền mặt</form:option>
											<form:option value="thẻ">Thẻ</form:option>
										</form:select>
							</div>
							<hr>
							<h5>3. GHI CHÚ ĐƠN HÀNG</h5>
							<textarea class="form-control" name="" id="" rows="3"></textarea>
							<hr>
							<h5>4. EMAIL THÔNG BÁO</h5>
							<div id="inputform" class="input-group mb-3">
								<span class="input-group-text">@</span> <input 	path="accounts" type="email" class="form-control"
									placeholder="Địa chỉ email" readonly="true" value="${username.staff.email}">
							</div>
							<hr>
							<div id="inputform">
								<button type="submit" class="btn btn-outline-dark">Đặt hàng</button>
							</div>
						</form:form>
					</div>
					<div class="col-4">
						<div id="sumary">
							<p style="font-size: 30px;">Tóm tắt hóa đơn</p>
							<hr>
							<div class="row">
								<div class="col-6">
									<p>Tổng sản phẩm</p>
									<p>Tổng tiền hàng</p>

								</div>
								<div class="col-6 text-end">
									<p>${countQuantity}</p>
									<p>${countTotalProduct}</p>

								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-6">
									<p>Tiền thanh toán</p>
								</div>
								<div class="col-6 text-end">
									<p>
										<strong>${countTotalProduct}</strong>
									</p>
								</div>
							</div>
						</div>
						<div id="sumary1">
							<div>
								<div class="row" id="cart-items">
									<div class="container" id="cart-total">
										<c:forEach items="${cart}" var="c">
											<div class="row" id="cart-items">
												<div class="col-5">
													<img src="/views/image/${c.product.image}" alt=""
														style="width: 100%;">
												</div>
												<div class="col-7 " id="cart">
													<p style="font-weight: 500;">${c.product.product_name}</p>
													<p>Màu sắc: ${c.color}</p>
													<p>Size: ${c.size}</p>
													<input type="number" value="${c.quantity}" class="form-control"
														name="" id=""
														style="width: 60px; height: 30px; margin-top: 10px;">
													<span style="float: right; font-weight: bold;">${(c.price *
														c.quantity).intValue() }</span>

												</div>
											</div>
										</c:forEach>


									</div>
								</div>
							</div>
						</div>
					</div>
				</div>



			</body>

			</html>