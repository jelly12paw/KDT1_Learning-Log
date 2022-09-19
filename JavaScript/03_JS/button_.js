// 초기값 설정
let countNumber = 0
// id가 btn인 버튼을 하나만 선택
const btn = document.querySelector('#btn')
console.log(btn)
// 버튼을 누를 때마다 함수가 실행
btn.addEventListener('click', function() {
    console.log('Click Button')
    // 버튼이 실행되면 숫자를 1씩 증가
    countNumber += 1
    // id가 counter인 p태그의 내용을 변경
    const counter = document.querySelector('#counter')
    counter.innerText = countNumber
})