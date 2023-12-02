<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 500px;
        }

        h1 {
            text-align: center;
        }

        h3 {
            color: #4CAF50;
            text-align: center;
            font-size: 25px;
        }

        /* .product-info {
            margin-top: 20px;
           border: 1px solid;
        }

        .info-item {
            margin-bottom: 10px;
        } */

        .success-message {
            color: #4CAF50;
            font-weight: bold;
            margin-top: 20px;
            font-size: 15px;
            text-align: center;
        }

        table {
            border-collapse: collapse;
            width: 500px;
            background-color: #fff;
            border-radius: 8px;

        }

        tbody {
            border: 0.5px solid rgb(203, 203, 203);
            border-radius: 10px;

        }

        th,
        td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        td {
            background-color: #fff;
            padding: 15px;
            font-size: 15px;
        }

        tr {
            margin-top: 15px;
            margin-bottom: 15px;
        }

        i {
            margin-top: 20px;
            margin-left: 210px;
            display: block;
            color: #4CAF50;
            font-size: 80px;
            border: 5px solid #4CAF50;
            border-radius: 50px;
        }
    </style>
    <title>Payment Success</title>
</head>

<body>
    <div class="container">
        <h1>Thông tin thanh toán</h1>
        <hr>
        <i class='bx bx-check'></i>
        <h3>Thanh toán thành công</h3>

        <!-- <div class="product-info">
            <div class="info-item">
                <span class="text-right">Mã sản phẩm:</span>
                <span class="text-left">ABC123</span>
            </div>

            <div class="info-item">
                <span>Tên sản phẩm:</span>
                <span class="text-left">ABC123</span>
            </div>
            <div class="info-item">
                <span>Trạng thái:</span>
                <span class="text-left">ABC123</span>
            </div>
            <div class="info-item">
                <span>Phương thức thanh toán:</span>
                <span class="text-left">ABC123</span>
            </div>
            <div class="info-item">
                <span>Ngày thanh toán:</span>
                <span class="text-left">ABC123</span>
            </div>
            <div class="info-item">
                <span>Tổng tiền:</span>
                <span class="text-left">ABC123</span>
            </div>
        </div> -->
        <table>
            <tbody>
                <tr>
                    <td><strong>Mã sản phẩm</strong><span style="margin-left: 270px;">SKT1567892</span></td>
                </tr>
                  <tr>
                    <td><strong>Mã order phẩm</strong><span style="margin-left: 270px;">SKT1567892</span></td>
                </tr>
                <tr>
                    <td><strong>Tên sản phẩm</strong><span style="margin-left: 210px;">Áo Croptop xếp chéo</span></td>
                </tr>
                <tr>
                    <td><strong>Trạng thái</strong><span style="margin-left: 290px;">Đã thanh toán</span></td>
                </tr>
                <tr>
                    <td><strong>Phương thức thanh toán</strong><span style="margin-left: 170px;">${bank}</span>
                    </td>
                </tr>
                <tr>
                    <td><strong>Ngày thanh toán</strong><span style="margin-left: 260px;">${date}</span></td>
                </tr>
                <tr>
                    <td><strong style="color: red;">Tổng tiền</strong><span style="margin-left: 310px; color: red; font-weight: bold;">${amount}đ</span></td>
                </tr>
                <!-- Add more rows as needed -->
            </tbody>
        </table>

        <p class="success-message">Cảm ơn Quý Khách đã ủng hộ sản phẩm của cửa hàng</p>
    </div>
</body>

</html>