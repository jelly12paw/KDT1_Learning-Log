// h1 태그를 하나만 선택
const h1 = document.querySelector('h1')

h1.addEventListener('copy', function(event) {
    // event의 기본 동작을 막는다(복사하기)
    event.preventDefault()
    console.log('복사기능을 사용할 수 없습니다.')
})

h1.addEventListener('click', function(event) {
    event.preventDefault()
    console.log('클릭기능을 사용할 수 없습니다.')
})