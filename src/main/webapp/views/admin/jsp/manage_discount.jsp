<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Khuyến Mãi | Fashion Thread</title>
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
											<h3 class="card-title">Thông Tin Khuyến Mãi</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<form:form modelAttribute="discount">
												<div class="text"></div>
												<div class="row">
													<label for="labelID" class="col-form-label">ID:</label>
													<div class="col-sm-3">
														<form:input path="id" type="text" class="form-control" />
													</div>
													<label for="labelUsername" class="col-form-label">Tên
														Kh.Mãi:</label>
													<div class="col-sm-6">
														<form:input path="discount_name" type="text"
															class="form-control" />
													</div>
												</div>
												<div class="row">
													<label for="labelID" class="col-form-label">Ngày
														Bắt Đầu:</label>
													<div class="col-sm-3">
														<form:input path="start_day" type="date"
															class="form-control" />
													</div>
													<label for="labelUsername" class="col-form-label">Ngày
														Kết Thúc:</label>
													<div class="col-sm-3 input-day_end">
														<form:input path="end_day" type="date"
															class="form-control" />
													</div>
												</div>
												<div class="row">
													<label for="labelID" class="col-form-label">Trị
														Giá:</label>
													<div class="col-sm-3">
														<form:input path="value" type="text" class="form-control" />
													</div>
													<label for="" class="col-form-label label-phone">Đơn
														Vị:</label>
													<div class="col-sm-1">
														<form:input path="unit" type="text" class="form-control" />
													</div>
												</div>
												<div class="row">
													<label for="" class="col-form-label">Mô Tả:</label>
													<div class="input-group col-md-6">
														<form:input path="descriptions" class="form-control"
															aria-label="With textarea" />
													</div>
												</div>
												<div class="row">
													<div class="btn-function">
														<a href="/views/manage_discount_fashion_threads"
															class="btn btn-info">Mới</a>
														<button
															formaction="/views/manage_discount_fashion_threads/insert"
															class="btn btn-success">Thêm</button>
														<button
															formaction="/views/manage_discount_fashion_threads/update"
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
											<h3 class="card-title">Danh Sách Khuyến Mãi</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<table id="example1"
												class="table table-bordered table-striped">
												<thead>
													<tr>
														<th>ID</th>
														<th>Tên Khuyến Mãi</th>
														<th>Ngày Bắt Đầu</th>
														<th>Ngày Kết Thúc</th>
														<th>Trị Giá</th>
														<th>Đơn Vị</th>
														<th>Mô Tả</th>
														<th>Hành Động</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${items}" var="item">
														<tr>
															<td>${item.id}</td>
															<td>${item.discount_name}</td>
															<td>${item.start_day}</td>
															<td>${item.end_day}</td>
															<td>${item.value}</td>
															<td>${item.unit}</td>
															<td>${item.descriptions}</td>
															<td>
																<div class="drop-left">
																	<span><a
																		href="/views/manage_discount_fashion_threads/edit/${item.id}"
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