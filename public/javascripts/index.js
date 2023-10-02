/*
this is the code for the functionality of page's components like buttons and search 
bars. I have three possible  ways of possibly multiple ways of placing the self 
driving algorithms on the page. 
*/

/*
    Write code for html page to take in user inputs and save them 
*/

/*Method 1
    Here it sends a post request to routes/selfDrive.js. This will preform calculations 
    needed for the self driving ai program and send back information in the data parameter.
    You can add parameters such as user inputs in the curly brackets 

    Pros: This keeps the self driving algorithm hidden from the user
    Cons: This might be slow. The ai algorithm has to be rewritten in javascript.
*/

//Example
// $.post('/selfDrive',{parameter: 'Example'}, function(data,status){
//     // this is what the backend spits out for now.
//     document.getElementById("Paragraph").innerHTML = data;
    
// });  

/*Method 2
    Just put the self driving code here. 
    
    Pros: This might be faster. This is also a lot simpler
    Cons: The issue is the user will be able to see it on the browser with inspect 
          element. You will have to rewrite the ai code in javascript
*/

//Example
//document.getElementById("Paragraph").innerHTML = data;

/*Method 3
    make a fetch request to a python api hosted on either an aws instance or on 
    pythonanywhere
*/

//Example 
// fetch('https://anandgogoi.pythonanywhere.com/')
//   .then(response => {
//     // Check if the response status is OK (200)
//     if (!response.ok) {
//       throw new Error('Network response was not ok');
//     }
//     // Parse the response body as JSON
//     return response.json();
//   })
//   .then(data => {
//     // Work with the JSON data
//     console.log(data);
//   })
//   .catch(error => {
//     // Handle any errors that occurred during the fetch request
//     console.error('Fetch error:', error);
//   });





console.log("hello world");