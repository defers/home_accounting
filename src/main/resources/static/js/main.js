
let header = document.getElementById("header")
let menuElements = document.querySelectorAll(".menu-element")
let cards = document.querySelectorAll(".card")
let burgerBtn = document.querySelector(".burger-btn-container")
let listMenu = document.querySelector(".list-menu")
let burgerMenuOpened = false

function menuClickHandler() {
    activeHeaderElement = !activeHeaderElement
    console.log("active: " + activeHeaderElement)
}

function burgerBtnHandler() {
    burgerMenuOpened = !burgerMenuOpened
    if (burgerMenuOpened) {
        burgerBtn.classList.add("active-burger-btn")
        listMenu.classList.add("menu-list-open")
    }
    else {
        burgerBtn.classList.remove("active-burger-btn")
        listMenu.classList.remove("menu-list-open")
    }
}

menuElements.forEach(e => e.addEventListener("click", menuClickHandler))
burgerBtn.addEventListener("click", burgerBtnHandler)