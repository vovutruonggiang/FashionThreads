<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Xác Nhận Đơn Hàng | Fashion Thread</title>
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
									<h3 class="card-title">Xác Nhận Đơn Hàng</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Giỏi Hàng_ID</th>
												<th>Khách Hàng</th>
												<th>Tổng Tiền</th>
												<th>Trạng Thái</th>
												<th>Chi Tiết</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${list_Cart}" var="cartData">
												<tr>
													<td>${cartData.id}</td>
													<td id="customer_id">${cartData.customer_id.fullname}</td>
													<td class="rounded-price">${cartData.price * cartData.quanlity}</td>
													<td><button class="btn btn-info">${cartData.status_id.status_name}</button></td>
													<td><a href="/views/order_Confirmation/viewCartByID"
														class="nav-link show-details-btn"> Xem Chi Tiết </a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div id="myModal" class="modal fade" role="dialog">
										<div class="modal-dialog modal-lg"
											style="display: flex; flex-direction: column;">
											<!-- Modal content ở đây -->
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
		<script>
        var detailsVisible = false;
        // Thêm sự kiện click cho nút "Xem Chi Tiết"
        $(".show-details-btn").click(function (e) {
            e.preventDefault();
            if (detailsVisible) {
// Nếu dòng chi tiết đã hiển thị, ẩn nó đi
                $(this).closest("tr").next().remove();
                detailsVisible = false;
            } else {
                // Nếu dòng chi tiết chưa hiển thị, tạo dòng mới và thêm form vào đó
                var newRow = $("<tr>");
                newRow.html(`
                    <td colspan="5">
                		<c:forEach items="${cartData}" var="cartItem">
                        <section class="Eb+POp single-column" role="list">
                          <div class="VPZ9zs" role="listitem">
                            <h4 class="a11y-hidden">cart_accessibility_item</h4>
                            <div class="zoXdNN">
                              <div class="eUrDQm">
                                <div class="LAQKxn"><a
                                    title="Áo Sơ Mi Kẻ Sọc Xám Dài Tay Thêu Chữ Chuột Trắng Màu Đen Chất Cotton Lụa 100% Cao Cấp"
                                    href="/Áo-Sơ-Mi-Kẻ-Sọc-Xám-Dài-Tay-Thêu-Chữ-Chuột-Trắng-Màu-Đen-Chất-Cotton-Lụa-100-Cao-Cấp-i.872616694.23047100077?xptdk=f2546555-010f-4a27-8f98-a7a02db94a2e"><img
                                        class="WanNdG"
                                        src="https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lirhqrrgbw7mdf"
                                        alt="product image"></a>
                                      <div class="TyNN8t"><a class="JB57cn"
                                        title="Áo Sơ Mi Kẻ Sọc Xám Dài Tay Thêu Chữ Chuột Trắng Màu Đen Chất Cotton Lụa 100% Cao Cấp"
                                        href="/Áo-Sơ-Mi-Kẻ-Sọc-Xám-Dài-Tay-Thêu-Chữ-Chuột-Trắng-Màu-Đen-Chất-Cotton-Lụa-100-Cao-Cấp-i.872616694.23047100077?xptdk=f2546555-010f-4a27-8f98-a7a02db94a2e">Áo
                                        Sơ Mi Kẻ Sọc Xám Dài Tay Thêu Chữ Chuột Trắng Màu Đen Chất Cotton Lụa 100% Cao
                                        Cấp</a><div class="dcPz7Y"><span>Màu&nbsp;</span><span>Xám&nbsp;<span><span>M<span></div>
                                        <div class="QRuJU-"></div>
                                      </div>
                                </div>
                              </div>
                              <div class="G7E4B7">
                                <div><span class="M-AAFK">${cartItem[4]}</span></div>
                              </div>
                              <div class="MRh9G6">
                                <div class="_8Xhu5+ shopee-input-quantity"><button class="EOdsa-" aria-label="Decrease"><svg
                                        enable-background="new 0 0 10 10" viewBox="0 0 10 10" x="0" y="0"
                                        class="shopee-svg-icon">
                                        <polygon points="4.5 4.5 3.5 4.5 0 4.5 0 5.5 3.5 5.5 4.5 5.5 10 5.5 10 4.5">
                                        </polygon>
</svg></button><input class="EOdsa- v3H4Zf" type="text" role="spinbutton"
                                    aria-valuenow="1" value="1"><button class="EOdsa-" aria-label="Increase"><svg
                                        enable-background="new 0 0 10 10" viewBox="0 0 10 10" x="0" y="0"
                                        class="shopee-svg-icon icon-plus-sign">
                                        <polygon
                                            points="10 4.5 5.5 4.5 5.5 0 4.5 0 4.5 4.5 0 4.5 0 5.5 4.5 5.5 4.5 10 5.5 10 5.5 5.5 10 5.5">
                                        </polygon>
                                    </svg></button>
                                  </div>
                              </div>
                              <div class="ofQLuG">
                                <span>₫140.000</span>
                                <span class="a11y-hidden">Total price: ₫140.000</span>
                              </div>
                           </div>
                          </div>
                        </section>
                        </c:forEach>
                        <div class="dropdown-divider"></div>
                    </td>
                `);
                // Chèn dòng mới sau dòng được nhấn
                $(this).closest("tr").after(newRow);
                detailsVisible = true;
            }
        });
    </script>
		<script>
    var priceElements = document.querySelectorAll(".rounded-price");
    priceElements.forEach(function(element) {
        var price = parseFloat(element.innerText);
        // Lấy đến chữ số thứ hai sau dấu thập phân
        var roundedPrice = Math.round(price * 100) / 100;
        element.innerText = roundedPrice.toFixed(2);
    });
</script>
</body>
</html>