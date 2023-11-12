let slideIndex = 0;
showSlides();
function showSlides() {
  let i;
  let slides = document.getElementsByClassName("aspect-ratio-169");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
 setTimeout(showSlides, 2000); // Change image every 2 seconds
}
//giỏ hàng
let icon = document.querySelector('.icon');
let closeCart = document.querySelector('.action-close');
let list = document.querySelector('.list');
let listCard = document.querySelector('.listCard');
let body = document.querySelector('body');
let total = document.querySelector('.total');
let quantity = document.querySelector('.quantity');

icon.addEventListener('click', ()=>{
    body.classList.toggle('showCart');
})
closeCart.addEventListener('click', ()=>{
    body.classList.toggle('showCart');
})