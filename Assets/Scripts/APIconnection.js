
try {

//Add event listener to the button. I am telling JS, if someone clicks the button with the id of #getJoke, do fetchResults
document.querySelector('#getJoke').addEventListener('click', fetchResults);

//What does fetch results do? It is defined below: 1)Contact api 
async function fetchResults() {
  let results = await fetch('https://api.chucknorris.io/jokes/random?category=career')
  //2)Convert output into something Javascript can understand, it is done because results are returned as a json file
  let parsedResults = await results.json();
  //3)Specify where i want to insert the output
  var searchResults = document.querySelector('#joke1');
          //i used var here because my original idea was to use If statement to cycle through jokes and i had to create a global variable instead of using let. -> Couldnt figure it out in the end, my attempt is in index.js file.    
  //4)Replace innerHTML portion of the element with the returned value
      searchResults.innerHTML = parsedResults.value;



      //same steps as above except i am insertined id and url into the other two div's
  var searchResults = document.querySelector('#joke2');    
  searchResults.innerHTML = 'Joke ID is inserted into div id="#joke2": ' + parsedResults.id;

  var searchResults = document.querySelector('#joke3');    
  searchResults.innerHTML = 'Joke URL is inserted into div id="#joke3": ' + parsedResults.url;
}
} catch (error) {'There is some error'}


//The following is catching a fictional function myFunction. I added it to confirm it is working.
try{
  myFunction();
}
catch (error ) {
  console.log('The following error occured: ' + error)
}
myfunction();