// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



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


// Your Own Tests (OPTIONAL)




// Reflection