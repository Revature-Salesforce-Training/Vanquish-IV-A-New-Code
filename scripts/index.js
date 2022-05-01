// // Author: Kory
// // Last Updated: 04/28/22

// // function getWeather(category) {
// //     fetch(`https://api.chucknorris.io/jokes/random?category=${category}`)
// //     .then(r => r.json())
// //     .then(res => console.log(res.value));
// //   }

// // function ageCheck(age){
// //     if (age >= 21){
// //         console.log("You can buy alcohol")
// //     } else {
// //         console.log("You are not old enough")
// //     }
// // }

// // ageCheck(20);

// for (let i = 0; i < 5; i++) {
//     console.log("Do it again")
// }

// let i = 0;
// while(i < 5;){
//     console.log("Let me out!!")
//     i++
// }

// // Do while will run at least once

// let n = 1
// do {
//     console.log(n)
//     n++
// } while (n < 5);

// const array1 = ['a', 'b', 'c'];
// console.log(array1.length);

// for (let i = 0; i , array1.length; i++){
//     console.log(array1[i])
// }

// for (const element of array1){
//     console.log()
// }

// Javascript Modules

// Change Link color when mouse hovers

let link1 = document.querySelector('.link1')


link1.addEventListener('mouseover', changeLink)

function changeLink(){
    link1.style.color = "white"
}

link1.addEventListener('mouseout', changeLinkBack)

function changeLinkBack(){
    link1.style.color = "blue";
}

let link2 = document.querySelector('.link2')


link2.addEventListener('mouseover', changeLink2)

function changeLink2(){
    link2.style.color = "white"
}

link2.addEventListener('mouseout', changeLinkBack2)

function changeLinkBack2(){
    link2.style.color = "blue"
}

// links.addEventListener('mouseout', changeLink);

// function changeLink(){
//     links.style.color = "blue"
// }

// Async vs Sync

// Sync = code running line by line. (Cannot do line 147 until 146 is done)

// Async is when while code is running on one line, it can still proceed running other lines

// Promises

// "Producing Code" (May take some time)
// let myPromise = new Promise(function(myResolve, myReject) {

//     myResolve(); // when successful
//     myReject();  // when error
//   });
  
//   // "Consuming Code" (Must wait for a fulfilled Promise)
//   myPromise.then(
//     function(value) { /* code if successful */ } 
//   )
//   .catch(
//     function(error) { /* code if some error */ }
//   );

// //  Youtube Example

// let p = new Promise(function(resolve, reject){
//     let a = 1 + 2
//     if (a == 2){
//         resolve("Success!")
//     } else {
//         reject("failure!")
//     }
// })

// p.then(function(message){
//     console.log("the operation was a "+ message)
// }).catch(function(message){
//     console.log("the operation was a " + message)
// });


// //   Async and Await

//   async function myAsync() {
//     let myPromise = new Promise(function(myResolve, myReject) {
//       setTimeout(function() { myResolve("HII x2 !!"); }, 3000);
//     });
  
//     let message = await myPromise;
//     console.log(message);
//   }

  
//   myAsync();

// Fetch API
// provides us with a way to interact with and retrieve resources from across the network and from external web services
// promise based

// function getJoke(category) {
//     fetch(`https://api.chucknorris.io/jokes/random?category=${category}`)
//     .then(r => r.json())
//     .then(res => console.log(res.value));
//   }

// Successful OpenWeather API console.log

// let city = "Northridge";
// let state = "CA";
// let api = "c50a97c8b5f6224e487ca758f4df264e";

// fetch('https://api.openweathermap.org/data/2.5/weather?q=' + city + ',' + state + '&appid=' + api)
//     // Handle success
//     .then(response => response.json())  // convert to json
//     .then(json => console.log(json))    //print data to console
//     .catch(err => console.log('Request Failed', err)); // Catch errors


let searchBtn = document.querySelector('#search-button');
searchBtn.addEventListener('click', fetchResults);
// let searchresults = document.querySelector('.search-results');
// searchresults.addEventListener('click', fetchResults);


// Async Await another way of getting same results as Promises, but with less .then statements.
// The try and catch acts the same way as the response/reject parameters of promises. If successful the code in the try block will execute. If not, the code in the catch block will execute.

async function fetchResults (){
    try {
        let api = "c50a97c8b5f6224e487ca758f4df264e";
        let city = document.querySelector('#cityID').value;
        let state = document.querySelector('#countryID').value;
        let results = await fetch('https://api.openweathermap.org/data/2.5/weather?q=' + city + ',' + state + '&appid=' + api)
        let parsedresults = await results.json();  // convert to json
        console.log(parsedresults);
        let searchresults = document.querySelector('.search-results');
        searchresults.innerHTML = '';
        let kelvin = parsedresults.main.temp;
        let temperature = 1.8 * (kelvin - 273) + 32;
        let F = Math.round(temperature);
        let weather = parsedresults.weather[0].description;
        let wind = `${parsedresults.wind.speed} mph`;
        searchresults.innerHTML = `The temperature in ${city} is currently ${F}F. Weather condition is ${weather} and wind speed is ${wind}`
    } catch (err) {
        console.log(err);
        let searchresults = document.querySelector('.search-results');
        searchresults.innerHTML = '';
        searchresults.innerHTML = `City not found. Please try again.`

    }
    

    
}


