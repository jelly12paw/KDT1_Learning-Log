// id가 pre-btn인 버튼을 선언 및 할당하기
const preBtn = document.querySelector('#pre-btn')
preBtn.addEventListener('click', function() {
    const currentElement = document.querySelector('.active')
    const items = document.querySelectorAll('.car-item')
    const idx = [...items].indexOf(currentElement)
    console.log(currentElement, items, idx)
    currentElement.classList.toggle('active')
    items[(items.length + idx - 1) % items.length].classList.toggle('active')
})

// id가 next-btn인 버튼을 선언 및 할당
const nextBtn = document.querySelector('#next-btn')
nextBtn.addEventListener('click', function() {
    const currentElement = document.querySelector('.active')
    const items = document.querySelectorAll('.car-item')
    const idx = [...items].indexOf(currentElement)
    console.log(currentElement, items, idx)
    currentElement.classList.toggle('active')
    items[(idx + 1) % items.length].classList.toggle('active')
})

setInterval(function() {
    const nextBtn = document.querySelector('#next-btn')
    nextBtn.click()
}, 10000)

document.addEventListener('load', function() {
    
})