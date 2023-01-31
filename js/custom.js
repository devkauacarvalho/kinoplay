/*banner*/
var swiper = new Swiper(".menu", {
    spaceBetween: 0,
    centeredSlides: true,
    autoplay: {
      delay: 5000,
      disableOnInteraction: false,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });

  /*scroll menu*/

  const menu = document.querySelector('header');

  function ativarScroll(){
    menu.classList.toggle('ativo', scrollY > 400);
  }

  window.addEventListener('scroll',ativarScroll);

/*menu sandwiche*/

const hamburger = document.querySelector('.hamburger');
const navLinks = document.querySelector('.responsive');
const box = document.querySelector('.box');
const user = document.querySelector('.ri-map-pin-user-line');

hamburger.addEventListener('click', () => {
navLinks.classList.toggle('active');
box.classList.toggle('active');
hamburger.classList.toggle('active');
user.classList.toggle('active');
});