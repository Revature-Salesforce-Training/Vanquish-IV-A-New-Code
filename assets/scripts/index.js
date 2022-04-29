

var colorPicker = new iro.ColorPicker('#picker', {
    color: '#FFD124',
});

function getRandomInt(max) {
    return Math.floor(Math.random() * max);
  }
  
  console.log(getRandomInt(360));

const hueGoal = getRandomInt(360);
const saturationGoal = getRandomInt(100);
const valueGoal = getRandomInt(100);

const goal = `{h: ${hueGoal}, s: ${saturationGoal}, v: ${valueGoal}}`

const submitButton = document.querySelector('#submit')
console.log(submitButton)

// colorPicker.on('color:change', function(color){
//     console.log(color.hexString);
// })

console.log('Goal=' + goal)

submitButton.addEventListener('click', function(color){
    var guess = colorPicker.color.hsv;    
    console.log(guess);
    })