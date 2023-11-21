/**
 * 
 */

var inputID = document.getElementById('inputID');

// Thêm sự kiện input
inputID.addEventListener('input', function() {
	// Chuyển giá trị nhập vào thành chữ hoa
	this.value = this.value.toUpperCase();
});

// Lắng nghe sự kiện click trên nút "Xóa"
document.querySelectorAll('.btnDelete').forEach(function(button) {
	button.addEventListener('click', function() {
		// Lấy giá trị data-row-id từ nút "Xóa"
		var rowId = button.getAttribute('data-row-id');

		// Tìm hàng (row) có data-row-id tương ứng
		var row = document.querySelector('.staff-row[data-row-id="' + rowId + '"]');

		// Lấy dữ liệu từ các thẻ <td> trong hàng đó
		var id = row.querySelector('td:nth-child(1)').textContent;
		var statusText = row.querySelector('.td-status').textContent;

		// Lấy phần tử <select>
		var statusSelect = document.getElementById('statusSelect');

		// Tìm và đặt phần tử <option> tương ứng trong phần tử <select> dựa trên giá trị văn bản (statusText)
		for (var i = 0; i < statusSelect.options.length; i++) {
			if (statusSelect.options[i].text === statusText) {
				statusSelect.selectedIndex = i;
				break;
			}
		}

		// Đặt giá trị vào các input trong form
		document.getElementById('staffID').value = id;
	});
});