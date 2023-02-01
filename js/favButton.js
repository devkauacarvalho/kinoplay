const heartBtns = document.querySelectorAll('.heartBtn');

for (let i = 0; i < heartBtns.length; i++) {
  heartBtns[i].addEventListener('click', function() {
    this.classList.toggle('ri-heart-add-line');
    this.classList.toggle('ri-heart-fill');

    const tipo = this.dataset.tipo;
    const id = this.dataset.id;

    if (this.classList.contains('ri-heart-fill')) {
      this.classList.add('heartAtive');
      fetch('/js/adicionar_favorito.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: `tipo=${tipo}&id=${id}`
      });
    } else {
      this.classList.remove('heartAtive');
      fetch('remover_favorito.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: `tipo=${tipo}&id=${id}`
      });
    }
  });
}