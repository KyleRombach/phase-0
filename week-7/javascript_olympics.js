// JavaScript Olympics

// I paired [John] on this challenge.

// This challenge took me [1] hours.


// Warm Up





// Bulk Up

var athletes = [{name: "Sarah Hughes", event: "Ladies' Singles" } , {name: "Jack", event: "Sports"}  ] ;

function print_events( athletes ) {

  for ( var i = 0; i < athletes.length; i++) {

    // console.log(i)
    // console.log(athletes[i])
    athletes[i].win =  athletes[i].name + " won the " + athletes[i].event;
    // console.log(athletes[i])
    }
}

print_events(athletes);

console.log(athletes);


// Jumble your words

var string = "words"

function reverse(string) {
string = string.split('').reverse().join('');
return string
}
string = reverse(string);
console.log(string)


// 2,4,6,8

var numbers = [1,2,3,4,5,6,7,8]

function even(array) {

  var evens = [];

  for (var i = 0 ; i < array.length; i++) {

    if (i % 2 == 0)
      {
        evens.push(i);
      }

  }


  return evens;
}

console.log(even(numbers))

// "We built this city"

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

function Athlete(name, age, sport, quote) {
this.name = name;
this.age = age;
this.sport = sport;
this.quote = quote;
}
// // Reflection

// What JavaScript knowledge did you solidify in this challenge?

// How to access elements from an array.

// What are constructor functions?

// It's similiar to a Class in Ruby. It allows you to store variables and then call on them later as much as you want similair to instance variables.

// When you use a class it makes a new object but a constructor is an object that makes a new object based on a prototype.
//