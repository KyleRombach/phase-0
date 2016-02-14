// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var apples = 5;
apples = apples - 2;

var favFood = prompt('What\'s your favorite food?', ''); alert('Hey! That\'s my favorite too!');

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var triangle = "#"; triangle.length <= 7; triangle += "#") console.log(triangle)


// Functions

// Complete the `minimum` exercise.

  function min(x,y) {
    if (x <= y) {
        return x
      }; return y;
  }

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = { name: "Kyle", age: 25, favorite_foods: ["Sushi", "Pizza", "Ice Cream"], quirk: "I like to bake." }