<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Sản Phẩm | Fashion Thread</title>
<%@ include file="/views/common/include/admin/manage/head_Manage.jsp"%>
</head>

<style>
#drop-area {
	width: 400px;
	height: 500px;
	padding: 30px;
	background-color: #ffffff;
	text-align: center;
	border-radius: 20px;
}

#img_view {
	width: 100%;
	height: 100%;
	border-radius: 20px;
	border: 2px dashed #bbb5ff;
	background-color: #f7f8ff;
}
</style>

<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<%@ include
				file="/views/common/include/admin/manage/navbar_Manage.jsp"%>

			<!-- Right navbar links -->
			<%@ include
				file="/views/common/include/admin/manage/right_Navbar.jsp"%>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<%@ include file="/views/common/include/admin/brand_Logo.jsp"%>
			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<%@ include
					file="/views/common/include/admin/sidebar_User_Panel.jsp"%>

				<!-- Sidebar Menu -->
				<%@ include file="/views/common/include/admin/sidebar_Menu.jsp"%>
			</div>
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header"></section>
			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="div_tabs">
								<div class="div_tabs1">
									<a href="/views/manage_product_fashion_threads">Sản Phẩm </a>
								</div>
								<div class="div_tabs2">
									<a href="/views/manage_detailed_products_fashion_threads">Sản
										Phẩm Chi Tiết </a>
								</div>
								<div class="div_tabs3">
									<a href="/views/manage_images_fashion_threads">Hình </a>
								</div>
							</div>
							<ul class="nav nav-tabs" id="myTab" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="tab1-tab" data-toggle="tab" href="#tab1" role="tab"
									aria-controls="tab1" aria-selected="true">Thông Tin</a></li>
								<li class="nav-item"><a class="nav-link" id="tab2-tab"
									data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2"
									aria-selected="false">Danh Sách</a></li>
							</ul>
							<div class="tab-content" id="myTabContent">
								<div class="tab-pane fade show active" id="tab1" role="tabpanel"
									aria-labelledby="tab1-tab">
									<div class="card">
										<div class="card-header">
											<h3 class="card-title">Thông Tin Sản Phẩm</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<form:form modelAttribute="product">
												<div class="row">
													<div class="col-6">

														<div class="form-group">
															<label for="exampleFormControlSelect1">Tên menu</label> <select
																class="form-control" id="category_menu">
																<option>---Chọn Tên Menu---</option>
																<c:forEach var="list_menu" items="${list_category_menu}">
																	<option value="${list_menu.id}">${list_menu.name_category_menu}</option>
																</c:forEach>
															</select>
														</div>

														<div class="form-group">
															<label for="exampleFormControlSelect1">Loại Sản
																Phẩm</label> <select class="form-control"
																id="category_product_type">
																<option>---Chọn Loại Sản Phẩm---</option>
																<c:forEach var="list_product_type"
																	items="${list_category_product_type}">
																	<option>${list_product_type.name_category_product_type}</option>
																</c:forEach>
															</select>
														</div>

														<div class="form-group">
															<label>Danh mục sản phẩm</label>
															<form:select path="category_product.id"
																class="form-control" id="category_product">
																<option>---Chọn Danh Mục Sản Phẩm---</option>
																<c:forEach var="list_product"
																	items="${list_category_product}">
																	<form:option value="${list_product.id}">${list_product.name_category_product}</form:option>
																</c:forEach>
															</form:select>
														</div>

														<div class="form-group">
															<label for="exampleFormControlSelect1">Nhãn Hàng</label>
															<form:select class="form-control" path="brand_id.id"
																id="exampleFormControlSelect1">
																<c:forEach var="list_brand" items="${list_Brand}">
																	<form:option value="${list_brand.id}">${list_brand.brand_name}</form:option>
																</c:forEach>
															</form:select>
														</div>

														<div hidden="true" class="form-group">
															<label for="exampleInputEmail1">ID</label>
															<form:input path="id" type="text" class="form-control"
																placeholder="ID" />
														</div>

														<div class="form-group">
															<label for="exampleInputEmail1">Tên Sản Phẩm</label>
															<form:input path="product_name" type="text"
																class="form-control" placeholder="Tên Sản Phẩm" />
														</div>

														<div class="form-group">
															<label for="exampleInputEmail1">Giá Nhập</label>
															<form:input path="import_price" type="text"
																class="form-control" placeholder="Giá Nhập" />
														</div>

														<div class="form-group">
															<label for="exampleInputEmail1">Giá Bán</label>
															<form:input path="price" type="text" class="form-control"
																placeholder="Giá Bán" />
														</div>

														<div class="form-group">
															<label for="exampleFormControlSelect1">Trạng Thái</label>
															<form:select class="form-control" path="status.id"
																id="exampleFormControlSelect1">
																<c:forEach var="list_status" items="${list_status}">
																	<form:option value="${list_status.id}">${list_status.status_name}</form:option>
																</c:forEach>
															</form:select>
														</div>

														<div class="form-group">
															<label for="exampleFormControlTextarea1">Thông
																Tin Sản Phẩm </label>
															<form:textarea class="form-control"
																path="product_description"
																id="exampleFormControlTextarea1" rows="3"></form:textarea>
														</div>
													</div>
													<div class="col-6">

														<div class="form-group">
															<label for="input_file" id="drop-area"> <form:input
																	path="image" type="file" class="form-control-file"
																	id="input_file" hidden="true" />
																<div id="img_view" style="padding-top: 20%;">
																	<img src="/views/image/508-icon.png" alt="">
																	<p>Nhấn để chọn ảnh</p>
																</div>
															</label>
														</div>
														
													
															<form:input path="date_create" type="date" id="dateInput" style="display: none;"/>


													</div>

													<div class="row">
														<div class="btn-function">
															<a href="/views/manage_product_fashion_threads"
																class="btn btn-info">Mới</a>
															<button
																formaction="/views/manage_pro	duct_fashion_threads/insert"
																class="btn btn-success">Thêm</button>
															<button
																formaction="/views/manage_banner_fashion_threads/update"
																class="btn btn-warning">Cập Nhật</button>
														</div>
													</div>
												</div>
											</form:form>
										</div>
										<!-- /.card-body -->
									</div>
									<!-- /.card -->
								</div>
								<div class="tab-pane fade" id="tab2" role="tabpanel"
									aria-labelledby="tab2-tab">
									<div class="card">
										<div class="card-header">
											<h3 class="card-title">Danh Sách Sản Phẩm</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<table id="example1"
												class="table table-bordered table-striped">
												<thead>
													<tr>
														<th>Tên Sản Phẩm</th>
														<th>Giá Bán</th>
														<th>Giá Nhập</th>
														<th>Mô Tả</th>
														<th>Danh Mục_ID</th>
														<th>Nhãn Hàng_ID</th>
														<th>Trạng Thái</th>
														<th>Hành Động</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="p" items="${list_Product}">
														<tr>
															<td>${p.product_name}</td>
															<td>${p.price}</td>
															<td>${p.import_price}</td>
															<td>${p.product_description}</td>
															<td>${p.category_product.name_category_product}</td>
															<td>${p.brand_id.brand_name}</td>
															<td>${p.status.status_name}</td>
															<td>
																<div class="drop-left">
																	<span><a
																		href="/views/manage_product_fashion_threads/edit/${p.id}"
																		type="button">Sửa</a></span>
																</div>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<!-- /.card-body -->
									</div>
								</div>
								<!-- /.card -->
							</div>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@ include
			file="/views/common/include/admin/manage/footer_Manage.jsp"%>

		<script>
			const dropArea = document.getElementById("drop-area");
			const inputFile = document.getElementById("input_file");
			const imageView = document.getElementById("img_view");

			inputFile.addEventListener("change", uploadImage);
			function uploadImage() {
				let imgLink = URL.createObjectURL(inputFile.files[0]);
				imageView.style.backgroundImage = `url(${imgLink})`;
				imageView.textContent = "";
			}
		</script>

		<script type="text/javascript">
			$(document)
					.ready(
							function() {
								$('#category_menu')
										.on(
												'change',
												function() {
													var id = $(
															'#category_menu option:selected')
															.val();

													$
															.ajax({
																type : 'GET',
																data : {
																	provinceId : id
																},
																url : '/api/districts',
																success : function(
																		result) {
																	var s = '';

																	for (var i = 0; i < result.length; i++) {
																		s += '<option value="' + result[i].id + '">'
																				+ result[i].name_category_product_type
																				+ '</option>';
																	}

																	$(
																			'#category_product_type')
																			.html(
																					s);
																}
															});
												});

								$('#category_product_type')
										.on(
												'change',
												function() {
													var id = $(
															'#category_product_type option:selected')
															.val();

													$
															.ajax({
																type : 'GET',
																data : {
																	provinceId2 : id
																},
																url : '/api/districts2',
																success : function(
																		result) {
																	var s = '';

																	for (var i = 0; i < result.length; i++) {
																		s += '<option value="' + result[i].id + '">'
																				+ result[i].name_category_product
																				+ '</option>';
																	}

																	$(
																			'#category_product')
																			.html(
																					s);
																}
															});
												});
							});
		</script>
		
		<script type="text/javascript">
		// Lấy đối tượng input bằng ID
		var dateInput = document.getElementById("dateInput");

		// Tạo một đối tượng Date hiện tại
		var currentDate = new Date();

		// Lấy ngày, tháng và năm từ đối tượng Date
		var day = currentDate.getDate();
		var month = currentDate.getMonth() + 1; // Tháng trong JavaScript bắt đầu từ 0
		var year = currentDate.getFullYear();

		// Tạo một chuỗi ngày tháng năm đúng định dạng
		var formattedDate = year + "-" + (month < 10 ? "0" : "") + month + "-" + (day < 10 ? "0" : "") + day;

		// Đặt giá trị của ô input
		dateInput.value = formattedDate;

		</script>
</body>

</html>