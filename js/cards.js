var imgs = document.querySelectorAll(".child-img");

imgs.forEach(img => {
  var iddata = img.getAttribute("dataid");

  if (iddata) {
    fetch("js/load_image.php", {
      method: "POST",
      headers: {
        "Content-Type": "application/x-www-form-urlencoded"
      },
      body: `id=${iddata}`
    })
    .then(response => response.text())
    .then(data => {
      img.setAttribute("src", data);
    })
    .catch(error => console.error(error));
  } else {
    console.log("Nenhum valor de id foi encontrado para esta imagem");
  }
});
