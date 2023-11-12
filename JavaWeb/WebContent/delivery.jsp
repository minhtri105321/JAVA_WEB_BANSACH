<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css">
    <title> TMIND </title>
</head>

<body>
  <header>
        <jsp:include page="header/header.jsp"></jsp:include>
    </header>
    <section class="delivery">
        <div class="container">
            <div class="delivery-top-wrap">
                <div class="delivery-top">
                    <div class="delivery-top-delivery delivery-top-item">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="delivery-top-adress delivery-top-item">
                        <i class="fas fa-map-marker-alt"></i>
                    </div>
                    <div class="delivery-top-payment delivery-top-item">
                        <i class="fas fa-money-check-alt"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="delivery-content">
                <div class="delivery-content-left">
                    <p>Vui long chọn địa chỉ giao hàng</p>
                    <div class="delivery-content-left-dndk">
                        <div class="delivery-content-left-dangnhap">
                            <button>
                                <p style="font-weight:bold"><a href=""></a>ĐĂNG NHẬP</p>
                            </button>
                        </div>
                        <div class="delivery-content-left-dangky ">
                            <button>
                                <p style="font-weight:bold"><a href=""></a>ĐĂNG KÝ</p>
                            </button>
                        </div>
                    </div>
                    <div class="delivery-content-left-input-top" id="bill">
                        <form action="bill.php" method="post">
                            <div class="delivery-content-left-input-top-left">
                                <div class="delivery-content-left-input-top-left-item">
                                    <label for="hoten">Họ tên <span style="color:red ;">*</span></label>
                                    <input type="text" name="hoten" required>
                                </div>
                                <div class="delivery-content-left-input-top-left-item">
                                    <label for="diachi">Địa chỉ<span style="color:red ;">*</span></label>
                                    <input type="text" name="diachi" required>
                                </div>
                            </div>
                            <div class="delivery-content-left-input-top-right">
                                <div class="delivery-content-left-input-top-right-item">
                                    <label for="dienthoai">Điện thoại <span style="color:red ;">*</span></label>
                                    <input type="text" name="dienthoai" required>
                                </div>
                                <div class="delivery-content-left-input-top-right-item">
                                    <label for="email">Email <span style="color:red ;">*</span></label>
                                    <input type="text" name="email" required>
                                </div>
                            </div>
                            <div class="delivery-content-left-button">
                                <a href=""><span>&#171;</span>
                                    <p>Quay lại giỏ hàng</p>
                                </a>
                                <button type="submit" name="submit_order">
                                    <p style="font-weight:bold">THANH TOÁN VÀ GIAO HÀNG</p>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="payment-content-left">
                    <div class="payment-content-left-method-delivery">
                        <p style="font-weight: bold;">Phương thức giao hàng</p>
                        <div class="payment-content-left-method-delivery-item">
                            <input type="radio">
                            <label for="">Giao hàng chuyển phát nhanh</label>
                        </div>
                    </div>
                    <div class="payment-content-left-method-payment">
                        <p style="font-weight: bold;">Phương thức thanh toán</p>
                        <p>Mọi giao dịch đều được bảo mật và mã hóa. Thông tin thẻ tín dụng sẽ không bao giờ được lưu lại
                        </p>
                        <div class="payment-content-left-method-payment-item">
                            <input name="method-payment" type="radio">
                            <label for="">Thanh toán khi nhận hàng</label>
                        </div>
                        <div class="payment-content-left-method-payment-item">
                            <input name="method-payment" type="radio">
                            <label for="">Thanh toán MOMO</label>
                        </div>
    
                        <div class="payment-content-left-method-payment-item">
                            <input name="method-payment" type="radio">
                            <label for="">Thanh toán bằng thẻ tín dụng</label>
                        </div>
                        <div class="payment-content-left-method-payment-item-img">
                            <img src="ảnh/1.png">
                        </div>
                    </div>
                </div>
                <div class="delivery-content-right">
                    <table>
    
    
                        <!-- <tr>
                            <td>Áo polo kẻ ngang MS 57E2948</td>
                            <td>-30%</td>
                            <td>1</td>
                            <td><p>599.000 <sup>đ</sup></p></td>
                        </tr> -->
                        <tr>
                            <td style="font-weight: bold;" colspan="3">Tổng tiền hàng:</td>
                            <td style="font-weight: bold;">
                                <p>
                                    <?php if (isset($_SESSION['tong_gio_hang'])) echo $_SESSION['tong_gio_hang']; ?><sup>.000đ</sup>
                                </p>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </section>
<footer>
    <div class="container">
        <jsp:include page="footer/footer.jsp"></jsp:include>
    </div>
</footer>
    <script src="script/index.js"></script>
    <script src="script/product.js"></script>
    <script src="script/cartegory.js"></script>
    </body>
    
    </html>