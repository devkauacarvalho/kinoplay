function checkNumFilms() {
    const numFilms = document.querySelectorAll('.child').length;
    if (numFilms < 7) {
      document.querySelector('footer').style.position = 'absolute';
      document.querySelector('footer').style.bottom = '0';
      document.querySelector('.scroll-images').style.top = '50px';
    }
    if(numFilms == 0){
      var warning = document.querySelector('main');
      warning.innerHTML = '<h2 id = "warning">O Filme que você quer não está disponível <br> Tente mais tarde :( </h2>'  
    }
  }

  checkNumFilms();

