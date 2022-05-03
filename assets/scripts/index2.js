

// Author: Joshua Scilex
// Created: 4/28/22
// last updated: 5/2/22
// Description: "In Living Color," an API-based color-guessing game


const guesses = document.querySelector('.guesses');
const lastResult = document.querySelector('.lastResult');
const guessSubmit = document.querySelector('#submit');
let guessCount = 1

var colorPicker = new iro.ColorPicker('#picker', {
    color: '#FFD124',
});

// generate random HSV color to be the "goal" color
function getRandomInt(max) {
    return Math.floor(Math.random() * max);
};
const hueGoal = getRandomInt(360);
const saturationGoal = getRandomInt(100);
const valueGoal = getRandomInt(100);
const goal = `{h: ${hueGoal}, s: ${saturationGoal}, v: ${valueGoal}}`;

console.log('Goal=' + goal);

// log a guess when color is selected and submitted
const submitButton = document.querySelector('#submit');

var guessLog = []
var guessColor
submitButton.addEventListener('click', function(color){ 
    guessColor = colorPicker.color.hsv;
    guessHex = colorPicker.color.hexString
    console.log(guessColor);
    guessLog.unshift(guessColor)
    const guessArray = Object.values(guessColor);
    
    function checkGuess(){
        const hueGuess = guessArray[0]
        var guessAngle

        var guessDifference = Math.abs(hueGuess - hueGoal)
        if (guessDifference > 180){
            guessAngle = Math.abs(guessDifference - 360)
        } else {
            guessAngle = guessDifference
        }
        var guessPercentage = Math.round(((100 - (guessAngle / 1.8)) + Number.EPSILON) * 100) / 100;
        console.log(guessPercentage)

        function addElement () {
            const newDiv = document.createElement("li");
          
            const newContent = document.createTextNode(guessPercentage + '%');
            newDiv.setAttribute("id", "backgroundColor" + guessCount);

            newDiv.appendChild(newContent);
            const parentDiv= document.querySelector(".guesses");
          
            const currentGuessList = document.querySelector(".list");
            parentDiv.insertBefore(newDiv, currentGuessList.firstChild);
        }
        addElement()

        document.getElementById("backgroundColor" + guessCount).style.backgroundColor = guessHex

        console.log(guessDifference)

        if (guessDifference <= 3 || guessDifference >= 357) {
            lastResult.textContent = "You've guessed it! Press the button below to play again!";
            lastResult.style.backgroundColor = guessHex
            guessSubmit.disabled = true;
            const btn = document.createElement("button");
            btn.innerHTML = "Play Again";
            btn.onclick = function playAgain(){
                window.location.reload();
            }
            document.body.appendChild(btn);
        }
    
    }
    checkGuess()
    guessCount++;
})


