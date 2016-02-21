// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

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
// FOR each voter in vote assign their vote for each position
//   to EACH position in voteCount.

// FOR each candidate in votecount
//   if  candidate votecount is greater then previous officer assign that candidate to
//   officer position.

// __________________________________________
// Initial Solution

for (var i = 0; i < Object.keys(votes).length; i++) {
  voteCount[Object.keys(officers)[0]][Object.keys(votes)[i]] = 0;
  voteCount[Object.keys(officers)[1]][Object.keys(votes)[i]] = 0;
  voteCount[Object.keys(officers)[2]][Object.keys(votes)[i]] = 0;
  voteCount[Object.keys(officers)[3]][Object.keys(votes)[i]] = 0;
}

for (var i = 0; i < Object.keys(votes).length; i++) {
  for (var y = 0; y < Object.keys(officers).length; y++) {
    voteCount[Object.keys(officers)[y]][votes[Object.keys(votes)[i]][Object.keys(officers)[y]]] += 1;
  }
}

function assign_officers() {
  var high = null;
  var max = 0;
  var candidates = null;
  for (var z = 0; z < Object.keys(officers).length; z++) {
    high = null;
    max = 0;
    candidates = voteCount[Object.keys(officers)[z]];
    for (var candidate in candidates) {
      if (candidates.hasOwnProperty(candidate)) {
        if (candidates[candidate] > max) {
          high = candidate;
          max = candidates[candidate];
        }
      }
    }
    officers[Object.keys(officers)[z]] = high;
  }
}

// __________________________________________
// Refactored Solution

for (var voter in votes) {
  for (var office in officers) {
    voteCount[office][votes[voter][office]] === undefined ? voteCount[office][votes[voter][office]] = 1 : voteCount[office][votes[voter][office]]++;
  }
}
function assign_officers() {
  for (var officer in officers) {
    var office = voteCount[officer];
    for (var candidate in office) {
      if (officers[officer] === undefined || office[candidate] > office[officers[officer]]) {
        officers[officer] = candidate;
      }
    }
  }
}

// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
// -I learned that it is way easier than I originally thought and much like every
// other iterating over x execise we've done as long as you keep the values straight.

// Were you able to find useful methods to help you with this
// No.

// What concepts were solidified in the process of working through this challenge?
// iterating over objects and nested for loops.




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