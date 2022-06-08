let homeButton = document.querySelector('.homeButton')

homeButton.addEventListener('mouseover', changeColor)

function changeColor(){
    homeButton.style.color = 'white'
    homeButton.style.background = 'black'
}

homeButton.addEventListener('mouseout', changeBack)

function changeBack(){
    homeButton.style.color = 'black'
    homeButton.style.background = 'white'
}
