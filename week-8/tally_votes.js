// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Jack
// This challenge took me [1.25] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// * A function of "voteCount" taking an array of votes.
// * Go through each voter and get their vote-card
// * Go through each position in "voteCount".
//   If the position from the voter-card is not existing in voteCount, add and set to 1, else increment by 1




// * A function of 'voteCount' tallying the votes
// * assign 'officers' based on highest 'voteCount'
// * print 'officers'

// __________________________________________
// Initial Solution

// var tally = function(votes){
//   for (var voter in votes){
//     var vote = votes[voter];
//     for (var position in vote){
//       var nominee = vote[position];
//       if (voteCount[position].hasOwnProperty(nominee)){
//         // One additional vote if they exist in voteCount already
//         voteCount[position][nominee]++;
//       } else {
//         // Else, doesn't exist, add the nominee for first time
//         voteCount[position][nominee] = 1;
//       }
//     }
//   }
// };


// tally(votes);
// var results = function(voteCount){
//   for (var position in voteCount){
//      var highestNominee = '';
//      var highest = 0;
//     for (var nominee in voteCount[position]){
//       if (voteCount[position][nominee] > highest){
//         highest = voteCount[position][nominee];
//         highestNominee = nominee;
//       }
//     }
//    officers[position] = highestNominee;
//  }
// };

// results(voteCount);
// console.log(officers)
// __________________________________________
// Refactored Solution

var tally = function(votes){
  for (var voter in votes){
    var vote = votes[voter];
    for (var position in vote){
      var nominee = vote[position];
      voteCount[position][nominee] = (voteCount[position].hasOwnProperty(nominee)) ? voteCount[position][nominee] + 1 : 1;
    }
  }
};


tally(votes);
var results = function(voteCount){
  for (var position in voteCount){
    var highest = 0;
    for (var nominee in voteCount[position]){
      if (voteCount[position][nominee] > highest){
        highest = voteCount[position][nominee];
        officers[position] = nominee;
      }
    }
  }
};

results(voteCount);
console.log(officers)




// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?

// The for in loop mechanism is very useful.The variable does contain the key unlike an array which is the index.

// Were you able to find useful methods to help you with this?

// Yes we used has own property, which was very useful.

// What concepts were solidified in the process of working through this challenge?

// Iterating through object properties and has own property, and for in loops. Also creating functions outside of an object.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)