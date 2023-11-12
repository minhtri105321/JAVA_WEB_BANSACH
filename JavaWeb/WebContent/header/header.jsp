<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="logo">
            <a href="index.jsp">
                <img src="ảnh/logo.jpg">
            </a>
        </div>
        <div class="menu">
            <li><a href="index.jsp">Trang chủ</a>
            </li>
            <li><a href="">Giới thiệu</a>
            </li>
            <li><a href="">Kho sách</a>
                <ul class="sub-menu">
                    <li><a href="cartegory.jsp">Sách Văn Học</a></li>
                    <li><a href="">Sách Lập Trình</a></li>
                    <li><a href="">Sách Kỹ Năng</a></li>
                    <li><a href="">Sách Thiếu Nhi</a></li>
                    <li><a href="">Sách Ngoại Ngữ</a></li>
                    <li><a href="">Sách Kinh Tế - Kinh Doanh</a></li>
                    <li><a href="">Sách Giáo Khoa</a></li>
                </ul>
            </li>
            <li><a href="">KHUYẾN MÃI</a></li>
        </div>
        <div class="others">
            <div class="item-tk">
                <input placeholder="Tìm kiếm" type="text"><i class="fa fa-search"></i>
            </div>
            <div class="item-login">
                <a class="" href="login.jsp">
                    <i class="fa fa-user"></i>
                </a>

            </div>
            <div class="item-gh">
                <a class="icon" href="#">
                    <i class="fa fa-shopping-bag"></i>
                </a>
                <div class="cartTab">
                    <div class="top-action">
                        <h3>Giỏ hàng
                            <span class="number-cart"></span>
                        </h3>
                    </div>
                    <div class="action-close">
                        <i class="fa fa-xmark"></i>
                    </div>

                    <div class="listCart">
                        <div class="listCart_table">
                            <table>
                                <tr>
                                    <th>Hình</th>
                                    <th>Tên</th>
                                    <th>Size</th>
                                    <th>Số lượng</th>
                                    <th>giá (đ)</th>
                                    <th>Xóa</th>
                                </tr>
                                <!-- addgiohang(); -->
                                <!-- <tr>
                        <td style="display:flex;align-items:center"><img style="width:70px" src="ảnh/sp2-p.jpg" alt=""  ></td>
                        <td><p>Áo sơ mi (màu đen)</p></td>
                        <td><p>L</p></td> 
                        <td><input type="number" value="1" min="1"></td>
                        <td><p>489.000<sup>đ</sup></p></td>
                        <td><span>X</span></td>
                    </tr>  -->
                            </table>
                        </div>

                    </div>

                    <div class="bottom-action">
                        <div class="total-price">Tổng cộng:
                            <strong>0đ</strong>
                        </div>
                        <div class="btn-tt">
                            <a href="" class="action-tt">THANH TOÁN</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
</body>
</html>