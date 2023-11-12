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
    <section class="cart">
        <div class="container">
            <div class="cart-top-wrap">
                <div class="cart-top">
                    <div class="cart-top-cart cart-top-item">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="cart-top-cart-adress cart-top-item">
                        <i class="fas fa-map-marker-alt"></i>
                    </div>
                    <div class="cart-top-cart-payment cart-top-item">
                        <i class="fas fa-money-check-alt"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="cart-content">
                <div class="cart-content-left">
                    <table>
                        <tr>
                            <th>STT</th>
                            <th>Hình</th>
                            <th>Tên sản phẩm</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền ($)</th>
                            <th>Xóa</th>
                        </tr>
                      
                    </table>
                </div>
                <div class="cart-content-right">
                    <table>
                        <tr>
                            <th colspan="2">TỔNG TIỀN GIỎ HÀNG</th>
                        </tr>
                        <tr>
                            <td>TỔNG TIỀN HÀNG</td>
                            <td>
                            </td>
                        </tr>
                    </table>
                    <div class="cart-content-right-button">
                        <button>TIẾP TỤC MUA SẮM</button>
                        <a href="delivery.jsp"> <button>THANH TOÁN</button></a>
                    </div>
    
                </div>
            </div>
        </div>
    </section>
    
<footer>
    <div class="container">
        <jsp:include page="footer/footer.jsp"></jsp:include>
    </div>
</footer>
    <script>
        let icon = document.querySelector('.icon');
        let closeCart = document.querySelector('.action-close');
        let list = document.querySelector('.list');
        let listCard = document.querySelector('.listCard');
        let body = document.querySelector('body');
        let total = document.querySelector('.total');
        let quantity = document.querySelector('.quantity');

        icon.addEventListener('click', () => {
            body.classList.toggle('showCart');
        })
        closeCart.addEventListener('click', () => {
            body.classList.toggle('showCart');
        })
    </script>
    <script src="script/index.js"></script>
    <script src="script/product.js"></script>
    <script src="script/cartegory.js"></script>
    </body>
    
    </html>