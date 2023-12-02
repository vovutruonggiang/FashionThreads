<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lịch sử mua hàng</title>
 <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<!-- header -->

	<!-- header -->

		<div class="container">
			<div class="row" style="padding-left: 150px">

				<table class="table" style="height: 500px;">
					<thead>
						<tr>
							 
							<th scope="col">Họ tên</th>
							<th scope="col">Địa chỉ</th>
							<th scope="col">Phương thức thanh toán</th>
							<th scope="col">Ngày mua</th>
							<th scope="col">Trang thái<th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${order}" var="orders">
							<tr>

								<td hidden="">${orders.id}</td>
								<td>${orders.staff_id.fullname}</td>
								<td>${orders.delivery_address}</td>
								<td> ${orders.payment_methods}</td>
								<td style="width: 150px;">${orders.date_of_payment}</td>
								<td style="width: 150px">
<%-- 								<c:if test="${orders.trangthai == 1}"> --%>
<!-- 									<b style="color:lime;"> Đang xử lý  </b>    -->
<%-- 								</c:if> --%>
<%-- 								 	<c:if test="${orders.trangthai == 2}"> --%>
<!-- 								<b style="color: aqua;">Đang Lấy Hàng</b> -->
<%-- 							</c:if> <c:if test="${ orders.trangthai == 3}"> --%>
<!-- 								<b style="color: orange ;">Đang Giao Hàng</b> -->
<%-- 							</c:if> <c:if test="${ orders.trangthai == 4}"> --%>
<!-- 								<b style="color: #00CC99 ;">Đã Giao Hàng</b> -->
<%-- 							</c:if>  --%>
							</td>
							<td><a href="/form/OrderDetail/${orders.id}">Detail</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	 
	<!-- footer -->
	 
	<!-- footer -->
</body>
</html>