<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/views/common/include/admin/headIndex_Admin.jsp"%>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- Navbar -->
		<%@ include file="/views/common/include/admin/navbar.jsp"%>
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
	</div>
	<!--/.direct-chat -->
	<div class="main-header main">
		<div class="main-text">
			<h4>
				<div class="text-header">
					Xin Chào!<span class="text-gra"> Tên Tài Khoản</span>
				</div>
			</h4>
			<h4>
				<div class="text-body">Mời bạn sử dụng các chức năng của giao
					diện admin!</div>
			</h4>
		</div>
	</div>
	<%@ include file="/views/common/include/admin/footerIndex_Admin.jsp"%>
</body>

</html>