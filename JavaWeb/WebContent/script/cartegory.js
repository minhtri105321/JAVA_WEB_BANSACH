const wrappermot = document.querySelector('.spmot');
const wrapperhai = document.querySelector('.sphai');
const check = document.querySelector('.check');
const lazy = document.querySelector('.lazy');
 check.addEventListener('click',() => {
   wrappermot.classList.add('active');
});
lazy.addEventListener('click',() => {
   wrapperhai.classList.remove('active');
});