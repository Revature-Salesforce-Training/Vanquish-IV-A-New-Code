if (document.querySelector('#joke3').innerHTML.length > 5) {  
    var searchResults = document.querySelector('#joke3');      
    searchResults.innerHTML = parsedResults.value;
          const l1 = document.querySelector('#joke1').innerHTML;
          let l1Length = l1.length
          console.log(l1.length)

    }
      else if (document.querySelector('#joke1').innerHTML != ' ') {
        console.log(parsedResults.length)
      var searchResults2 = document.querySelector('#joke2'); 
      searchResults2.innerHTML = parsedResults.value;
          const l2 = searchResults2.innerHTML;
          let l2Length = l2.length
          console.log(l2.length)
          
    }
    
      else if (l2.length > 0) {
      var searchResults = document.querySelector('#joke3'); 
      searchResults.innerHTML = parsedResults.value;
          const l3 = document.querySelector('#joke2').innerHTML;
          let l3Length = l3.length
          console.log(l3.length)
    } 

      else {
      var searchResults = document.querySelector('#joke3')
      searchResults.innerHTML = parsedResults.value;
          const l2 = document.querySelector('#joke2').innerHTML;
          let l2Length = l2.length
          console.log(l2.length)
    } 





















    document.querySelector('#getJoke').addEventListener('click', fetchResults);         //adding event listener -> do something on button click (button with id of get Joke)
                                                                                    // And save event results in a variable called fetchResults


async function fetchResults() {
    let results = await fetch('https://api.chucknorris.io/jokes/random?category=career')
  //  let joke => {return joke.json();}
   // let data => {console.log(data.value)}


 
    //let query = document.querySelector('#getJoke').value;

    // let results = await fetch(`https://api.chucknorris.io/jokes/random`)
    let parsedResults = await results.json();
          var x = 7
           console.log(x)
    //var searchResults = document.querySelector('#joke1');  
    if (x = 7) {  
    var searchResults1 = document.querySelector('#joke1');    
    searchResults1.innerHTML = parsedResults.value;
          var x = 8
          console.log(x)
          console.log(parsedResults.length)

    }
      else if (x = 8) {
        //console.log(parsedResults.length)
      var searchResults2 = document.querySelector('#joke2'); 
      searchResults2.innerHTML = parsedResults.value;
          const l2 = searchResults2.innerHTML;
          let l2Length = l2.length
          console.log(l2.length)

          console.log('Hello')
          console.log(parsedResults.length)
          
    }
    
      else if (l2.length > 0) {
      var searchResults = document.querySelector('#joke3'); 
      searchResults.innerHTML = parsedResults.value;
          const l3 = document.querySelector('#joke2').innerHTML;
          let l3Length = l3.length
          console.log(l3.length)
    } 

      else {
      var searchResults = document.querySelector('#joke3')
      searchResults.innerHTML = parsedResults.value;
          const l2 = document.querySelector('#joke2').innerHTML;
          let l2Length = l2.length
          console.log(l2.length)
    } 
}


















try {
  
  if (x = 1) {
    document.querySelector('#getJoke').addEventListener('click', fetchResults);
    async function fetchResults() {
      let results = await fetch('https://api.chucknorris.io/jokes/random?category=career')
      let parsedResults = await results.json();
      var searchResults = document.querySelector('#joke1');    
      searchResults.innerHTML = parsedResults.value;
      x++;
      console.log(x)
    } 
  }
  else if (x = 2) {
      document.querySelector('#getJoke').addEventListener('click', fetchResults);
      async function fetchResults() {
      let results = await fetch('https://api.chucknorris.io/jokes/random?category=career')
      let parsedResults = await results.json();
      var searchResults = document.querySelector('#joke2');    
      searchResults.innerHTML = parsedResults.value;
      x++;
    }
  }
  else {
      document.querySelector('#getJoke').addEventListener('click', fetchResults);
      async function fetchResults() {
      let results = await fetch('https://api.chucknorris.io/jokes/random?category=career')
      let parsedResults = await results.json();
      var searchResults = document.querySelector('#joke3');    
      searchResults.innerHTML = parsedResults.value;
      x++;
    }
  }
  
  }
  catch (error) {
    console.log('Errors found')
    
  }
  
  
  