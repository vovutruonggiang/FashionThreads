<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Hóa Đơn | Fashion Thread</title>
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
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Danh Sách Hóa Đơn</h3>
								</div>
								<form action="/views/manage_invoice_fashion_threads/search"
									method="post">
									<div class="card-body row">
										<span for="" class="labelSearch_ID_Invoice">Tìm Kiếm
											Ngày Mua:</span> <input id="ngayMua" name="ngayMua" type="date"
											class="inputSearch_ID_Invoice">
										<button class="ml-2 btn btn-info">Search</button>
									</div>
								</form>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Hóa Đơn</th>
												<th>Khách Hàng</th>
												<th>Nhân Viên</th>
												<th>Khuyến Mãi</th>
												<th>Địa Chỉ Giao Hàng</th>
												<th>Ngày Đặt Hàng</th>
												<th>Phương Thức Thanh Toán</th>
												<th>Ngày Thanh Toán</th>
												<th>Tổng Tiền</th>
												<th>Hành Động</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${invoice}" var="invoice">
												<tr>
													<td>${invoice.id}</td>
													<td>${invoice.customer_id.fullname}</td>
													<td>${invoice.staff_id.fullname}</td>
													<td>${invoice.discount_id.discount_name}</td>
													<td>${invoice.delivery_address}</td>
													<td>${invoice.order_date}</td>
													<td>${invoice.payment_methods}</td>
													<td>${invoice.date_of_payment}</td>
													<td>${invoice.total_amount}</td>
													<td><a
														href="/views/manage_detailed_invoice_fashion_threads/${invoice.id}">Xem
															Chi Tiết</a></td>
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