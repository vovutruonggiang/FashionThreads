<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Doanh Thu Thống Kê | Fashion Thread</title>
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
								<div class="card-body">
									<div class="image-container row">
										<div>
											<form>
												<div class="card-body row">
													<span class="labelSearch_ID_Invoice">Tìm Kiếm:</span> <input
														id="ngayMua" name="ngayMua" type="date"
														class="inputSearch_ID_Invoice">
													<button
														formaction="/views/statistical/revenue_statistics/searchByDate"
														class="ml-2 btn btn-info">Tìm</button>
												</div>
											</form>
										</div>
										<div class="custom-dropdown">
											<select id="timeSelector">
												<option value="">Chọn Thời Gian.......</option>
												<option value="last30days"
													data-href="/views/statistical/revenue_statistics/last30days">30
													Ngày Trước</option>
												<option value="last15days"
													data-href="/views/statistical/revenue_statistics/last15days">15
													ngày trước</option>
												<option value="last7days"
													data-href="/views/statistical/revenue_statistics/last7days">7
													ngày trước</option>
												<option value="last1days"
													data-href="/views/statistical/revenue_statistics/last1days">1
													ngày trước</option>
												<option value="last0days"
													data-href="/views/statistical/revenue_statistics/today">Hiện
													Tại</option>
											</select>
										</div>
										<div class="revenue">
											<a class="revenue_icons"
												href="/views/statistical/chart_revenue_statistics"><i
												class="fa fa-arrow-right" aria-hidden="true"></i></a>
										</div>
									</div>
									<!-- /.card-body -->
								</div>
								<!-- /.card -->
							</div>
							<div class="card">
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Hóa Đơn</th>
												<th>Khuyến Mãi</th>
												<th>Địa Chỉ Giao Hàng</th>
												<th>Ngày Đặt Hàng</th>
												<th>Phương Thức Thanh Toán</th>
												<th>Ngày Thanh Toán</th>
												<th>Tổng Tiền</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${invoiceDetails}" var="invoice">
												<tr>
													<td>${invoice.id}</td>
													<td>${invoice.discount_id.discount_name}</td>
													<td>${invoice.delivery_address}</td>
													<td>${invoice.order_date}</td>
													<td>${invoice.payment_methods}</td>
													<td>${invoice.date_of_payment}</td>
													<td>${invoice.total_amount}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div class="total_profit">
										<label>Tổng Doanh Thu: &nbsp;</label> <label
											class="text-danger" id="formattedAmountLabel"
											style="font-weight: normal;"></label>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- /.col -->
					</div>
				</div>
				<!-- /.row -->
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<%@ include
			file="/views/common/include/admin/manage/footer_Manage.jsp"%>
		<script>
			$(document).ready(function() {
				$("#timeSelector").change(function() {
					var selectedValue = $(this).val();
					var selectedOption = $(this).find('option:selected');
					var link = selectedOption.data('href');

					if (link) {
						window.location.href = link;
					}
				});
			});
		</script>
		<script>
			// Hàm để định dạng số tiền theo định dạng tiền tệ VNĐ và loại bỏ chữ E
			function formatCurrencyAndRemoveE(amount) {
				// Sử dụng Intl.NumberFormat để định dạng số tiền thành VNĐ
				const formattedAmount = new Intl.NumberFormat('vi-VN', {
					style : 'currency',
					currency : 'VND'
				}).format(amount);

				// Chuyển đổi số thành chuỗi và loại bỏ ký tự E
				const result = formattedAmount.replace(/[Ee]/g, '');

				return result;
			}

			// Lấy số tiền từ server-side (trong trường hợp này là ${totalAmountSum})
			let totalAmount = "${totalAmountSum}";

			// Gọi hàm định dạng và loại bỏ chữ E, sau đó hiển thị số tiền
			const formattedAmount = formatCurrencyAndRemoveE(totalAmount);
			document.getElementById("formattedAmountLabel").innerText += formattedAmount;
		</script>
</body>

</html>