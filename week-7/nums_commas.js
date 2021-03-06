// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Take a number as an argument
// Convert number to string then turn into an array
// Reverse array and then splice into 3 parts
// Join comma to end of arrays and then reverse again
// Print the result
// Initial Solution
// function seperateComma(number)
// {
//   var array_number = number.toString().split('').reverse();
//   var empty_array = [];

//   if (array_number.length <= 3)
//     {
//       console.log(number);
//     }
//   else
//   {
// while (array_number.length > 3)
//   {
//     empty_array = empty_array.concat(array_number.splice(0, 3));
//     empty_array.push(",");
//   }
//   empty_array = empty_array.concat(array_number);
//   console.log(empty_array.reverse().join(""));
//     }
// }

// Refactored Solution

function seperateComma(number)
{
  var array_number = number.toString().split('').reverse();
  var empty_array = [];

while (array_number.length > 3)
  {
    empty_array = empty_array.concat(array_number.splice(0, 3));
    empty_array.push(",");
  }
  empty_array = empty_array.concat(array_number);
  console.log(empty_array.reverse().join(""));
}


// Your Own Tests (OPTIONAL)
seperateComma(123)
seperateComma(1000000)


// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// It felt pretty similar to how I would do it on Ruby. Other than the syntax differences it wasn't too bad.

// What did you learn about iterating over arrays in JavaScript?

// You can just use the while method and don't have to add anymore and it will iterate as long as the declaration is true.

// What was different about solving this problem in JavaScript?

// You have to make sure to redeclare values to be equal to what you are doing.

// What built-in methods did you find to incorporate in your refactored solution?

// We felt that our solution was pretty DRY so we didn't refactor it.