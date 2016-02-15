// PERSON 2:

// (Pseudocode based on only reading Person 1's User stories)


//assert test
        // Create an assert function that accepts an array of integers as an agrument. If the input is an integer return true, if its not throw an error message.

function assert(array){
    for (var x = 0; x < array.length; x+=1){
        if (array[x] % 1 === 0){
            true;
        }else{
            throw "there is a non-integer present";
        }   
    }
}
console.log(assert([1,2,3,4,5]))

// tests for sum
        // Create a function name sum that accepts an array of integers as an argument
        //Declare a new variable as the running total set equal to zero
        //Create a FOR loop to cycle through each arguments passed to the sum function. Compare each argument until it reaches the length of the argument. Add it to the total
        // Return the running total variable
        // Call the sum function with even numbers
        // Call the sum function with odd numbers

function sum(array){
    var total = 0;
    for (var x = 0; x < array.length; x += 1 ){
            total += array[x];
        }
        return total;
}

console.log(sum([2,4,6,8,10]))
console.log(sum([1,3,5,7,9,11]))

// tests for mean
        // Create a function named mean that accepts an array of integers as an argument
        //Determine a new sum function FOR each integer in the argument. Add it to the total
       //Divide the running total of the argument array by the length of array to determine the mean
        // Return this mean
        // Call the mean function with even numbers
        // Call the mean function with odd numbers

function mean(array){
    var total = 0;
    for (var x = 0; x < array.length; x += 1 ){
            total += array[x];
        }
        return total / (array.length);
}

console.log(mean([2,4,6,8,10]))
console.log(mean([1,3,5,7,9,11]))

// tests for median
        // Create a function median that accepts an array of integers as an argument
        //Sort the integer from least to greatest
        //Find the length of the integers
        //IF the length of the integer is odd (use Modulous)
        //Find the middle number as Math.round which is integerlength minus 1 divided by 2
        //Return the median value
        //ELSE get the two middle values
        //Calculate the average of the two values
        //Return the median value
        // Call the median function with even numbers
        // Call the median function with odd numbers
        
function median(array){
    var sorted = array.sort(function(a, b){return a-b});
    var length = array.length;
    var median = Math.floor((array.length - 1) / 2);
    if (length % 2 == 1){
        return array[median];
    }else{
        return array[median];
    }

}


console.log(median([2,4,6,8,12,14,16,18]))
console.log(median([1,3,5,7,9,11,13,15,17,19,21,23,25]))