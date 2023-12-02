<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- header -->
 
	<!-- header -->

	<table class="table" style="height: 500px;">
		<thead>
			<tr>

				<th scope="col">Tên sản phẩm</th>
				<th scope="col">Giá sản phẩm</th>
				<th scope="col">Số lượng</th>
				<th scope="col">Kích thước</th>
				<th scope="col">Màu sắc</th>
				<th scope="col">Hình sản phẩm</th>
				<th scope="col">Thành tiền</th>
				<th scope="col">Trang thái
				<th>
			</tr>
		</thead>
		<tbody></tbody>
		<c:forEach items="${orderDetail}" var="detail">
			<tr>

				<td hidden="">${detail.id}</td>
				<td>${detail.product_id.product_name}</td>
 				<td>${detail.price}</td>
				<td>${detail.quanlity}</td>
				<td>${detail.size}</td>
				<td>${detail.color}</td>
				<td style="200px"> <img style="width: 10%;" alt="" src="/views/image/${detail.product_id.image}">  </td>
				 <td style="width: 150px">${detail.price * detail.quanlity}VNĐ</td>
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
			<tr>
			<td></td>
			</tr>
			<tr>
				<td><b>Tổng tiền</b></td>
				<td><b></b></td>
				<td><b></b></td>
				<td><b>${Tong} VNĐ</b></td>
 			</tr>
		</tfoot>
	</table>
	<!-- footer -->
	 
	<!-- footer -->
</body>
</html>