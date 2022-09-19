// id가 text-input인 input 하나만 선택
const textInput = document.querySelector('#text-input')
// input 이벤트를 설정
textInput.addEventListener('input', function(e) {
    // input의 value를 받아오기
    console.log(e)
    console.log(e.target.value)
})