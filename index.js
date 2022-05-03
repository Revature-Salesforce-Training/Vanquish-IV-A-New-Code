

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

var guessLog = ['guess a color to begin'];
submitButton.addEventListener('click', function(color){
    var guess = colorPicker.color.hsv; 
    console.log(guess);
    guessLog.unshift(guess)
    addElement()
})
console.log(guessLog)
console.log(guessLog[0])
var currentGuess = JSON.stringify(guessLog[0])

function addElement () {
    const newDiv = document.createElement("p");
  
    const newContent = document.createTextNode(currentGuess);
  
    newDiv.appendChild(newContent);
    const parentDiv= document.getElementById("guessTracker");
  
    const currentGuessEnd = document.getElementById("currentGuessEnd");
    parentDiv.insertBefore(newDiv, currentGuessEnd);
}

// for (i = 0; i < guessLog.length; ++i) {
//     document.createElement('li');
//     document.getElementById("pastGuess").innerHTML = guessLog[i];
//     const currentDiv = document.getElementById("div1");
//     document.body.insertBefore(newDiv, currentDiv);
// }

