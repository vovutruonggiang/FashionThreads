<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Biểu Đồ Doanh Thu Thống Kê | Fashion Thread</title>
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
							<div class="row">
								<div class="info-box">
									<span class="info-box-icon bg-info elevation-1"><i
										class="fab fa-product-hunt" aria-hidden="true"></i></span>

									<div class="info-box-content">
										<span class="info-box-text">Sản Phẩm Tồn Kho
											(${productCounts})</span> <span class="info-box-number"><a
											href="/views/statistical/inventory_product_statistics">Chi
												Tiết</a></span>
									</div>
									<!-- /.info-box-content -->
								</div>
								<div class="info-box mb-3">
									<span class="info-box-icon bg-danger elevation-1"><i
										class="fas fa-thumbs-up"></i></span>

									<div class="info-box-content">
										<span class="info-box-text">Đánh Giá (1)</span> <span
											class="info-box-number"><a href="">Chi Tiết</a></span>
									</div>
									<!-- /.info-box-content -->
								</div>
								<div class="clearfix hidden-md-up"></div>
								<div class="info-box mb-3">
									<span class="info-box-icon bg-success elevation-1"><i
										class="fas fa-shopping-cart"></i></span>

									<div class="info-box-content">
										<span class="info-box-text">Tổng Đơn Hàng (1)</span> <span
											class="info-box-number"><a href="">Chi Tiết</a></span>
									</div>
									<!-- /.info-box-content -->
								</div>
								<div class="info-box mb-3">
									<span class="info-box-icon bg-warning elevation-1"><i
										class="fas fa-users"></i></span>

									<div class="info-box-content">
										<span class="info-box-text">Thành Viên (1)</span> <span
											class="info-box-number"><a
											href="/views/manage_staff_fashion_threads">Chi Tiết</a></span>
									</div>
									<!-- /.info-box-content -->
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
							<div class="card">
								<!-- /.card-header -->
								<div class="card-body">
									<div class="col-md-12">
										<select class="form-select"
											aria-label="Default select example" id="chart-type">
											<option value="line">Biểu đồ đường</option>
											<option value="bar">Biểu đồ cột</option>
											<option value="doughnut">Biểu đồ tròn</option>
										</select>
										<div class="col-md-12">
											<canvas id="chart"></canvas>
										</div>
									</div>
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