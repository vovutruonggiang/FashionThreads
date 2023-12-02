<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<link rel="stylesheet" href="/views/user/css/menu.css">
<header>
<h1>hello</h1>
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
										<a class="dropdown-item" href="/views/${subItem2.id}">${subItem2.name_category_product}</a>
									</c:forEach>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<div style="width: 33%; float: left; height: 80px;">
			<a href="/views/home">
				<img style="width: 48%; margin-left: 26%" alt=""
				src="/views/image/logo/508-icon.png">
			</a>

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
					<div style="margin-right: 145px" id="dropdown1"
						class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<ul id="ulli">
							<li><a style="font-weight: 500; font-size: 18px;"
								class="dropdown-item" href="/views/login">&ensp;&ensp;Tài
									khoản của tôi</a></li>
							<li><a class="dropdown-item" href="/views/info"><i
									class="bi bi-person"></i>&ensp;Thông tin tài khoản</a></li>
							<li><a class="dropdown-item" href="/form/order2"><i
									class="bi bi-arrow-repeat"></i>&ensp;Quản lý đơn hàng</a></li>
							<li><a class="dropdown-item" href="/views/adress"><i
									class="bi bi-geo-alt"></i>&ensp;Số địa chỉ</a></li>
							<li><a class="dropdown-item" href="/views/favorite-products"><i
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
</header>