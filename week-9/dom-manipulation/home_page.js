// DOM Manipulation Challenge


// I worked on this challenge with: Austin Dorff.


// Add your JavaScript calls to this page:

// Release 0:
// Set up



// Release 1:
var div_r_1 = document.getElementById("release-0");
div_r_1.className = "done";

// Release 2:
var div_r_2 = document.getElementById('release-1');
div_r_2.style.display = "none";

// Release 3:
var div_r_3 = document.getElementsByTagName('h1')[0];
div_r_3.innerHTML = "I completed release 2.";


// Release 4:
var div_r_4 = document.getElementById('release-3');
div_r_4.style.backgroundColor = "#955251";

// Release 5:
var div_r_5 = document.getElementsByClassName("release-4");
   for (var i = 0; i < div_r_5.length; i++) {
    div_r_5[i].style.fontSize = "2em";
  }

// Release 6:
var template = document.getElementById('hidden');
document.body.appendChild(template.content.cloneNode(true));


