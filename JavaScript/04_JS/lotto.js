const button = document.querySelector('#lotto-btn')
button.addEventListener('click', function() {
    const ballContainer = document.createElement('div')
    ballContainer.classList.add('ball-container')
    const numbers = _.sampleSize(_.range(1, 46), 6)
    console.log(numbers)
    
    for (let num of numbers) {
        const ball = document.createElement('div')
        ball.classList.add('ball')
        ball.innerText = num
        if(num < 11) {
            ball.style.backgroundColor = 'gold'
        }
        else if(num < 21) {
            ball.style.backgroundColor = 'cornflowerblue'
        }
        else if(num < 31) {
            ball.style.backgroundColor = 'orangered'
        }
        else if(num < 41) {
            ball.style.backgroundColor = 'gray'
        }
        else if(num < 46) {
            ball.style.backgroundColor = 'yellowgreen'
        }
        ballContainer.appendChild(ball)
        const result = document.querySelector('#result')
        }
    result.innerHTML = ""
    result.appendChild(ballContainer)
})