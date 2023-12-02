<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Banner | Fashion Thread</title>
<%@ include file="/views/common/include/admin/manage/head_Manage.jsp"%>

</head>
<style>
.dropdown {
	display: inline-block;
	margin-right: 10px; /* Để tạo khoảng cách giữa các phần tử */
}

.dropdown-menu {
	width: 1350px;
}
</style>
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
				<c:forEach var="menuItem" items="${menuItems}">
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">${menuItem.name_category_menu}</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<div class="row">
								<c:forEach var="subItem"
									items="${menuItem.category_product_type}">
									<div class="col-2 mt-3 mb-2">
										<header style="margin-left: 25px;">
											<a href="">${subItem.name_category_product_type}</a>
										</header>
										<c:forEach var="subItem2" items="${subItem.category_product}">
											<a class="dropdown-item" href="#">${subItem2.name_category_product}</a>
										</c:forEach>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</c:forEach>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@ include
			file="/views/common/include/admin/manage/footer_Manage.jsp"%>
</body>

</html>