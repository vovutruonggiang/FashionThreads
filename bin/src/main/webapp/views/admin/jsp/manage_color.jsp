<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Màu | Fashion Thread</title>
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
									<a href="/views/manage_size_fashion_threads">Kích Thước </a>
								</div>
								<div class="div_tabs2">
									<a href="/views/manage_color_fashion_threads">Màu </a>
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
											<h3 class="card-title">Thông Tin Màu</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<form:form modelAttribute="color">
												<div class="text"></div>
												<div class="row">
													<label for="labelID" class="col-form-label">ID:</label>
													<div class="col-sm-2">
														<form:input path="id" type="text" class="form-control" />
													</div>
													<label for="labelUsername" class="col-form-label">Tên
														Màu:</label>
													<div class="col-sm-4">
														<form:input path="color_name" type="text" name="name"
															id="name" class="form-control" />
													</div>
												</div>
												<div class="row">
													<label for="labelUsername" class="col-form-label">Chọn
														ảnh:</label>
													<div class="form-group">
														<form:input path="img_color" type="file"
															class="form-control" id="exampleFormControlFile1" />
													</div>
												</div>
												<div class="row">
													<div class="btn-function">
														<a href="/views/manage_color_fashion_threads"
															class="btn btn-info">Mới</a>
														<button
															formaction="/views/manage_color_fashion_threads/insert"
															class="btn btn-success">Thêm</button>
														<button
															formaction="/views/manage_color_fashion_threads/update"
															class="btn btn-warning">Cập Nhật</button>
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
											<h3 class="card-title">Danh Sách Màu</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<table id="example1"
												class="table table-bordered table-striped">
												<thead>
													<tr>
														<th>ID</th>
														<th>Tên Màu</th>
														<th>Hình Màu</th>
														<th>Hành Động</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${colors}" var="color">
														<tr>
															<td>${color.id}</td>
															<td>${color.color_name}</td>
															<td><img src="/views/image/color/${color.img_color}" style="width: auto; height: 50px"></td>
															<td>
																<div class="drop-left">
																	<span><a
																		href="/views/manage_color_fashion_threads/edit/${color.id}"
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
									<!-- /.card -->
								</div>
							</div>
							<!-- /.col -->
						</div>
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
</body>

</html>