<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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
<style>
body {
	background-color: #F4F4F4;
	height: 1100px;
}

td {
	font-size: 17px;
	vertical-align: middle;
	text-align: center;
}

th {
	text-align: center;
	font-size: 17px;
}

#info span {
	margin-top: 10px;
}
</style>
</head>

<body class="container">
	<div class="container"
		style="background-color: rgb(255, 255, 255); margin-top: 10px; margin-bottom: 20px; padding-top: 10px; padding-bottom: 10px;">
		<h3>Chi tiết đơn hàng</h3>
		<hr>
		<h5>
			<i class="bi bi-geo-alt-fill"></i> Địa điểm nhận hàng
		</h5>
		<p>${username.staff.fullname}-${username.staff.phone_number}</p>
	</div>

	<div style="background-color: rgb(255, 255, 255); border-radius: 10px;"
		class="container">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Hình ảnh</th>
					<th scope="col">Tên sản phẩm</th>
					<th scope="col">Kích thước</th>
					<th scope="col">Màu sắc</th>
					<th scope="col">Số lượng</th>
					<th scope="col">Giá tiền</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="totalPrice" value="0" />
				<c:forEach var="listhd" items="${listchitiethd}">
					<tr>
						<td><img style="width: 120px; border: 5px double;"
							src="/views/image/${listhd.product_id.image}" alt=""></td>
						<td>${listhd.product_id.product_name}</td>
						<td>${listhd.size}</td>
						<td>${listhd.color}</td>
						<td>${listhd.quanlity}</td>
						<td><fmt:formatNumber type="currency" currencySymbol=""
								maxFractionDigits="0" value="${listhd.price}" />VNĐ</td>
						<c:set var="price" value="${listhd.price}" />

					</tr>
					<c:set var="totalPrice" value="${totalPrice + listhd.price}" />
				</c:forEach>
			</tbody>
		</table>
		<p
			style="text-align: end; font-size: 17px; margin-right: 40px; margin-bottom: 30px; padding-bottom: 20px;">
			Tổng tiền: <strong> <fmt:formatNumber type="currency"
					currencySymbol=""  maxFractionDigits="0" value="${totalPrice}" />VNĐ</strong>

		</p>

	</div>
	<div class="container"
		style="background-color: white; margin-top: 20px; padding-top: 10px; padding-bottom: 10px;">
		<c:forEach var="thanhtoan" items="${tienmat}">
			<p>
				Phương thức thanh toán : <strong>${thanhtoan.payment_methods}</strong>
			</p>
		</c:forEach>
		<hr>
		<c:forEach var="thanhtoan" items="${tienmat}">
			<p>
				Trạng thái đơn hàng: <strong>${thanhtoan.status.status_name}</strong>
			</p>
		</c:forEach>
		<hr style="margin-top: 20px;">
		<div class="row">
			<div class="col-6" id="info">
				<div class="row">
					<div class="row">
						<div class="col-3">
							<p>Tên khách hàng:</p>
							<p>Số điện thoại:</p>
							<p>Địa chỉ email:</p>
							<p>Địa chỉ giao hàng:</p>
						</div>
						<div class="col-6">
							<p>${username.staff.fullname}</p>
							<p>${username.staff.phone_number}</p>
							<p>${username.staff.email}</p>
							<p>${username.staff.address}</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6" id="info">
				<div style="margin-left: 280px;">
					<div class="row">
						<div class="col-6">
							<p>Tổng tiền hàng:</p>
							<p>Tổng giảm giá:</p>
							<p>Phí vận chuyển:</p>
							<p>
								<strong>Tổng thanh toán:</strong>
							</p>
						</div>
						<div class="col-3">
							<p>
								<fmt:formatNumber type="currency" currencySymbol="" 
									maxFractionDigits="0" value="${totalPrice}" />
							</p>
							<p>
								<c:set var="giamgia" value="0" />
								0
							</p>
							<p>
								<fmt:formatNumber type="currency" currencySymbol="" 
									maxFractionDigits="0" value="30000" />
							</p>
							<p>
								<strong><fmt:formatNumber type="currency"
										currencySymbol=""  maxFractionDigits="0"
										value="${totalPrice - giamgia + 30000}" /></strong>

							</p>
						</div>
						<div class="col-3">
							<p>VNĐ</p>
							<p>VNĐ</p>
							<p>VNĐ</p>
							<p>
								<strong>VNĐ</strong>
							</p>
						</div>
					</div>
					<!-- <p><span>Tổng tiền hàng:</span><span style="margin-left: 60px;">2.000.000</span><span style="text-align: end;">VND</span></p>
                    <p><span>Tổng giảm giá:</span><span style="margin-left: 65px;">150.000</span><span>VND</span></p>
                    <p><span>Phí vận chuyển:</span><span style="margin-left: 60px;">20.000</span><span>VND</span></p>
                    <p><span>Tổng thanh toán:</span><span style="margin-left: 50px; font-weight: bold;">1.730.000</span><span>VND</span></p>
                    <button style="width: 200px; margin-left: 40px; margin-top: 20px;" class="btn btn-success">Xác nhận</button> -->
				</div>

			</div>
		</div>
	</div>


</body>

</html>