var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

const pwBtn = document.querySelector('#pw-btn')

pwBtn.addEventListener('click', function() {
    if(password.value.length < 7) {
    alert('비밀번호는 8자리 이상이어야 합니다!');
    }
})

function validatePassword(){
    if(password.value != confirm_password.value) {
        confirm_password.setCustomValidity("비밀번호가 일치하지 않습니다.");
    } else {
        confirm_password.setCustomValidity('');
    }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;