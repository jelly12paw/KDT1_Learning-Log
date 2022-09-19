// 모달 실행 버튼
const btnModal = document.querySelector('#btn-modal')
console.log(btnModal)

btnModal.addEventListener('click', function(event) {
    document.querySelector('#modal-content').classList.toggle('active')
})

// 모달 실행 취소 버튼
const btnCancel = document.querySelector('#cancel-btn')
btnCancel.addEventListener('click', function() {
    document.querySelector('#modal-content').classList.toggle('active')
})

// 버튼을 사용하지 않고 클릭으로 모달 실행 취소
// const modalToggle = function() {
//     document.querySelector('#modal-content').classList.toggle('active')
// }

const modalOverlay = document.querySelector('#modal-content')
// modalOverlay.addEventListener('click', modalToggle)