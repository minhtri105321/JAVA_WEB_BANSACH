
  // Lấy tất cả các phần tử có class "buy_now"
  var buyNowButtons = document.getElementsByClassName('buy_now');

  // Lặp qua từng nút "Mua Ngay"
  for (var i = 0; i < buyNowButtons.length; i++) {
    var button = buyNowButtons[i];
    button.addEventListener('click', addToCart);
  }

  // Xử lý sự kiện khi nhấp vào nút "Mua Ngay"
  function addToCart(event) {
    // Lấy thông tin sản phẩm từ phần tử nút được nhấp
    var productName = event.target.parentNode.querySelector('h1').innerText;
    var productPrice = event.target.parentNode.querySelector('p').innerText;

    // Thêm sản phẩm vào giỏ hàng
    var cartItem = document.createElement('div');
    cartItem.classList.add('cart-item');
    cartItem.innerHTML = `
      <div class="item-name">${productName}</div>
      <div class="item-price">${productPrice}</div>
    `;

    var cartItems = document.querySelector('.cartTab .bottom-action');
    cartItems.appendChild(cartItem);

    // Cập nhật số lượng sản phẩm trong giỏ hàng
    var cartItemCount = document.getElementsByClassName('cart-item').length;
    var numberCart = document.querySelector('.number-cart');
    numberCart.innerText = cartItemCount;

    // Cập nhật tổng giá trị của giỏ hàng
    var totalPrice = calculateTotalPrice();
    var totalPriceElement = document.querySelector('.total-price strong');
    totalPriceElement.innerText = totalPrice + 'đ';

    // Ngăn chặn hành vi mặc định của liên kết
    event.preventDefault();
  }

  // Tính tổng giá trị của giỏ hàng
  function calculateTotalPrice() {
    var cartItems = document.getElementsByClassName('cart-item');
    var totalPrice = 0;

    for (var i = 0; i < cartItems.length; i++) {
      var priceText = cartItems[i].querySelector('.item-price').innerText;
      var price = parseFloat(priceText.replace('đ', '').replace('.', ''));
      totalPrice += price;
    }

    return totalPrice;
  }

