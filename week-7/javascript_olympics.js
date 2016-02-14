 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.

// Warm Up
function Athlete(name, age, event, quote) {
  this.name = name;
  this.age = age;
  this.event = event;
  this.quote = quote;
}

var athletes = [];
var mp = new Athlete("Michael Phelps", 29, "swimming", "I swear this is medicinal!");
athletes.push(mp);

// Bulk Up

function add_win_property(athletes) {
  for (var i = 0; i < athletes.length; i++) {
    athletes[i].win = athletes[i].name + " won the " + athletes[i].event;
  }
}

// Jumble your words
var str = "Jumble your words!"
str = str.split("").reverse().join("");



// 2,4,6,8
var arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
function get_evens(array) {
  var ret_array = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 === 0) {
      ret_array.push(array[i]);
    }
  }
  return ret_array;
}

// 1,3,5,7
function get_odds(array) {
  var ret_array = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 === 1) {
      ret_array.push(array[i]);
    }
  }
  return ret_array;
}

// "We built this city"

// LOOK ABOVE AT WARM UP FOR SOLUTION

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.event + " " + michaelPhelps.quote)

// Reflection



// Reflection

