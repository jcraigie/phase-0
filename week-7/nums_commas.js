// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Austin Dorff.

// Pseudocode
// ACCEPT a number.
// INITIALIZE a variable which stores the following 
//   SPLIT the number into individual numbers
//   REVERSE all of the numbers
//   and store in blocks of three ideally or at least one
//   ITERATE over the blocks REVERSING them and their order 
//   JOIN the blocks with a comma in between

// Initial Solution

var str = "12421123"
str = str.split("").reverse().join("").match(/.{1,3}/g).reverse().join(",");
console.log(str);

//initially thought to work but upon further inspection this did not work

// Refactored Solution
function separateCommas(str) {
  var arr =  str.split("").reverse().join("").match(/.{1,3}/g);
  for (var i = 0; i < arr.length; i++) {
    arr[i] = arr[i].split("").reverse().join("");
  }
  return arr.reverse().join(",")
}

// Your Own Tests (OPTIONAL)
console.log(separateCommas(str));


// Reflection
// What was it like to approach the problem from the perspective of JavaScript? 
// Did you approach the problem differently?
// - Truthfully I don't recall how we initially approached the Ruby version but 
// I do know our original code was much more involved than with Javascript.

// What did you learn about iterating over arrays in JavaScript?
// - That is is relatively straightforward though I feel it isn't quite as easy 
// as in Ruby.

// What was different about solving this problem in JavaScript?
// - I felt that Javascript encouraged very concise code with a lot going on in 
// a few long lines of methods.

// What built-in methods did you find to incorporate in your refactored solution?
// -While we didn't use it solely in our refasctored solution we did grow to better 
// understand match.