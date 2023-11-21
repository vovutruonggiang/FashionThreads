<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Danh Mục | Fashion Thread</title>
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
									<a href="/views/manage_category_fashion_threads">Menu </a>
								</div>
								<div class="div_tabs2">
									<a href="/views/manage_category_product_type_fashion_threads">Loại
										Sản Phẩm </a>
								</div>
								<div class="div_tabs3">
									<a href="/views/manage_category_product_fashion_threads">Sản
										Phẩm </a>
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
								<div class="tab-pane fade show active" id="tab1" role="tabpanel">
									<div class="card">
										<div class="card-header">
											<h3 class="card-title text-dark">Thông Tin Danh Mục Sản
												Phẩm</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<form:form modelAttribute="category_product">
												<div class="text"></div>
												<div class="row">
													<div hidden="hidden" class="col-sm-1">
														<form:input path="id" type="text" class="form-control" />
													</div>

													<label class="col-form-label"
														for="exampleFormControlSelect1">Tên Menu : </label>
													<div class="col-sm-2">
														<form:select path="category_product_type.category_menu.id"
															class="form-control" id="category_menu">
															<c:forEach var="c_product_menu"
																items="${list_category_menu}">
																<form:option value="${c_product_menu.id}">
																${c_product_menu.name_category_menu}</form:option>
															</c:forEach>
														</form:select>
													</div>
													<label class="col-form-label"
														for="exampleFormControlSelect1">Tên Loại SP : </label>
													<div class="col-sm-2">

														<form:select path="category_product_type.id"
															class="form-control" id="category_product_type">
															<c:forEach var="c_product_type"
																items="${list_category_product_type}">
																<form:option value="${c_product_type.id}">
																${c_product_type.name_category_product_type}</form:option>
															</c:forEach>
														</form:select>
													</div>

													<label for="labelUsername" class="col-form-label">Tên
														Sản Phẩm </label>
													<div class="col-sm-3">
														<form:input path="name_category_product" type="text"
															class="form-control" />
													</div>
												</div>
												<div class="row">
													<div class="btn-function">
														<a href="/views/manage_category_product_fashion_threads"
															class="btn btn-info">Mới</a>
														<button
															formaction="/views/manage_category_product_fashion_threads/insert"
															class="btn btn-success">Thêm</button>
														<button
															formaction="/views/manage_brand_fashion_threads/update"
															class="btn btn-warning">Cập Nhật</button>
													</div>
												</div>
											</form:form>
										</div>
										<!-- /.card-body -->
									</div>
								</div>
								<div class="tab-pane fade" id="tab2" role="tabpanel"
									aria-labelledby="tab2-tab">
									<div class="card">
										<div class="card-header">
											<h3 class="card-title text-dark">Danh Sách MENU</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<table id="example1"
												class="table table-bordered table-striped">
												<thead>
													<tr>
														<th>ID</th>
														<th>Danh Mục Sản Phẩm</th>
														<th>Tên Loại Sản Phẩm</th>
														<th>Danh Mục Sản Phẩm</th>
														<th>Hành Động</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${list_category_product}" var="item">
														<tr>
															<td>${item.id}</td>
															<td>${item.category_product_type.category_menu.name_category_menu}
															</td>
															<td>${item.category_product_type.name_category_product_type}
															</td>
															<td>${item.name_category_product}</td>
															<td>
																<div class="drop-left">
																	<span><a
																		href="/views/manage_category_product_fashion_threads/edit/${item.id}"
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
							</div>
						</div>
					</div>
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
							});
		</script>
</body>

</html>