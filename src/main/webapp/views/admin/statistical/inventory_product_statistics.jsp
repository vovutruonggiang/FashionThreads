<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Thống Kê Sản Phẩm Tồn Kho | Fashion Thread</title>
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
							<div class="card"></div>
							<!-- /.card -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Thống Kê Sản Phẩm Tồn Kho</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Menu danh mục</th>
												<th>Danh mục Loại sản phẩm</th>
												<th>Danh mục sản phẩm</th>
												<th>Tên sản phẩm</th>
												<th>Tên thương hiệu</th>
												<th>Tên màu</th>
												<th>Tên kích thước</th>
												<th>Số lượng</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="row" items="${inventoryProductStatistics}">
												<tr>
													<td>${row[0]}</td>
													<td>${row[1]}</td>
													<td>${row[2]}</td>
													<td>${row[3]}</td>
													<td>${row[4]}</td>
													<td>${row[5]}</td>
													<td>${row[6]}</td>
													<td>${row[7]}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div class="total_profit">
										<label for="">Tổng Sản Phẩm Có Số Lượng > 0: &nbsp;</label> <label
											for="" class="text-danger">${productCount} Sản Phẩm</label>
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
		<%@ include
			file="/views/common/include/admin/manage/footer_Manage.jsp"%>
</body>

</html>