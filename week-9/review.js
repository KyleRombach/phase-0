/* Psedocode */
// Create a new list that is an object
// Make a fucntion that adds an item to object with quantity
// Make a function that removes item from object
// Make a function that updates quantity of item
// Make a function that prints out the list


/* Initial Solution */

 // var grocery_list = {
 //    list: {},
 //    add_item: function (item, quantity) {
 //      this.list[item] = quantity;
 //    }
 //    remove_item: function (item){
 //      delete this.list[item];
 //    }
 //    update_quantity: function (item, quantity) {
 //      this.list[item] = quantity;
 //    }
 //    print_list: function () {
 //      for (var item in this.list) {
 //        console.log(item + ": " + this.list[item]);
 //      }
 //    }
 //  };

/* Refactored Solution */

function groceryList (list) {
  this.list = {};
  for (var i = 0; i < list.length; i++) {
    this.list[list[i]] = 0;
  };

  this.add_item = function(item, quantity) {
    (this.list.hasOwnProperty(item)) ? this.list[item] += quantity : this.list[item] = quantity;
  };

  this.delete_item = function(item) {
    delete this.list[item];
  };

  this.update_list = function(item, quantity) {
    if (this.list.hasOwnProperty(item)) {
      this.list[item] = quantity;
    };
  };

  this.print_list = function() {
    for (var item in this.list) {
      console.log(item + ": " + this.list[item]);
    };
  };
};

var list = new groceryList ({
  cookies: 10,
  apples: 5,
  soda: 6
});

list.add_item("oranges", 4)
list.delete_item("apples")
list.update_list('oranges', 20)
list.print_list(groceryList)

/* Reflection */

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

It helped me with using constructors and how to use this.

What was the most difficult part of this challenge?


Did an array or object make more sense to use and why?