/**
 * 
 */

// Lắng nghe sự kiện click trên nút "Xóa"
document.querySelectorAll('.btnDelete').forEach(function(button) {
	button.addEventListener('click', function() {
		// Lấy giá trị data-row-id từ nút "Xóa"
		var rowId = button.getAttribute('data-row-id');

		// Tìm hàng (row) có data-row-id tương ứng
		var row = document.querySelector('.banner-row[data-row-id="' + rowId + '"]');

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
		document.getElementById('bannerID').value = id;
	});
});

// Lắng nghe sự kiện khi người dùng nhập
document.getElementById("fullname").addEventListener("input", function() {
	var inputText = this.value;
	// Chia chuỗi thành các từ bằng dấu cách
	var words = inputText.split(" ");
	for (var i = 0; i < words.length; i++) {
		// Chuyển đổi chữ cái đầu của từng từ thành chữ hoa
		words[i] = words[i].charAt(0).toUpperCase() + words[i].slice(1).toLowerCase();
	}
	// Kết hợp các từ thành một chuỗi mới
	var capitalizedText = words.join(" ");
	// Gán giá trị mới vào input
	this.value = capitalizedText;
});

// Lắng nghe sự kiện khi người dùng nhập
document.getElementById("username").addEventListener("input", function() {
	var inputText = this.value;
	// Chia chuỗi thành các từ bằng dấu cách
	var words = inputText.split(" ");
	for (var i = 0; i < words.length; i++) {
		// Chuyển đổi chữ cái đầu của từng từ thành chữ hoa
		words[i] = words[i].charAt(0).toUpperCase() + words[i].slice(1).toLowerCase();
	}
	// Kết hợp các từ thành một chuỗi mới
	var capitalizedText = words.join(" ");
	// Gán giá trị mới vào input
	this.value = capitalizedText;
});