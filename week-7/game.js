// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Escape the room
// Goals: Find the key and then use it to unlock door.
// Characters: Player
// Objects: Key and door
// Functions: Move, add key, open door.

// Pseudocode
// Define player and give him a key value.
// Add ways to move around
// Add key and door with random positions
// While player is moving declare where the key is.
// Once player has key, tell them where the door is.
// If player gets to door with key, player has won.
// If player gets to door without key, player must find key.


// Initial Code

var player = {
posX: 0,
posY: 0,
key: 0,
escape: false,


move: function(direction) {
  if(direction === 'right') {
    this.posX +=5;
  }
  else if(direction === 'left'){
    player.posX -=5;
  }
  else if(direction === 'up'){
    player.posY +=5;
  }
  else if(direction === 'down'){
    player.posY -=5;
  }

  console.log("Key position is " + key.posX + "," + key.posY);

console.log('Player\'s position is ' + player.posX + "," + player.posY);

if(player.posX === key.posX && player.posY === key.posY){
  player.key === 1;
  player.escape = false;
  console.log('You have the key, now find the door to escape!');
  console.log('Door is at ' + door.posX + "," + door.posY);
  }

 if(player.posX === door.posX && player.posY === door.posY && player.key === 0){
  player.escape = false;
  console.log('You need the key to escape first');
  }

else if(player.posX === door.posX && player.posY === door.posY && player.key === 1){
  player.escape = true;
  console.log('Congrats you found the key and escaped!')
}

}

};

var key = {
  posX: Math.floor((Math.random()*50)+1),
  posY: Math.floor((Math.random()*50)+1)
};

var door = {
  posX: Math.floor((Math.random()*50)+1),
  posY: Math.floor((Math.random()*50)+1)
};

player.move('right')
player.move('up')
// Refactored Code






// Reflection
//What was the most difficult part of this challenge?

// Trying to think of a game was pretty hard especially because my javascript knowledge isn't that great so I didn't want to make anything too complex.

// What did you learn about creating objects and functions that interact with one another?

// It was pretty cool to see that when I had my player at the same location as the key, it would work and display my message of needing to find the door. I could add more functions, such as making it an action to call for the key location instead of having it be declared everytime I move.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

//No I didn't get to refactor as much as I wanted because I was runnign behind. If anything I'd like to learn about other kinds of functions I can make.

// How can you access and manipulate properties of objects?

// You can use the dot notation or array. Perhaps I could add more keys and assign them an array value.
