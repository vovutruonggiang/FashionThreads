<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
<body>
<%-- 	<%@include file="/views/user/layout/header.jsp"%> --%>

	<div class="container">

		<h2 class="breadcrumb text-center">
			<small> <a href="/cart">Shopping Cart</a> <span
				class="glyphicon glyphicon-menu-right"></span> <mark>
					<b>Checkout Details</b>
				</mark>
			</small>
		</h2>
		<div class="row">
			<div class="col-xs-8">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3>Thông Tin Thanh Toán</h3>
					</div>
					<div class="panel-body">
						<form:form action="/checkout/save" method="POST"
							modelAttribute="invoice">
							<div hidden=""></div>

							<div class="form-group">
								<label for="email">Họ và tên * </label> <input
									path="accounts"  class="form-control form-control-large"
									id="email" readonly="true" value="${username.staff.fullname}" />
							</div>
							
							<div class="form-group">
										<label for="email">Địa chỉ Email * </label> <input
											path="accounts" class="form-control form-control-large"
											id="email" readonly="true" value="${username.staff.email}" />
									</div>
							
							<div class="form-group">
								<label for="name">Phương thức thanh toán *</label>
								<!-- ID Tai khoan  -->
								<form:select path="payment_methods">
									<form:option value="tiền mặt">tiền mặt</form:option>
									<form:option value="thẻ">Thẻ</form:option>
								</form:select>

							</div>
							<div class="row">
								<div class="col-xs-6">
									<div class="form-group">
										<label for="phone">Số Điện Thoại *(bắt buộc)</label>
										 <input
											path="accounts" class="form-control form-control-large"
											id="text" readonly="true" value="${username.staff.phone_number}" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="state" class="control-label">Địa chỉ giao
									hàng * (bắt buộc)</label>
								<form:textarea type="text" class="form-control" id="state"
									path="delivery_address"
									placeholder="Ví dụ: Cầu vượt Quang Trung 1Quận 12, Thành phố Hồ Chí Minh" />
							</div>
 
							<div class="well">
								<button type="submit" class="btn btn-lg btn-success btn-block">Đặt
									Hàng</button>
							</div>

						</form:form>



					</div>
					<div class="col-xs-4">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3>Đơn Hàng Của Bạn</h3>
							</div>
							<div class="panel-body" style="width: 1000px">

								<table class="table col-sm-3" style="height: 500px">
									<thead>
										<tr>

											<th hidden="" scope="col">ID</th>
											<th scope="col" style="width: 300px">Tên sản phẩm</th>
											<th scope="col" style="width: 300px">Giá sản phẩm</th>
											<th scope="col" style="width: 300px">Số lượng sản phẩm</th>
											<th scope="col" style="width: 300px">Giảm giá</th>
											<th scope="col" style="width: 300px">Hình sản phẩm</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${cart}" var="c">

											<tr>
												<td style="width: 600px;">
													<div class="row">
														<div class="col-3">
															<img src="/images/${c.product.image}" alt=""
																style="width: 100%;">
														</div>
														<div class="col-9">
															<p style="font-weight: 500;">${c.product.product_name}</p>
															<span>Màu sắc: ${c.color} </span><span
																style="margin-left: 5%;">Size: ${c.size} </span>
														</div>
													</div>

												</td>
												<td><input class="form-control" name="soluong"
													id="soluong" style="width: 80px;" type="number" min="1"
													value="${c.quantity}"></td>



												<!-- Đếm số lượng sản phẩm trong giỏ hàng -->



												<td>${(c.price * c.quantity).intValue() }</td>


												<td><strong> </strong></td>
												<td><a href="/views/cart/delete/${c.product.id}"
													style="text-decoration: none; color: red;" href=""><i
														class="bi bi-trash3"></i></a></td>
											</tr>
										</c:forEach>

										<tr>
											<td></td>
											<td></td>

										</tr>
									</tbody>

									<tfoot>
										<tr>
											<td>Tổng Sản Phẩm:</td>
											<td></td>
											<td><b>${countQuantity}</b></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td><h4>Tổng Tiền</h4></td>
											<td></td>
											<td align="right" style="color: red"><h4>${countTotalProduct}
													VNĐ</h4></td>
											<td></td>
											<td></td>
										</tr>
									</tfoot>
								</table>
								<hr>
								<b>Trả tiền mặt khi nhận hàng (Hóa đơn chưa kèm phí ship.
									Quý khách vui lòng thanh toán thêm phí ship khi nhận hàng)</b>
								<hr>
							</div>
						</div>
					</div>
				</div>
			</div>




			<%@include file="/views/user/layout/footer.jsp"%>
</body>
</html>