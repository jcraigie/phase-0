// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

// Pseudocode
// DEFINE a new List
// Create a FUNCTION that sets an item as a List key and it's quantity as the value.
// 

// INITIAL SOLUTION
// var groceries = "apple beans juice";
// var list = {};
// function new_list(shopping){
//   var new_shopping = [];
//   new_shopping = shopping.split(" ");
//   for (var i = 0; i < new_shopping.length; i++){
//     var item = new_shopping[i];
//     list[item] = "0";
//   }
// console.log(new_shopping);  
// console.log(list);
// }
// new_list(groceries);

// function add_to_list(grocery, amount){
//   list[grocery] = amount;
  
// console.log(list);
// }
// add_to_list("pork loin", 3);

// function delete_from_list(grocery) {
//   delete list[grocery];

// console.log(list);
// }

// delete_from_list("beans");

// function update_quantity(grocery, new_quantity){
//   list[grocery] = new_quantity;
  
// console.log(list);
// }

// update_quantity("apple", 2);

// function print(grocery){
// console.log("Your grocery list:")
//   for(var item in grocery){
//     var food = item;
//     console.log(food + " " + grocery[item] + ",");
//   }
  
// }  

// print(list);

// REFACTORED

var list = {};
function new_list(shopping){
  var new_shopping = [];
  new_shopping = shopping.split(" ");
  for (var i = 0; i < new_shopping.length; i++){
    var item = new_shopping[i];
    list[item] = "0";
  }
  
console.log(list);
}

function add_to_list(grocery, amount){
  list[grocery] = amount;
  
console.log(list);
}

function delete_from_list(grocery) {
  delete list[grocery];

console.log(list);
}

function update_quantity(grocery, new_quantity){
  list[grocery] = new_quantity;
  
console.log(list);
}

function print(grocery){
console.log("Your grocery list:");
  for(var item in grocery){
    console.log(item + " " + grocery[item] + ",");
  }
}  


var groceries = "apple beans juice";

new_list(groceries);
add_to_list("pork loin", 3);
delete_from_list("beans");
update_quantity("apple", 2);
print(list);

// REFLECTION
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// -

// What was the most difficult part of this challenge?
// -

// Did an array or object make more sense to use and why?