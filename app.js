const next = document.querySelector(".next")
const prev = document.querySelector(".prev")

next.addEventListener("click", nextItem)
prev.addEventListener("click", prevItem)

//select filler files in variables
const image = document.querySelector(".content-container img")
const artist = document.querySelector(".content-container h4")
const date = document.querySelector(".content-container h5")
//create counter variable
let counter = -1

const Items = [
    davido = {
        imageSrc : "vintage_car_hd-wallpaper-1920x1080.jpg",
        artist : "Davido",
        date : "Fri, March 21st, 2022"
    },
    wizkid = {
        imageSrc : "vintage_bicycle_in_the_storm-wallpaper-1920x1080.jpg",
        artist : "Wizkid",
        date : "Tues, April 1st, 2022"
    },
    jite = {
        imageSrc : "vietnam_war_painting-wallpaper-1920x1080.jpg",
        artist : "Eminem",
        date : "Thurs, June 14th, 2022"
    },
    tega = {
        imageSrc : "tiger_14-wallpaper-1920x1080.jpg",
        artist : "Ja Rule",
        date : "Mon, September 30th, 2021"
    }
]

function nextItem(){
    counter++
    if (counter <= Items.length - 1){
        const currentItem = Items[counter]
        image.src = `/images/${currentItem.imageSrc}`
        artist.textContent = `${currentItem.artist}`
        date.textContent = `${currentItem.date}`
    } else {
        counter = Items.length % counter
        const currentItem = Items[counter]
        image.src = `/images/${currentItem.imageSrc}`
        artist.textContent = `${currentItem.artist}`
        date.textContent = `${currentItem.date}`
    }
}

function prevItem() {
    counter--
    if (counter < 0) {
        counter = Items.length - 1
        const currentItem = Items[counter]
        image.src = `/images/${currentItem.imageSrc}`
        artist.textContent = `${currentItem.artist}`
        date.textContent = `${currentItem.date}`
    } else if (counter < Items.length && counter > -1) {
        const currentItem = Items[counter]
        image.src = `/images/${currentItem.imageSrc}`
        artist.textContent = `${currentItem.artist}`
        date.textContent = `${currentItem.date}`
    }
}