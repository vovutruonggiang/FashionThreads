<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
	<!-- Right navbar links -->
	<ul class="navbar-nav ml-auto">
		<!-- Messages Dropdown Menu -->
		<li class="nav-item dropdown"><a class="nav-link"
			data-toggle="dropdown" href="#"> <i class="fa fa-map-marker"
				aria-hidden="true"></i>
		</a>
			<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
				<div class="dropdown-divider"></div>
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.0809516977547!2d106.63518307486932!3d10.805111858664329!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752952c5882b2d%3A0x5bf4d130eeace221!2zNjIyLzggxJAuIEPhu5luZyBIw7JhLCBQaMaw4budbmcgMTMsIFTDom4gQsOsbmgsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCA3MDAwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1698688462081!5m2!1svi!2sus"
					width="400" height="400" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div></li>
		<!-- Notifications Dropdown Menu -->
		<li class="nav-item dropdown"><span class="nav-link"
			data-toggle="dropdown"> <i class="far fa-bell"></i> <span
				class="badge badge-warning navbar-badge" id="cartCountBadge">${cartCount}</span>
		</span>
			<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
				<span class="dropdown-item dropdown-header" id="cartCountHeader">Có
					${cartCount} Đơn Đặt Hàng</span>
				<div class="dropdown-divider"></div>
				<c:forEach items="${top5ProductNames}" var="top5ProductNames">
					<span href="#" class="dropdown-item">${top5ProductNames}<span
						id="lastUpdatedTime" class="float-right text-muted text-sm">3 phút trước</span></span>
				</c:forEach>
				<div class="dropdown-divider"></div>
				<a href="/views/order_Confirmation"
					class="dropdown-item dropdown-footer">Xem Tất Cả Các Đơn Hàng</a>
			</div></li>
		<li class="nav-item"><a class="nav-link" data-widget="fullscreen"
			href="#" role="button"> <i class="fas fa-expand-arrows-alt"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
			href="#" role="button"><i class="fas fa-bars"></i></a></li>
	</ul>
</nav>
