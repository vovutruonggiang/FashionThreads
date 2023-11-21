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
													<span for="" class="labelSearch_ID_Invoice">Tìm
														Kiếm:</span> <input id="order_dates" name="order_dates"
														type="date" class="inputSearch_ID_Invoice">
													<button formaction="/views/statistical/profit/searchByDate"
														class="ml-2 btn btn-info">Tìm</button>
												</div>
											</form>
										</div>
										<div class="custom-dropdown">
											<select id="timeSelector">
												<option value="">Chọn Thời Gian.......</option>
												<option value="last30days"
													data-href="/views/statistical/profit/getProfitLast30Days">30
													Ngày Trước</option>
												<option value="last15days"
													data-href="/views/statistical/profit/getProfitLast15Days">15
													ngày trước</option>
												<option value="last7days"
													data-href="/views/statistical/profit/getProfitLast7Days">7
													ngày trước</option>
												<option value="last1days"
													data-href="/views/statistical/profit/getProfitLast1Days">1
													ngày trước</option>
												<option value="last0days"
													data-href="/views/statistical/profit/getProfitToday">Hiện
													Tại</option>
											</select>
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
												<th>Ngày Đặt Hàng</th>
												<th>Ngày Thanh Toán</th>
												<th>Tên Sản Phẩm</th>
												<th>Giá Nhập</th>
												<th>Màu</th>
												<th>Size</th>
												<th>Số Lượng Nhập</th>
												<th>Giá Bán</th>
												<th>Số Lượng Bán</th>
												<th>Tổng Tiền Nhập Hàng</th>
												<th>Tổng Tiền Đã Bán</th>
												<th>Lợi Nhuận</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="profit" items="${profits}">
												<tr>
													<td>${profit[0]}</td>
													<td>${profit[1]}</td>
													<td>${profit[2]}</td>
													<td>${profit[3]}</td>
													<td class="importPrice">${profit[4]}</td>
													<td>${profit[5]}</td>
													<td>${profit[6]}</td>
													<td class="quantityImported">${profit[7]}</td>
													<td class="price">${profit[8]}</td>
													<td class="sellPrice">${profit[9]}</td>
													<td class="totalImport">${profit[4] * profit[7]}</td>
													<td class="totalSold">${profit[8] * profit[9]}</td>
													<td class="profit">${profit[8] * profit[9] - profit[4] * profit[7]}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div class="total_profit">
										<label for="">Tổng Lợi Nhuận:&nbsp;</label><label
											id="totalProfitLabel" class="text-danger"
											style="font-weight: normal;" for=""></label>
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
		<script>
			$(document)
					.ready(
							function() {
								updateProfit();

								function updateProfit() {
									var totalProfit = 0;

									$('tr')
											.each(
													function() {
														var importPriceText = $(
																this).find(
																'.importPrice')
																.text();
														var sellPriceText = $(
																this).find(
																'.price')
																.text();

														var importPrice = convertAndFormatToVND(importPriceText);
														var sellPrice = convertAndFormatToVND(sellPriceText);

														var profit = [
																parseFloat($(
																		this)
																		.find(
																				'.profit0')
																		.text()),
																parseFloat($(
																		this)
																		.find(
																				'.profit1')
																		.text()),
																parseFloat($(
																		this)
																		.find(
																				'.profit2')
																		.text()),
																parseFloat($(
																		this)
																		.find(
																				'.profit3')
																		.text()),
																parseFloat($(
																		this)
																		.find(
																				'.importPrice')
																		.text()),
																parseFloat($(
																		this)
																		.find(
																				'.quantityImported')
																		.text()),
																parseFloat($(
																		this)
																		.find(
																				'.price')
																		.text()),
																parseFloat($(
																		this)
																		.find(
																				'.sellPrice')
																		.text()) ];

														var totalImport = profit[4]
																* profit[5];
														var totalSold = profit[6]
																* profit[7];
														var profitValue = totalSold
																- totalImport;

														totalProfit += profitValue;

														$(this)
																.find(
																		'.importPrice')
																.text(
																		importPrice);
														$(this)
																.find('.price')
																.text(sellPrice);
														$(this)
																.find(
																		'.totalImport')
																.text(
																		formatCurrency(totalImport
																				.toFixed(2)));
														$(this)
																.find(
																		'.totalSold')
																.text(
																		formatCurrency(totalSold
																				.toFixed(2)));
														$(this)
																.find('.profit')
																.text(
																		formatCurrency(profitValue
																				.toFixed(2)));
													});
								}

								function convertAndFormatToVND(priceText) {
									try {
										console.log(
												"Giá trị trước chuyển đổi:",
												priceText);
										var numericValue = parseFloat(priceText
												.replace(/[^\d.-]/g, ''));
										console.log("Giá trị sau chuyển đổi:",
												numericValue);

										if (isNaN(numericValue)) {
											throw new Error(
													"Không phải là số hoặc giá trị không hợp lệ");
										}
										return formatCurrency(numericValue
												.toFixed(2));
									} catch (error) {
										console
												.error("Lỗi chuyển đổi giá trị: "
														+ error.message);
										return "Không hợp lệ";
									}
								}

								function formatCurrency(value) {
									try {
										if (!isNaN(value)) {
											// Xử lý chuyển đổi và định dạng giá trị thành VNĐ
											return parseFloat(value)
													.toLocaleString('vi-VN', {
														style : 'currency',
														currency : 'VND'
													});
										} else {
											throw new Error(
													"Giá trị không phải là số");
										}
									} catch (error) {
										console
												.error("Lỗi chuyển đổi giá trị: "
														+ error.message);
										return "Không hợp lệ";
									}
								}
							});
		</script>
		<script>
			// Lấy tất cả các ô trong cột tổng lợi nhuận
			var profitCells = document.querySelectorAll("#example1 .profit");

			// Khởi tạo biến tổng
			var totalProfit = 0;

			// Lặp qua mỗi ô tổng lợi nhuận và cộng giá trị vào biến tổng
			profitCells.forEach(function(cell) {
				// Chuyển đổi giá trị từ chuỗi sang số
				var cellValue = parseFloat(cell.textContent);

				// Kiểm tra xem giá trị có phải là số hay không
				if (!isNaN(cellValue)) {
					totalProfit += cellValue;
				}
			});

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

			// Hiển thị tổng lợi nhuận lên label sau khi định dạng thành tiền VNĐ
			document.getElementById("totalProfitLabel").innerText = formatCurrencyAndRemoveE(totalProfit);
		</script>
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
</body>

</html>