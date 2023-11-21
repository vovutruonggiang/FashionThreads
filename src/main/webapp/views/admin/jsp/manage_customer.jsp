<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Khách Hàng | Fashion Thread</title>
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
									<a href="/views/manage_staff_fashion_threads">Nhân Viên </a>
								</div>
								<div class="div_tabs2">
									<a href="/views/manage_customer_fashion_threads">Khách Hàng
									</a>
								</div>
							</div>
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Danh Sách Khách Hàng</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>ID</th>
												<th>Họ và Tên</th>
												<th>Số Điện Thoại</th>
												<th>Giới Tính</th>
												<th>Ngày Sinh</th>
												<th>Email</th>
												<th>Địa Chỉ</th>
												<th>Trạng Thái</th>
												<th>Hành Động</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${list_Customer}" var="account">
												<tr class="customer-row" data-row-id="${account.id}">
													<td>${account.id}</td>
													<td>${account.fullname}</td>
													<td>${account.phone_number}</td>
													<td>${account.sex ? 'Nam' : 'Nữ'}</td>
													<td>${account.years}</td>
													<td>${account.email}</td>
													<td>${account.address}</td>
													<td class="td-status">${account.status_id.status_name}</td>
													<td>
														<div class="drop-left">
															<button class="btnDelete" type="button"
																data-toggle="modal" data-target="#myModal"
																data-row-id="${account.id}">Xóa</button>
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
																				action="/views/manage_customer_fashion_threads/updateStatusCustomer"
																				method="post">
																				<div class="form-group mb-2">
																					<label for="id">ID:</label> <input id="customerID"
																						name="customerID" class="form-control"
																						value="${account.id}" />
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
</body>

</html>