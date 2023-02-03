function checkNumFilms() {
    const numFilms = document.querySelectorAll('.child').length;
    if (numFilms < 7) {
      document.querySelector('footer').style.position = 'absolute';
      document.querySelector('footer').style.bottom = '0';
    }
    if(numFilms == 0){
      var warning = document.querySelector('main');
      warning.innerHTML = '<h2 id = "warning">Adicione aqui seus filmes e séries favoritos :) </h2>'  
    }
  }

  checkNumFilms();

