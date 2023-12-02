<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Hình | Fashion Thread</title>
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
											<h3 class="card-title">Thông Tin Hình</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<form:form modelAttribute="images">
												<div class="text"></div>
												<div class="row">
													<div class="col-6">
														<div class="form-group">
															<label for="exampleInputEmail1">Mã Hình</label>
															<form:input path="id" style="width: 300px"
																disabled="disabled" type="text" class="form-control"
																placeholder="" />
														</div>

														<div class="form-group">
															<div class="form-group">
																<label for="exampleInputEmail1">Tên Sản Phẩm</label>
																<form:select style="width: 300px" path="product_id.id"
																	class="form-control">
																	<c:forEach var="p" items="${list_Product}">
																		<form:option value="${p.id}">${p.product_name}</form:option>
																	</c:forEach>
																</form:select>
															</div>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label for="exampleFormControlFile1"> Chọn hình </label>
															<form:input path="image_name" type="file"
																class="form-control-file" id="exampleFormControlFile1" />
														</div>
													</div>
													<div class="btn-function">
														<a href="/views/manage_images_fashion_threads"
															class="btn btn-info">Mới</a>
														<button
															formaction="/views/manage_images_fashion_threads/insert"
															class="btn btn-success">Thêm</button>

														<button
															formaction="/views/manage_images_fashion_threads/update"
															class="btn btn-warning">Cập Nhật</button>
													</div>
												</div>
											</form:form>
										</div>
										<!-- /.card-body -->
									</div>
								</div>
								<!-- /.card -->
								<div class="tab-pane fade" id="tab2" role="tabpanel"
									aria-labelledby="tab2-tab">
									<div class="card">
										<div class="card-header">
											<h3 class="card-title">Danh Sách Hình</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<table id="example1"
												class="table table-bordered table-striped">
												<thead>
													<tr>
														<th>ID</th>
														<th>Tên Sản Phẩm</th>
														<th>Hình</th>
														<th>Hành Động</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="list_image" items="${list_Images}">
														<tr>
															<td>${list_image.id}</td>
															<td>${list_image.product_id.product_name}</td>
															<td><img
																src="/views/admin/img/${list_image.image_name}"
																style="width: auto; height: 40px"></td>
															<td><a
																href="/views/manage_images_fashion_threads/edit/${list_image.id}"><button
																		class="btn btn-success">Sửa</button></a></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<!-- /.card-body -->
									</div>
									<!-- /.card -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->
						</div>
					</div>
					<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@ include
			file="/views/common/include/admin/manage/footer_Manage.jsp"%>
</body>

</html>
