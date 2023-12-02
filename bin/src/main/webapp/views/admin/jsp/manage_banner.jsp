<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Banner | Fashion Thread</title>
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
									<a href="/views/manage_status_fashion_threads">Trạng Thái </a>
								</div>
								<div class="div_tabs2">
									<a href="/views/manage_banner_fashion_threads">Banner </a>
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
											<h3 class="card-title">Thông Tin Banner</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<form:form modelAttribute="banner">
												<div class="text"></div>
												<div class="row">
													<label for="labelID" class="col-form-label">ID:</label>
													<div class="col-sm-2">
														<form:input path="id" type="text" class="form-control"
															disabled="disabled" />
													</div>
													<label for="" class="col-form-label label-hinh">Hình:</label>
													<div class="col-sm-4">
														<form:input path="images" type="file" class="form-control" />
													</div>
												</div>
												<div class="row">
													<label for="labelID" class="col-form-label">Trạng
														Thái:</label>
													<div class="col-sm-2">
														<form:select path="status_id.id" class="form-control">
															<c:forEach items="${list_Status}" var="status">
																<option value="${status.id}" selected>${status.id}
																	- ${status.status_name}</option>
															</c:forEach>
														</form:select>
													</div>
												</div>
												<div class="row">
													<div class="btn-function">
														<a href="/views/manage_banner_fashion_threads"
															class="btn btn-info">Mới</a>
														<button
															formaction="/views/manage_banner_fashion_threads/insert"
															class="btn btn-success">Thêm</button>
														<button
															formaction="/views/manage_banner_fashion_threads/update"
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
											<h3 class="card-title">Danh Sách Banner</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<table id="example1"
												class="table table-bordered table-striped">
												<thead>
													<tr>
														<th>ID</th>
														<th>Hình</th>
														<th>Trạng Thái</th>
														<th>Hành Động</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${list_Banner}" var="banner">
														<tr class="banner-row" data-row-id="${banner.id}">
															<td>${banner.id}</td>
															<td><img src="/views/admin/img/${banner.images}"
																style="width: 50px; height: 50px; object-fit: cover; overflow-clip-margin: content-box; overflow: clip;" /></td>
															<td class="td-status">${banner.status_id.status_name}</td>
															<td>
																<div class="drop-left">
																	<span><a
																		href="/views/manage_banner_fashion_threads/edit/${banner.id}"
																		type="button">Sửa</a></span>
																	<button class="btnDelete" type="button"
																		data-toggle="modal" data-target="#myModal"
																		data-row-id="${banner.id}">Xóa</button>
																	<!-- Modal -->
																	<div class="modal fade" id="myModal" tabindex="-1"
																		role="dialog" aria-labelledby="exampleModalLabel"
																		aria-hidden="true">
																		<div class="modal-dialog" role="document">
																			<div class="modal-content">
																				<div class="modal-header">
																					<h5 class="modal-title" id="exampleModalLabel">Cập
																						Nhật Trạng Thái Khách Hàng</h5>
																					<button type="button" class="close"
																						data-dismiss="modal" aria-label="Close">
																						<span aria-hidden="true">&times;</span>
																					</button>
																				</div>
																				<div class="modal-body">
																					<form:form class="form-inline"
																						action="/views/manage_banner_fashion_threads/updateStatusBanner"
																						method="post">
																						<div class="form-group mb-2">
																							<label for="id">ID:</label> <input id="bannerID"
																								name="bannerID" class="form-control"
																								value="${banner.id}" />
																						</div>
																						<div class="form-group mx-sm-4 mb-2">
																							<label for="status">Trạng Thái:</label> <select
																								id="statusSelect" name="status_id"
																								class="form-control">
																								<c:forEach items="${list_Status}" var="status">
																									<option value="${status.id}" id="newStatusID"
																										data-status-id="${status.id} - ${status.status_name}">${status.id}
																										- ${status.status_name}</option>
																								</c:forEach>
																							</select>
																						</div>
																						<div class="form-group mx-sm-4 mb-2">
																							<button type="submit" class="btn btn-warning">Cập
																								Nhật</button>
																						</div>
																					</form:form>
																				</div>
																				<div class="modal-footer">
																					<button type="button" class="btn btn-danger"
																						data-dismiss="modal">Hủy</button>
																				</div>
																			</div>
																		</div>
																	</div>
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