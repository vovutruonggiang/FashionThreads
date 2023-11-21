var imgFeature = document.querySelector('.img-feature')
var listImg = document.querySelectorAll('#list_image2 img')
var prevBtn = document.querySelector('.prev')
var nextBtn = document.querySelector('.next')

var currentIndex = 0;
function updateImageByIndex(index){
    //remove active class
    document.querySelectorAll('#list_image2 div').forEach(item=>{
        item.classList.remove('active')
    })
    
    currentIndex = index
    imgFeature.src = listImg[index].getAttribute('src')
    listImg[index].parentElement.classList.add('active')
}

listImg.forEach((imgElement , index)=>{
    imgElement.addEventListener('click', e=>{
        updateImageByIndex(index)
    })
})

prevBtn.addEventListener('click',e=>{
    if(currentIndex == 0){
        currentIndex = listImg.length-1
    }else{
        currentIndex--
    }
    updateImageByIndex(currentIndex)
})

nextBtn.addEventListener('click',e=>{
    if(currentIndex == listImg.length-1){
        currentIndex = 0
    }else{
        currentIndex++
    }
    updateImageByIndex(currentIndex)
})

updateImageByIndex(0)



//js list hinh//

const carousel = document.querySelector("#list_image2"),
firstImg = carousel.querySelectorAll("img")[0],
arrowIcons = document.querySelectorAll(".list-image i");

let isDragStart = false, isDragging = false, prevPageX, prevScrollLeft, positionDiff;

// const showHideIcons = () => {
//     // showing and hiding prev/next icon according to carousel scroll left value
//     let scrollWidth = carousel.scrollWidth - carousel.clientWidth; // getting max scrollable width
//     arrowIcons[0].style.display = carousel.scrollTop == 0 ? "none" : "block";
//     arrowIcons[1].style.display = carousel.scrollTop == scrollWidth ? "none" : "block";
// }

arrowIcons.forEach(icon => {
    icon.addEventListener("click", () => {
        let firstImgWidth = firstImg.clientWidth + 60; // getting first img width & adding 14 margin value
        // if clicked icon is left, reduce width value from the carousel scroll left else add to it
        carousel.scrollTop += icon.id == "left" ? -firstImgWidth : firstImgWidth;
        setTimeout(() => showHideIcons(), 60); // calling showHideIcons after 60ms
    });
});

const autoSlide = () => {
    // if there is no image left to scroll then return from here
    if(carousel.scrollTop - (carousel.scrollWidth - carousel.clientWidth) > -1 || carousel.scrollTop <= 0) return;

    positionDiff = Math.abs(positionDiff); // making positionDiff value to positive
    let firstImgWidth = firstImg.clientWidth + 14;
    // getting difference value that needs to add or reduce from carousel left to take middle img center
    let valDifference = firstImgWidth - positionDiff;

    if(carousel.scrollTop > scrollTop) { // if user is scrolling to the right
        return carousel.scrollTop += positionDiff > firstImgWidth / 3 ? valDifference : -positionDiff;
    }
    // if user is scrolling to the left
    carousel.scrollTop -= positionDiff > firstImgWidth / 3 ? valDifference : -positionDiff;
}

const dragStart = (e) => {
    // updatating global variables value on mouse down event
    isDragStart = true;
    prevPageX = e.pageX || e.touches[0].pageX;
    prevScrollLeft = carousel.scrollTop;
}

const dragging = (e) => {
    // scrolling images/carousel to left according to mouse pointer
    if(!isDragStart) return;
    e.preventDefault();
    isDragging = true;
    carousel.classList.add("dragging");
    positionDiff = (e.pageX || e.touches[0].pageX) - prevPageX;
    carousel.scrollTop = prevScrollLeft - positionDiff;
    showHideIcons();
}

const dragStop = () => {
    isDragStart = false;
    carousel.classList.remove("dragging");

    if(!isDragging) return;
    isDragging = false;
    autoSlide();
}

carousel.addEventListener("mousedown", dragStart);
carousel.addEventListener("touchstart", dragStart);

document.addEventListener("mousemove", dragging);
carousel.addEventListener("touchmove", dragging);

document.addEventListener("mouseup", dragStop);
carousel.addEventListener("touchend", dragStop);