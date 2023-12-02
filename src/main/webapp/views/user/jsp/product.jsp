<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fashion Threads</title>
<link rel="stylesheet" href="/views/user/css/product.css">
<link rel="icon" href="/views/image/Fashion-small.png" type=""
	sizes="16x16">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/style_02.css?v=14" />
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/responsive.css" />
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/style.css?v=11" />
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/style.css?v=12" />
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/custom.css?v=3" />
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/product-detail-temp.css">
<link rel="stylesheet" type="text/css"
	href="https://pubcdn.ivymoda.com/ivy2/js/fancybox/jquery.fancybox.min.css" />
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/fix.css?v=5" />
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/fixed.css?v=23" />
<link rel="stylesheet"
	href="https://pubcdn.ivymoda.com/ivy2/css/new_style/pvh.css?v=7" />

<script src="https://pubcdn.ivymoda.com/ivy2/js/jquery.min.js"
	type="text/javascript"></script>
<!-- jQuery UI -->
<!-- <script src="https://pubcdn.ivymoda.com/ivy2/js/jquery-ui.min.js"></script> -->

<script src="https://pubcdn.ivymoda.com/ivy2/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="https://pubcdn.ivymoda.com/ivy2/js/affix.js"
	type="text/javascript"></script>
<script src="https://pubcdn.ivymoda.com/ivy2/js/js.cookie.js"
	type="text/javascript"></script>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/views/user/layout/header.jsp"></jsp:include>
	<main class="site-main">
		<div class="container" style="width: 1380px;">
			<form method="get" action="">
				<div class="row">
					<div class="container" style="width: 1420px;">
						<div class="breadcrumb-products">
							<ol class="breadcrumb__list">
								<li class="breadcrumb__item"><a class="breadcrumb__link"
									href="">Trang chủ</a></li>
								<li class="breadcrumb__item"><a href=""
									class="breadcrumb__link" title="ÁO">ÁO</a></li>
								<li class="breadcrumb__item"><a
									href="/views/user/jsp/index.jsp" class="breadcrumb__link"
									title="Áo kiểu">Áo kiểu</a></li>
							</ol>
						</div>
						<section class="section-list-products">
							<div class="box-products d-flex">
								<div class="sidebar-prod sidebar-prod-pc">
									<div class="filter-by-side">
										<div class="accordion" id="accordionExample">
											<div class="headingOne-All">
												<div class="" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-left" type="button"
															data-toggle="collapse" data-target="#collapseOne"
															aria-expanded="false" aria-controls="collapseOne">
															Size<i class='bx bx-chevron-down'></i>
														</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse"
													aria-labelledby="headingOne" data-parent="">
													<div class="card-body">
														<label> <input type="checkbox"
															name="" value=""><span>S</span>
														</label> <label> <input type="checkbox"
															name="clothing-type" value=""><span>M</span>
														</label> <label> <input type="checkbox"
															name="clothing-type" value=""><span>L</span>
														</label> <label> <input type="checkbox"
															name="clothing-type" value=""><span>XL</span>
														</label> <label> <input type="checkbox"
															name="clothing-type" value=""><span>XXL</span>
														</label>
													</div>
												</div>
											</div>
											<div class="headingTwo-All">
												<div id="headingTwo">
													<h2 class="mb-0">
														<button class="btn text-left collapsed" type="button"
															data-toggle="collapse" data-target="#collapseTwo"
															aria-expanded="false" aria-controls="collapseTwo">
															Màu sắc<i class='bx bx-chevron-down'></i>
														</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo" data-parent="">
													<div class="card-body">
														<div class="container-color">
															<div class="custom-checkbox">
																<input type="checkbox" id="checkbox1"> <label
																	for="checkbox1">
																	<div class="checkbox-container">
																		<img src="/views/image/color/006 (1).png"
																			alt="Image 1">
																	</div>
																</label>
															</div>

															<div class="custom-checkbox">
																<input type="checkbox" id="checkbox2"> <label
																	for="checkbox2">
																	<div class="checkbox-container">
																		<img src="/views/image/color/003 (1).png"
																			alt="Image 2">
																	</div>
																</label>
															</div>
															<div class="custom-checkbox">
																<input type="checkbox" id="checkbox3"> <label
																	for="checkbox3">
																	<div class="checkbox-container">
																		<img src="/views/image/color/009 (1).png"
																			alt="Image 2">
																	</div>
																</label>
															</div>
															<div class="custom-checkbox">
																<input type="checkbox" id="checkbox4"> <label
																	for="checkbox4">
																	<div class="checkbox-container">
																		<img src="/views/image/color/010 (1).png"
																			alt="Image 2">
																	</div>
																</label>
															</div>
															<div class="custom-checkbox">
																<input type="checkbox" id="checkbox5"> <label
																	for="checkbox5">
																	<div class="checkbox-container">
																		<img src="/views/image/color/013 (1).png"
																			alt="Image 2">
																	</div>
																</label>
															</div>
															<div class="custom-checkbox">
																<input type="checkbox" id="checkbox6"> <label
																	for="checkbox6">
																	<div class="checkbox-container">
																		<img src="/views/image/color/020 (1).png"
																			alt="Image 2">
																	</div>
																</label>
															</div>
															<div class="custom-checkbox">
																<input type="checkbox" id="checkbox7"> <label
																	for="checkbox7">
																	<div class="checkbox-container">
																		<img src="/views/image/color/049 (1).png"
																			alt="Image 2">
																	</div>
																</label>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="headingThree-All">
												<div id="headingThree">
													<h2 class="mb-0">
														<button class="btn text-left collapsed" type="button"
															data-toggle="collapse" data-target="#collapseThree"
															aria-expanded="false" aria-controls="collapseThree">
															Mức giá<i class='bx bx-chevron-down'></i>
														</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree" data-parent="">
													<div class="card-body">
														<div class="container-range">
															<div class="row">
																<div class="col-sm-12">
																	<div id="slider-range"></div>
																</div>
															</div>
															<div class="row slider-labels">
																<div class="col-xs-6 caption">
																	<span id="slider-range-value1"></span>
																</div>
																<div class="col-xs-6 text-right caption">
																	<span id="slider-range-value2"></span>
																</div>
															</div>
															<div class="row">
																<div class="col-sm-12">
																	<form>
																		<input type="hidden" name="min-value" value="">
																		<input type="hidden" name="max-value" value="">
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="headingFour-All">
												<div id="headingFour">
													<h2 class="mb-0">
														<button class="btn text-left collapsed" type="button"
															data-toggle="collapse" data-target="#collapseFour"
															aria-expanded="false" aria-controls="collapseFour">
															Mức chiết khấu<i class='bx bx-chevron-down'></i>
														</button>
													</h2>
												</div>
												<div id="collapseFour" class="collapse"
													aria-labelledby="headingFour" data-parent="">
													<div class="card-body">
														<div class="form-check">
															<input class="form-check-input" type="radio"
																name="flexRadioDefault" id="flexRadioDefault1">
															<label class="form-check-label" for="flexRadioDefault1">Dưới
																30%</label>
														</div>
														<div class="form-check">
															<input class="form-check-input" type="radio"
																name="flexRadioDefault" id="flexRadioDefault2" checked>
															<label class="form-check-label" for="flexRadioDefault2">
																Từ 30% - 50%</label>
														</div>
														<div class="form-check">
															<input class="form-check-input" type="radio"
																name="flexRadioDefault" id="flexRadioDefault2" checked>
															<label class="form-check-label" for="flexRadioDefault2">Từ
																50% - 70%</label>
														</div>
														<div class="form-check">
															<input class="form-check-input" type="radio"
																name="flexRadioDefault" id="flexRadioDefault2" checked>
															<label class="form-check-label" for="flexRadioDefault2">Từ
																70%</label>
														</div>
														<div class="form-check">
															<input class="form-check-input" type="radio"
																name="flexRadioDefault" id="flexRadioDefault2" checked>
															<label class="form-check-label" for="flexRadioDefault2">Giá
																đặt biệt</label>
														</div>
													</div>
												</div>
												<div class="col-md-12 p-0" id="button-collapse">
													<div class="row m-0 p-0">
														<div class="col-6" id="button-collapse-one">
															<button type="button" class="btn">Bỏ lọc</button>
														</div>
														<div class="col-6" id="button-collapse-two">
															<button formaction="/locsanpham" class="btn">Lọc</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="main-prod">
									<div class="top-main-prod">
										<h1 class="sub-title-main">Áo kiểu nữ</h1>
										<!-- <div class="dropdown">
											<button class="btn" type="button" id="dropdownMenuButton"
												data-toggle="dropdown" aria-haspopup="true" aria-expanded="">
												<i class='bx bxs-chevron-down'></i>
											</button>

											<div class="dropdown-menu mt-2"
												aria-labelledby="dropdownMenuButton">
												<a class="dropdown-item" href="/product">Mặc định</a> <a
													class="dropdown-item" href="/sap-xep-cao-thap/product">Giá:
													cao đến thấp</a> <a class="dropdown-item"
													href="/sap-xep-thap-cao/product">Giá: thấp đến cao</a>
											</div>
										</div> -->
										<div class="select-menu">
											<div class="select-btn">
												<span class="sBtn-text">Mặc định</span> <i
													class="bx bx-chevron-down"></i>
											</div>

											<ul class="options">
												<li class="option"><a href="/product"><span
														class="option-text">Mặc định</span></a></li>
												<li class="option"><a
													href="/sap-xep/product?sortType=caothap"><span
														class="option-text">Giá: cao đến thấp</span></a></li>
												<li class="option"><a
													href="/sap-xep/product?sortType=thapcao"><span
														class="option-text">Giá: thấp đến cao</span></a></li>
											</ul>
										</div>

										<div class="sub-main-prod">
											<div class="list-products list-products-cat d-flex">

												<c:forEach items="${list}" var="product">
													<div class="item-cat-product">

														<div class="product">
															<div class="thumb-product">
																<a href=""><img src="/views/image/${product.image}"
																	class="lazy" /></a>
															</div>
															<div class="info-product">
																<div class="list-color">
																	<ul>
																		<li class="checked"><a href=""
																			class="color-picker">
																				<div class="color-checkbox">
																					<input type="checkbox" id=""> <label
																						for="checkbox9">
																						<div class="checkbox">
																							<img src="/views/image/color/006 (2).png"
																								alt="Image 2">
																						</div>
																					</label>
																				</div>
																		</a></li>
																		<li class="checked"><a href=""
																			class="color-picker">
																				<div class="color-checkbox">
																					<input type="checkbox" id=""> <label
																						for="checkbox10">
																						<div class="checkbox">
																							<img src="/views/image/color/000 (1).png"
																								alt="Image 2">
																						</div>
																					</label>
																				</div>
																		</a></li>
																		<li class="checked"><a href=""
																			class="color-picker">
																				<div class="color-checkbox">
																					<input type="checkbox" id=""> <label
																						for="checkbox11">
																						<div class="checkbox">
																							<img src="/views/image/color/012 (1).png"
																								alt="Image 2">
																						</div>
																					</label>
																				</div>
																		</a></li>
																	</ul>
																	<div class="favourite">
																		<i class="icon-ic_heart"></i>
																	</div>
																</div>
																<h3 class="title-product">
																	<a href="">${product.product_name}</a>
																</h3>
																<div cl	ass="price-product">
																	<ins>
																		<span><strong>${product.price}</strong></span>
																	</ins>
																</div>
															</div>
															<div class="add-to-cart">
																<a href=""><i class="icon-ic_shopping-bag"></i></a>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>

									<%-- <ul class="list-inline-pagination" id="phantrang">
										<li><a href="<%= request.getContextPath() %>?pageNo=${currentPage-1}"><<</a></li>
										<c:forEach var="i" begin="1" end="${totalPage}">
											<li class="${currentPage == i ? 'active' : ''}"><a
												href="<%= request.getContextPath() %>?pageNo=${i}"><c:out
														value="${i}" /></a></li>
										</c:forEach>
										<li><a href="<%= request.getContextPath() %>?pageNo=${currentPage+1}">>></a></li>
									</ul> --%>

									<!-- JSP -->
									<ul class="list-inline-pagination" id="phantrang">
										<%
										int currentPage = (request.getParameter("pageNo") != null) ? Integer.parseInt(request.getParameter("pageNo")) : 1;
										int totalPage = 7;
										%>
										<%
										if (currentPage > 1) {
										%>
										<li><a
											href="<%= request.getContextPath() %>?pageNo=${currentPage-1}"><<</a></li>
										<%
										}
										%>
										<c:forEach var="i" begin="1" end="${totalPage}">
											<li class="${currentPage == i ? 'active' : ''}"><a
												href="<%= request.getContextPath() %>?pageNo=${i}"> <c:out
														value="${i}" />
											</a></li>
										</c:forEach>

										<%
										if (currentPage < totalPage) {
										%>
										<li><a
											href="<%= request.getContextPath() %>?pageNo=${currentPage+1}">>></a></li>
										<%
										}
										%>
									</ul>

								</div>
							</div>
					</div>
				</div>
				</section>
		</div>
		</div>
		</form>
		</div>
	</main>
	<jsp:include page="/views/user/layout/footer.jsp"></jsp:include>
</body>
<script src="/views/user/js/product.js"></script>
<script src="/views/user/js/product2.js"></script>
</html>