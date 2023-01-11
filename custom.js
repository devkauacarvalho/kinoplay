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
    menu.classList  .toggle('ativo', scrollY > 400)
  }

  window.addEventListener('scroll',ativarScroll);

  const filmes = [
{
  id: 1,
  nome: "Avatar",
  img: "../banner/banner3.jpg"
  
},

  ]