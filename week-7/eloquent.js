// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var something = 5
console.log(something * 2);

var fav_food = prompt("What is your favorite food?");
console.log("Hey! " + fav_food + " is my favorite food too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var triangle = "#"
while(triangle.length < 8){
    console.log(triangle);
    triangle += "#";
}


for (var triangle = "#"; (triangle.length < 8); triangle += "#")
    console.log(triangle);
   

// Functions

// Complete the `minimum` exercise.

function min(number1, number2) {
  if (number1 < number2)
    return number1;
  else 
    return number2;
}

console.log(min(3, 1))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "John Craigie",
  age: 37,
  Favorite_foods: ["Chicken Fried Steak", "Pizza", "Quiche"],
  quirk: "Plays in the SCA",
}