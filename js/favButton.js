const heartBtns = document.querySelectorAll('.heartBtn');
let favoritos = [];

for (let i = 0; i < heartBtns.length; i++) {
  heartBtns[i].addEventListener('click', function() {
    this.classList.toggle('ri-heart-add-line');
    this.classList.toggle('ri-heart-fill');
    if (this.classList.contains('ri-heart-fill')) {
      this.classList.add('heartAtive');
    } else {
      this.classList.remove('heartAtive');
    }
  });
}