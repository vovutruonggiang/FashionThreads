<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Thống Kê Đánh Giá | Fashion Thread</title>
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
							<div class="card">
								<div class="card-body">
									<div class="image-container row">
										<div class="row">
											<form>
												<div class="card-body row">
													<span for="" class="labelSearch_ID_Invoice">Ngày
														Đánh Giá:</span> <input id="assessmentDate" name="assessmentDate"
														type="date" class="inputSearch_ID_Invoice">
													<button
														formaction="/views/statistical/evaluate/search_assessmentDate"
														class="ml-2 btn btn-info">Tìm</button>
												</div>
											</form>
											<form>
												<div class="card-body row">
													<span for="" class="labelSearch_ID_Invoice">Ngày Sửa
														Đổi:</span> <input id="modificationDate" name="modificationDate"
														type="date" class="inputSearch_ID_Invoice">
													<button
														formaction="/views/statistical/evaluate/search_modificationDate"
														class="ml-2 btn btn-info">Tìm</button>
												</div>
											</form>
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
							<div class="card">
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>ID</th>
												<th>Sản Phẩm</th>
												<th>Khách Hàng</th>
												<th>Ngày Đánh Giá</th>
												<th>Số Sao</th>
												<th>Ngày Sửa Đổi</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${list_Evaluate}" var="evaluate">
												<tr>
													<td>${evaluate.id}</td>
													<td>${evaluate.product_id.product_name}</td>
													<td>${evaluate.customer_id.fullname}</td>
													<td>${evaluate.assessment_date}</td>
													<td>${evaluate.star_rating}</td>
													<td>${evaluate.modification_date}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div class="total_profit">
										<label for="">Tổng Đánh Giá:&nbsp;</label><label
											id="totalProfitLabel" class="text-danger"
											style="font-weight: normal;">1</label>
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