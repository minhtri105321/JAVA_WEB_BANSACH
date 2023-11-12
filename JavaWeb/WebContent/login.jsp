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
    <section class="container">
        <div class="login_res">
            <div class="login_res_left">
                <div class="wrapper">
                    <div class="form-box login">
                        <h2>Login</h2>
                        <form action="loginup.php" method="POST">
                            <div class="input-box">
                                <span class="icon"><i class="fa-solid fa-envelope"></i></span>
                                <input type="email" name="login_email" required id="email">
                                <span class="alert"></span>
                                <label>Email</label>
                            </div>
                            <div class="input-box">
                                <span class="icon"><i class="fa-solid fa-lock"></i></span>
                                <input type="password" id="password" name="login_password" required>
                                <label>Password</label>
                            </div>
                            <div class="remember-forgot">
                                <label><input type="checkbox"> Remember me</label>
                                <a href="#">Forgot Password</a>
                            </div>
                            <button type="submit" class="btn">Login</button>
                            <div class="login-register">
                                <p>Bạn chưa có tài khoản? <a href="#" class="register-link">Đăng ký</a></p>
                            </div>
                        </form>
                    </div>
                    <div class="form-box register">
                        <h2>Đăng ký</h2>
                        <form action="signup-check.php" method="post">
                            <div class="input-box">
                                <span class="icon"><i class="fa-solid fa-user"></i></span>
                                <input type="text" name="username" id="username" required>
                                <label>Tên Người Dùng</label>
                            </div>
                            <div class="input-box">
                                <span class="icon"><i class="fa-solid fa-envelope"></i></span>
                                <input type="email" name="register_email" required id="email">
                                <span class="alert"></span>
                                <label>Email</label>
                            </div>
                            <div class="input-box">
                                <span class="icon"><i class="fa-solid fa-lock"></i></span>
                                <input type="password" name="register_password" required>
                                <label>Password</label>
                            </div>
                            <div class="remember-forgot">
                                <label><input type="checkbox"> agree</label>
                            </div>
                            <button type="submit" name="dangky" class="btn">Đăng ký</button>
                            <div class="login-register">
                                <p>Bạn đã có tài khoản? <a href="#" class="login-link">Đăng Nhập</a></p>
                            </div>
                        </form>
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
    <script src="script/index.js"></script>
    <script src="script/product.js"></script>
    <script src="script/cartegory.js"></script>
    </body>
    <script>
        const wrapper = document.querySelector('.wrapper');
        const loginLink = document.querySelector('.login-link');
        const registerLink = document.querySelector('.register-link');
        const btnPopup = document.querySelector('.btnLogin-popup');
        const iconClose = document.querySelector('.icon-close');

        registerLink.addEventListener('click', () => {
            wrapper.classList.add('active');
        });
        loginLink.addEventListener('click', () => {
            wrapper.classList.remove('active');
        });

    </script>
    <script>
        const email = document.getElementById('email');
        const alert = document.querySelector('.alert');

        const patternEmail = /^([a-z0-9_.-]+)@([da-z,-]+).([a-z.]{2,6})$/;

        function checkText() {
            if (email.value.length === 0) {
                alert.style.padding = '0';
                alert.textContent = '';
            } else {
                console.log('Đã nhập');
                if (email.value.match(patternEmail)) {
                    alert.textContent = 'Email hợp lệ';
                    alert.style.color = '#14f0ba';
                } else {
                    alert.textContent = 'Email không hợp lệ';
                    alert.style.color = '#f01448';
                }
            }
        }
        email.addEventListener('keyup', (event) => {
            checkText();
        });
    </script>
    </html>