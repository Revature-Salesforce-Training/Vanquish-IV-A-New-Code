
/*let timer
let currentPosisiton = 0
let deletFirstDelay*/




    async function start() {
        const response = await fetch("https://dog.ceo/api/breeds/list/all")
        const data = await response.json()
        createBreedList(data.message)
        console.log(data);
    }
    start()
    function createBreedList(breedList) {
        document.getElementById("breed").innerHTML = `<select>

 <option>Choose a dog breed</option>
 ${Object.keys(breedList).map(function (breed) {
            return `<option>${breed}</option>`
        }).join('')}
 </select>
 `
    }
 
      async function loadByBreed(breed) {
         if (breed != "Choose a dog breed") {
             const response = await fetch(`https://dog.ceo/api/breed/${breed}/images`);
             const data = await response.json(response);
             createsSlideshow(data.message)
              {
             }
         }
          } function eventHandler(event) {
            if (event.type == 'fullscreenchange'){
                   /* handle a full screen toggle */
        } else /* fullscreenerror */ {
            /* handle a full screen toggle error */
        }
            } 

function createsSlideshow(images) {
    let currentPosition = 0

    document.getElementById("slideshow").innerHTML = `
<div class="slide" style="background-image:url('${images[0]}')"></div>
<div class="slide" style="background-image:url('${images[1]}')"></div>
`
    currentPosition += 2
    setInterval(nextSlide, 3000)
    function nextSlide() {
        document.getElementById("slideshow").insertAdjacentHTML("beforend")
        setTimeout(function () {
            document.querySelector(".slide").remove()
        }, 1000);
        if (currentPosition + 1 >= images.length) {
        } else {
            currentPosition++


        }

    }
}