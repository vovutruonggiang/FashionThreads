<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<footer class="main-footer">
	<strong>Copyright &copy; 2021-2023 <a href="">Admin Shop
			Fashion Threads</a>.
	</strong> All rights reserved.
	<div class="footer-align">
		<div class="footer-align-text">
			<img class="img-fluid" src="/views/admin/img/p.png" alt="">
		</div>
	</div>
</footer>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="<c:url value='/views/admin/plugins/jquery/jquery.min.js'/>"></script>
<!-- Bootstrap 4 -->
<script
	src="<c:url value='/views/admin/plugins/bootstrap/bootstrap.bundle.min.js'/>"></script>
<!-- DataTables  & Plugins -->
<script
	src="<c:url value='/views/admin/plugins/datatables/jquery.dataTables.min.js'/>"></script>
<script
	src="<c:url value='/views/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js'/>"></script>
<script
	src="<c:url value='/views/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js'/>"></script>
<script
	src="<c:url value='/views/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js'/>"></script>
<script
	src="<c:url value='/views/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js'/>"></script>
<script
	src="<c:url value='/views/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js'/>"></script>
<script src="<c:url value='/views/admin/jszip/jszip.min.js'/>"></script>
<script src="<c:url value='/views/admin/pdfmake/pdfmake.min.js'/>"></script>
<script src="<c:url value='/views/admin/pdfmake/vfs_fonts.js'/>"></script>
<script
	src="<c:url value='/views/admin/plugins/datatables-buttons/js/buttons.html5.min.js'/>"></script>
<script
	src="<c:url value='/views/admin/plugins/datatables-buttons/js/buttons.print.min.js'/>"></script>
<script
	src="<c:url value='/views/admin/plugins/datatables-buttons/js/buttons.colVis.min.js'/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value='/views/admin/dist/js/adminlte.js'/>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<c:url value='/views/admin/dist/js/demo.js'/>"></script>
<script src="<c:url value='/views/admin/js/uppercaseInput_IDStaff.js'/>"></script>
<script src="<c:url value='/views/admin/js/findStatusByID.js'/>"></script>
<script src="<c:url value='/views/admin/js/enableButton.js'/>"></script>
<script src="<c:url value='/views/admin/js/chart_reveune.js'/>"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
<!-- Page specific script -->
<script>
	$(function() {
		$("#example1").DataTable({
			"responsive" : true,
			"lengthChange" : false,
			"autoWidth" : false,
			"buttons" : [ "copy", "csv", "excel", "pdf", "print", "colvis" ]
		}).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
		$('#example2').DataTable({
			"paging" : true,
			"lengthChange" : false,
			"searching" : false,
			"ordering" : true,
			"info" : true,
			"autoWidth" : false,
			"responsive" : true,
		});
	});
</script>