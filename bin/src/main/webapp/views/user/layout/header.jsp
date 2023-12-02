<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<head>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>
<style>
#header {
	text-decoration: nonel;
	font-weight: 500;
	color: black !important;
}

#menu {
	position: sticky;
	z-index: 999;
	top: 0px;
	background-color: white;
	padding-left: 80px;
	padding-right: 80px;
	height: 80px;
	padding-left: 80px;
}

.dropdown {
	display: inline-block;
	margin-right: 10px; /* Để tạo khoảng cách giữa các phần tử */
}

#dropdown-menu {
	width: 1200px;
}

#form {
	color: #555;
	display: flex;
	padding: 2px;
	border: 1px solid currentColor;
	border-radius: 5px;
	margin: 0 0 30px;
	width: 230px;
	float: left;
	margin-top: 20px;
	margin-left: 20px;
}

input[type="search"] {
	border: none;
	background: transparent;
	margin: 0;
	padding: 7px 8px;
	font-size: 14px;
	color: inherit;
	border: 1px solid transparent;
	border-radius: inherit;
}

input[type="search"]::placeholder {
	color: #bbb;
}

#btnsearch {
	text-indent: -999px;
	overflow: hidden;
	width: 40px;
	padding: 0;
	margin: 0;
	border: 1px solid transparent;
	border-radius: inherit;
	background: transparent
		url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' class='bi bi-search' viewBox='0 0 16 16'%3E%3Cpath d='M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z'%3E%3C/path%3E%3C/svg%3E")
		no-repeat center;
	cursor: pointer;
	opacity: 0.7;
}

#btnsearch :hover {
	opacity: 1;
}

#btnsearch:focus, input[type="search"]:focus {
	box-shadow: 0 0 3px 0 #1183d6;
	border-color: #1183d6;
	outline: none;
}

#ulli li {
	height: 40px;
}

#dropdown ul li a i {
	font-size: 18px;
}

#dropdown-content5 li {
	height: 40px;
}
</style>
<body>
	<div id="menu">
		<div id="left-menu"
			style="width: 33%; float: left; height: 80px; padding-top: 25px">
			<c:forEach var="menuItem" items="${menuItems}">
				<div id="dropdown" class="dropdown">
					<a style="text-decoration: none; color: black;" href=""
id="dropdownMenuButton" data-toggle="dropdown"
						aria-expanded="false">${menuItem.name_category_menu}</a>
					<div id="dropdown-menu" class="dropdown-menu"
						aria-labelledby="dropdownMenuButton">
						<div class="row">
							<c:forEach var="subItem"
								items="${menuItem.category_product_type}">
								<div class="col-2 mt-3 mb-2">
									<header id="header" style="margin-left: 25px;">
										<a style="color: black;" href="">${subItem.name_category_product_type}</a>
									</header>
									<c:forEach var="subItem2" items="${subItem.category_product}">
										<a class="dropdown-item" href="#">${subItem2.name_category_product}</a>
									</c:forEach>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<div style="width: 33%; float: left; height: 80px;">
			<img style="width: 48%; margin-left: 26%" alt=""
				src="/views/image/logo/508-icon.png">

		</div>
		<div style="width: 33%; float: right; height: 80px;">
			<div id="form">
				<input type="search" placeholder="Search...">
				<button id="btnsearch" type="submit">Search</button>
			</div>
			<div style="font-size: 25px; padding-top: 20px; padding-left: 20px">
				<div style="display: inline-block; margin-left: 50px;">
					<a><i class="bi bi-globe-americas"></i></a>

				</div>
				<div style="display: inline-block; margin-left: 20px;">
					<a id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"><i
						class="bi bi-person"></i></a>
					<div style="margin-right:145px" id="dropdown1" class="dropdown-menu"
						aria-labelledby="dropdownMenuButton">
						<ul id="ulli">
							<li><a style="font-weight: 500; font-size: 18px;"
								class="dropdown-item" href="">&ensp;&ensp;Tài khoản của tôi</a>
							</li>
							<li><a class="dropdown-item" href=""><i
									class="bi bi-person"></i>&ensp;Thông tin tài khoản</a></li>
							<li><a class="dropdown-item" href=""><i
									class="bi bi-arrow-repeat"></i>&ensp;Quản lý đơn hàng</a></li>
							<li><a class="dropdown-item" href=""><i
									class="bi bi-geo-alt"></i>&ensp;Số địa chỉ</a></li>
							<li><a class="dropdown-item" href=""><i
									class="bi bi-heart"></i></i>&ensp;Sản phẩm yêu thích</a></li>
							<li><a class="dropdown-item" href=""><i
									class="bi bi-box-arrow-right"></i>&ensp;Đăng xuất</a></li>
						</ul>
					</div>
				</div>
				<div style="display: inline-block; margin-left: 20px;">
					<a><i class="bi bi-bag"></i></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>