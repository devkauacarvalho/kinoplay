var lists = document.getElementsByClassName("scroll-images");
for (var i = 0; i < lists.length; i++) {
    lists[i].addEventListener("scroll", function(){
        var icon1 = document.querySelector("[data-target='"+this.id+"']")
        var icon2 = document.querySelector("[data-target='"+this.id+"'] ~ .icon2")
        if (this.scrollLeft > 0) {
            icon1.style.display = "inline-block";
        }
        else{
            icon1.style.display = "none";
        }
        if(this.scrollLeft >= this.scrollWidth - this.clientWidth){
            icon2.style.display = "none";
        }else{
            icon2.style.display = "inline-block";
        }
    });
    if(lists[i].scrollLeft === 0){
        var icon1 = document.querySelector("[data-target='"+lists[i].id+"']");
        icon1.style.display = "none";
    }
}

var icon1Buttons = document.getElementsByClassName("icon1");
for (var i = 0; i < icon1Buttons.length; i++) {
    icon1Buttons[i].addEventListener("click", function() {
        var list = document.getElementById(this.dataset.target);
        list.scrollLeft -= 1100; // scroll left by 1100 pixels
    });
}

// Right button function
function scroll_right(btn) {
    var list = document.getElementById(btn.dataset.target);
    list.scrollLeft += 1100; // scroll right by 1100 pixels
}