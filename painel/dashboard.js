var ano_atual = new Date().getFullYear();
document.addEventListener('DOMContentLoaded', function(){
    document.getElementById("anolancamento").placeholder = ano_atual;
    document.getElementById("anolancamento").max = ano_atual;
});

const imagemInput = document.getElementById("imagem");
const capaImg = document.getElementById("capa-img");
        
imagemInput.addEventListener("change", (event) => {
    const imagemLink = event.target.value;
    capaImg.src = imagemLink;
});