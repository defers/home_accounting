
let header = document.getElementById("header");
let menuElements = document.querySelectorAll(".menu-element");
let cards = document.querySelectorAll(".card");
console.log(cards);

function menuClickHandler() {
    activeHeaderElement = !activeHeaderElement;
    console.log("active: " + activeHeaderElement);
}

menuElements.forEach(e => e.addEventListener("click", menuClickHandler));