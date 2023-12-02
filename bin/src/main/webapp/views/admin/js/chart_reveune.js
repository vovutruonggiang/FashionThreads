document.addEventListener("DOMContentLoaded", function() {
	const ctx = document.getElementById("chart").getContext("2d");
	let chartType = "line"; // Mặc định là biểu đồ đường

	const chartOptions = {
		scales: {
			yAxes: [{
				ticks: {
					beginAtZero: true,
				},
			}],
		},
	};

	function updateChart() {
		fetch('/views/weeklyTotalAmounts')
			.then(response => response.json())
			.then(data => {
				const chartData = {
					labels: ["Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7", "Chủ Nhật"],
					datasets: [{
						label: "Doanh Thu",
						data: data,
						backgroundColor: "rgba(161, 198, 247, 1)",
						borderColor: "rgb(47, 128, 237)",
					}],
				};

				myChart.destroy(); // Xóa biểu đồ hiện tại
				myChart = new Chart(ctx, {
					type: chartType,
					data: chartData,
					options: chartOptions,
				});
			});
	}

	const myChart = new Chart(ctx, {
		type: chartType,
		options: chartOptions,
	});

	const chartTypeSelector = document.getElementById("chart-type");

	chartTypeSelector.addEventListener("change", function() {
		chartType = chartTypeSelector.value;
		updateChart(); // Cập nhật biểu đồ khi loại biểu đồ thay đổi
	});

	updateChart(); // Load biểu đồ ban đầu
});
