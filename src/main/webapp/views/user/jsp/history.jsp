<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/trangchu.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/Temple/css/infor.css">
</head>

<body>
    <header>
        <div class="row">
            <div class="col-5">
                <div>
                    <nav class="navbar navbar-expand-lg">
                        <div class="container-fluid" style="padding-left: 50px;padding-top: 10px;">
                            <div class="collapse navbar-collapse" id="navbarNav">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">NAM</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">NỮ</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" style="width: 70px;" href="#">TRẺ EM</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" style="width: 90px;" href="#">GIẢM GIÁ</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">CUỘC SỐNG</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" style="width: 140px;" href="#">VỀ CHÚNG TÔI</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="col-3" id="logo">
                <img src="../image/iconft.jpg" style="padding-top: 20px; width: 200px;" alt="">
            </div>
            <div class="col-4" id="search">
                <div id="w-left-50">
                    <form>
                        <input type="search" placeholder="TÌM KIẾM SẢN PHẨM">
                        <button type="submit">Search</button>
                    </form>
                </div>
                <div id="w-right-50">
                    <a href="#"><i class="bi bi-globe-americas"></i></a>
                    <a href="#"><i class="bi bi-person"></i></a>
                    <a href="#"><i class="bi bi-bag"></i></a>
                </div>
            </div>
        </div>
    </header>
    <div id="main">
        <div class="container">
            <div>
                <ol style="display: flex; padding: 10px; list-style: none; align-items: center;">
                    <li style="padding: 10px;">
                        <a href="" style="text-decoration: none; color: black;">Trang chủ</a>
                    </li>
                    <li style="padding: 1px;">
                        <a href="" style="text-decoration: none; color: black;">></a>
                    </li>
                    <li style="padding: 10px;">
                        <a href="" style="text-decoration: none; color: black;">Tài khoản của tôi</a>
                    </li>
                </ol>
            </div>
            <div class="mt-40">
                <div class="row">
                    <div class="col-lg-4 col-xl-auto">
                        <div class="oder-sidemenu"
                            style="max-width: 270px; width: 100%; padding: 32px; border: 1px solid #e7e8e9; border-radius: 32px 0px;">
                            <div class="oder-sidemenu-menu-user"
                                style="align-items: center; display: flex; padding-bottom: 24px;">
                                <div class="oder-sidemenu-menu-avatar"
                                    style="width: 32px; height: 32px; border-radius: 50%; overflow: hidden;">
                                    <img src="/image/user-avatar-placeholder.png" alt=""
                                        style="border: none; max-width: 100%; height: auto;">
                                </div>
                                <div class="oder-sidemenu-menu-name" style="padding-left: 12px;">
                                    <p style="font-weight: 600; font-size: 16px; line-height: 24px; margin-bottom: 0;">
                                        Lê Vĩ Phú</p>
                                </div>
                            </div>
                            <div class="oder-sidemenu-menu-menu">
                                <ul>
                                    <li> <a href="infor.html">
                                            <span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                                    <path
                                                        d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z" />
                                                </svg></span>Thông tin tài khoản</a></li>
                                    <li> <a href="history.html"> <span><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                    height="16" fill="currentColor" class="bi bi-file-lock"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M8 5a1 1 0 0 1 1 1v1H7V6a1 1 0 0 1 1-1zm2 2.076V6a2 2 0 1 0-4 0v1.076c-.54.166-1 .597-1 1.224v2.4c0 .816.781 1.3 1.5 1.3h3c.719 0 1.5-.484 1.5-1.3V8.3c0-.627-.46-1.058-1-1.224zM6.105 8.125A.637.637 0 0 1 6.5 8h3a.64.64 0 0 1 .395.125c.085.068.105.133.105.175v2.4c0 .042-.02.107-.105.175A.637.637 0 0 1 9.5 11h-3a.637.637 0 0 1-.395-.125C6.02 10.807 6 10.742 6 10.7V8.3c0-.042.02-.107.105-.175z" />
                                                    <path
                                                        d="M4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H4zm0 1h8a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1z" />
                                                </svg></span>Lịch sử
                                            đăng nhập</a></li>
                                    <li> <a href="manage.html"> <span><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                    height="16" fill="currentColor" class="bi bi-arrow-repeat"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M11.534 7h3.932a.25.25 0 0 1 .192.41l-1.966 2.36a.25.25 0 0 1-.384 0l-1.966-2.36a.25.25 0 0 1 .192-.41zm-11 2h3.932a.25.25 0 0 0 .192-.41L2.692 6.23a.25.25 0 0 0-.384 0L.342 8.59A.25.25 0 0 0 .534 9z" />
                                                    <path fill-rule="evenodd"
                                                        d="M8 3c-1.552 0-2.94.707-3.857 1.818a.5.5 0 1 1-.771-.636A6.002 6.002 0 0 1 13.917 7H12.9A5.002 5.002 0 0 0 8 3zM3.1 9a5.002 5.002 0 0 0 8.757 2.182.5.5 0 1 1 .771.636A6.002 6.002 0 0 1 2.083 9H3.1z" />
                                                </svg></span>Quản lý
                                            đơn hàng</a></li>
                                    <li> <a href="location.html"> <span><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                    height="16" fill="currentColor" class="bi bi-geo-alt"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                                                    <path
                                                        d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                                </svg></span>Số địa
                                            chỉ</a></li>
                                    <li> <a href="seen.html"> <span><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                    height="16" fill="currentColor" class="bi bi-eyeglasses"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M4 6a2 2 0 1 1 0 4 2 2 0 0 1 0-4zm2.625.547a3 3 0 0 0-5.584.953H.5a.5.5 0 0 0 0 1h.541A3 3 0 0 0 7 8a1 1 0 0 1 2 0 3 3 0 0 0 5.959.5h.541a.5.5 0 0 0 0-1h-.541a3 3 0 0 0-5.584-.953A1.993 1.993 0 0 0 8 6c-.532 0-1.016.208-1.375.547zM14 8a2 2 0 1 1-4 0 2 2 0 0 1 4 0z" />
                                                </svg></span>Sản phẩm
                                            đã xem</a></li>
                                    <li> <a href="favorite.html"> <span><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                    height="16" fill="currentColor" class="bi bi-heart"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                                </svg></span>Sản phẩm
                                            yêu thích</a></li>
                                    <li> <a href="advise.html"> <span><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                    height="16" fill="currentColor" class="bi bi-card-text"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
                                                    <path
                                                        d="M3 5.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 8zm0 2.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z" />
                                                </svg></span>Hỏi đáp
                                            sản phẩm</a></li>
                                    <li> <a href="suport.html"> <span><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                    height="16" fill="currentColor" class="bi bi-heart"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                                </svg></span>Hỗ trợ -
                                            Fashion Thread</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-xl">
                        <div class="oder-block-title">
                            <h2>LỊCH SỬ ĐĂNG NHẬP</h2>
                        </div>
                        <div class="oder-block-acount">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>THIẾT BỊ</th>
                                        <th>PHẦN MỀM</th>
                                        <th>ĐỊA CHỈ</th>
                                        <th>IP</th>
                                        <th>THỜI GIAN</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="5">Không tìm thấy dữ liệu</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <footer class="container" style="margin-top: 70px;">
        <div class="row">
            <div class="col-3">
                <img src="../image/z4805893268304_4da797551877695a26a2914211ce8e30.jpg" style="width: 100%;" alt="">
                <p>Công ty Cổ phần Dự Kim với số đăng ký kinh doanh: 0105777650</p>
                <p>Địa chỉ đăng ký: Tổ dân phố Tháp, P.Đại Mỗ, Q.Nam Từ Liêm, TP.Hà Nội, Việt Nam</p>
                <p>Số điện thoại: 0243 205 2222/ 090 589 8683</p>
                <p>Email: cskh@ivy.com.vn</p>

            </div>
            <div class="col-2">
                <h3>Giới thiệu</h3>
                <p>Về Fashion Thread</p>
                <p>Tuyển dụng</p>
                <p>Hệ thống của hàng</p>
            </div>
            <div class="col-3">
                <h3>Dịch vụ khách hàng</h3>
                <p>Chính sách điều khoản</p>
                <p>Hướng dẫn mua hàng</p>
                <p>Chính sách thanh toán</p>
                <p>Chính sách đổi trả</p>
                <p>Chính sách bảo hành</p>
                <p>Chính sách giao hành vận chuyển</p>
                <p>Chính sách thẻ thành viên</p>
                <p>Hệ thống cửa hàng</p>
                <p>Q&A</p>
            </div>
            <div class="col-2">
                <h3>Liên hệ</h3>
                <p>Hotline</p>
                <p>Email</p>
                <p>Live Chat</p>
                <p>Messenger</p>
                <p>Liên hệ</p>
            </div>
            <div class="col-2" style="border-radius: 50px 10px; border: solid; height: 300px;">
                <h4 style="margin-top: 40px;">Nhận thông tin chương trình</h4>
                <input style="margin-top: 20px;" type="email" placeholder="Nhập địa chỉ email">
                <button style="margin-top: 20px; border-radius: 20px 2px; float: right;" type="button"
                    class="btn btn-outline-dark">Dark</button>
            </div>
        </div>

    </footer>

</body>

</html>