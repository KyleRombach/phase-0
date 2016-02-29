// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:

var first_div = document.getElementById('release-0')
 first_div.className += 'done';


// Release 1:

var second_div = document.getElementById('release-1')
  second_div.style.display = "none";



// Release 2:

var firstH1 = document.getElementsByTagName('h1')[0]
  firstH1.innerHTML = "Finish release 2.";



// Release 3:

document.getElementById('release-3').style.backgroundColor = "#955251";



// Release 4:


var words = document.getElementsByClassName('release-4')
for (var word = 0; word < words.length; word++) {
  words[word].style.fontSize = "2.0em";
}


// Release 5:

var templ = document.getElementById('hidden');
document.body.appendChild(templ.content.cloneNode(true));


// Reflection

// What did you learn about the DOM?

// It's a lot of dot notation to access what I need and then just do normal JavaScript from there.


// What are some useful methods to use to manipulate the DOM?

//  getElementById is really useful as well as .getElementsByClassName. Style is helpful since it's what you need to get your styles set.