const heartBtns = document.querySelectorAll('.heartBtn');

for (let i = 0; i < heartBtns.length; i++) {
  heartBtns[i].addEventListener('click', function() {
    let movieId = this.parentNode.querySelector('a[href^="filmetemplate.php"]').dataset.filmeid;
    let seriesId = this.parentNode.querySelector('a[href^="serietemplate.php"]').dataset.serieid;
    let id = movieId || seriesId;

    fetch("/favorite.php", {
      method: "POST",
      headers: {
        "Content-Type": "application/x-www-form-urlencoded"
      },
      body: "id=" + id
    })
    .then(response => response.text())
    .then(data => console.log(data));

    this.classList.toggle('ri-heart-add-line');
    this.classList.toggle('ri-heart-fill');
    if (this.classList.contains('ri-heart-fill')) {
      this.classList.add('heartAtive');
    } else {
      this.classList.remove('heartAtive');
    }
  });
}