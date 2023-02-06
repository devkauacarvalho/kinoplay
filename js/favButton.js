const heartBtns = document.querySelectorAll('.heartBtn');

for (let i = 0; i < heartBtns.length; i++) {
  heartBtns[i].addEventListener('click', function() {
    this.classList.toggle('ri-heart-add-line');
    this.classList.toggle('ri-heart-fill');

    const id_F = $(this).closest('div.child').find('img').attr('filmeid');
    const id_S = $(this).closest('div.child').find('img').attr('serieid');

    $.ajax({
      type: "GET",
      url: "js/add_favoritos.php",
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      data: { id_F : id_F , id_S : id_S , estado : this.classList.contains('ri-heart-fill') ? 1 : 0 }
    });

    if (this.classList.contains('ri-heart-fill')) {
      this.classList.add('heartAtive');
    } else {
      this.classList.remove('heartAtive');
    }
  });
}