<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Sản Phẩm Chi Tiết | Fashion Thread</title>
<%@ include file="/views/common/include/admin/manage/head_Manage.jsp"%>
</head>

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
											<form:form action="" modelAttribute="detail">
												<div class="row">
													<div class="col-6">

														<div class="form-group">
															<label>Menu</label> <select id="category_menu"
																class="form-control">
																<option>---Chọn Tên Menu---</option>
																<c:forEach var="list_menu" items="${list_category_menu}">
																	<option value="${list_menu.id}">${list_menu.name_category_menu}</option>
																</c:forEach>
															</select>
														</div>

														<div class="form-group">
															<label>Loại Sản Phẩm</label> <select
																id="category_product_type" class="form-control">
																<option>---Chọn Loại Sản Phẩm---</option>
																<c:forEach var="list_product_type"
																	items="${list_category_product_type}">
																	<option ${list_product_type.id}>${list_product_type.name_category_product_type}</option>
																</c:forEach>
															</select>
														</div>

														<div class="form-group">
															<label>Danh Mục Sản Phẩm</label> <select
																id="category_product" class="form-control">
																<option>---Chọn Danh Mục Sản Phẩm---</option>
																<c:forEach var="list_product"
																	items="${list_category_product}">
																	<option value="${list_product.name_category_product}">${list_product.name_category_product}</option>
																</c:forEach>
															</select>
														</div>

														<div class="form-group">
															<label>Sản Phẩm</label>
															<form:select path="product_id.id" id="product"
																class="form-control">
																<c:forEach var="list_name_product"
																	items="${list_Product}">
																	<form:option value="${list_name_product.id}">${list_name_product.product_name}</form:option>
																</c:forEach>
															</form:select>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label>Kích Thước</label>
															<form:select path="size_id.id" class="form-control">
																<c:forEach var="list_Size" items="${list_Size}">
																	<form:option value="${list_Size.id}">${list_Size.size_name}</form:option>
																</c:forEach>
															</form:select>
														</div>

														<div class="form-group">
															<label>Màu</label>
															<form:select path="color_id.id" class="form-control">
																<c:forEach var="list_Color" items="${list_Color}">
																	<form:option value="${list_Color.id}">${list_Color.color_name}</form:option>
																</c:forEach>
															</form:select>
														</div>

														<div class="form-group">
															<label>Số Lượng</label>
															<form:input path="quantity" max="100" min="0"
																type="number" class="form-control" />
														</div>
														<div style="display: none" class="form-group">
															<label for="exampleInputEmail1">Mã Hình</label>
															<form:input path="id" style="width: 300px"
																disabled="disabled" type="text" class="form-control"
																placeholder="" />
														</div>
													</div>

													<div class="row">
														<div class="btn-function">
															<a href="/views/manage_detailed_products_fashion_threads"
																class="btn btn-info">Mới</a>
															<button
																formaction="/views/manage_detailed_products_fashion_threads/insert"
																class="btn btn-success">Thêm</button>
															<button
																formaction="/views/manage_detailed_products_fashion_threads/update"
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
														<th>Menu</th>
														<th>Tên Sản Phẩm</th>
														<th>Kích Thước</th>
														<th>Màu</th>
														<th>Số Lượng</th>
														<th>Hành Động</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="p" items="${list_Detail_Product}">
														<tr>
															<td>${p.product_id.category_product.category_product_type.category_menu.name_category_menu}</td>
															<td>${p.product_id.product_name}</td>
															<td>${p.size_id.size_name}</td>
															<td>${p.color_id.color_name}</td>
															<td>${p.quantity}</td>
															<td>
																<div class="drop-left">
																	<span><a
																		href="/views/manage_detailed_products_fashion_threads/edit/${p.id}"
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

								$('#category_product')
										.on(
												'change',
												function() {
													var id = $(
															'#category_product option:selected')
															.val();

													$
															.ajax({
																type : 'GET',
																data : {
																	provinceId3 : id
																},
																url : '/api/districts3',
																success : function(
																		result) {
																	var s = '';

																	for (var i = 0; i < result.length; i++) {
																		s += '<option value="' + result[i].id + '">'
																				+ result[i].product_name
																				+ '</option>';
																	}

																	$(
																			'#product')
																			.html(
																					s);
																}
															});
												});
							});
		</script>
</body>

</html>