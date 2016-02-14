 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: To take venture forth from Earth station and mine an asteroid.
// Goals: Fill your hold with minerals from an asteroid and return to Earth station.
// Characters: Earth station, Mars, Asteroid, ORE Hulk
// Objects: Mining ray, minerals
// Functions:Travel, Scan, Mine, Dock, Land, Unload

// Pseudocode
//
//CHARACTERS and OBJECTS
//define the ORE Hulk
//  it can hold 5 m3 of minerals but can't enter any atmosphere
//define Earth station 
//  The hulk can dock here and unload
//Define Mars
//  Has an atmosphere is 10 units from earth
//define asteroid
//  No atmosphere, has mineable minerals and is 15 units from earth
// Mining ray
//  Useable by hulk, mines minerals 
// minerals
//  one unit is one 1 m3
//
//FUNCTIONS
//Travel X
//  Travels a specified number of units   
//Scan 
//  Gives distance and some properties of objects.
//Mine
//  Uses the mining laser
//Dock
//  docks with a station
//Land
//  lands on a planet
// Unload
//   Unloads Ore

// Initial Code
// var hulk ={
//   cubicCapacity: 5,
//   currentCubicLoad:  0,
//   atmosphericCapable: false,
//   canDock: true,
//   dockedWith:false,
//   canUseMiningLaser: true,
//   currentLocation: 0,
//   damage: 0,
//   damageCapacity: 2,
//   goalToGo: 5,
// }

// var earthStation = {
//   canDock: true,
//   dockedWith:false,
//   location: 0,
// }

// var mars = {
//   hasAtmosphere: true,
//   canDock: false,
//   location: 10
// }

// var asteroid = {
//   hasAtmosphere: false,
//   hasMineral: true,
//   location: 15,
// }

// var miningLaser = {
//   canMine: true,
//   rate: 1,
// }

// var minerals = {
//   volume: 1,
//   mineable: true,
// }
// //Travel X
// //  Travels a specified number of units   
// function travel(destination) {
//   var distance = distance(destination)
//   hulk.currentLocation = distance 
//   console.log("Here we go!")
//   for (var counter = distance; counter >= 1; counter -= 1)
//     distance * console.log("*");
//   console.log("We're here!");
// }

// //Scan 
// //  Gives distance and some properties of objects.
// function scan(place) {
//   console.log("Distance: " + place.location +" Units.");
  
//   if (place.hasAtmosphere == true)
//     console.log("It has an atmosphere.");
//   else
//     console.log("No atmosphere detected.");
  
//   if (place.hasMineral == true)
//     console.log("It has Minerals.");
//   else
//     console.log("No Minerals detected.");
// }
// //Mine
// //  Uses the mining laser
// function mine(target) {
//   if (hulk.canUseMiningLaser == true && miningLaser.canMine == true){
//     if (hulk.currentCubicLoad < hulk.cubicCapacity && ((hulk.currentLocation - (-1 * target.location)) <= 1) ){
//       hulk.currentCubicLoad ++;
//       console.log("One cubic meter of ore has been added.");
//     }
//     else if ((hulk.currentLocation - (-1 * target.location)) >= 1){
//       console.log("We are out of range.");
//     }
//     else{
//       console.log("we are out of room.");
//     }
//   }  
//   else{
//     console.log("No mining laser is equipped")
//   }
// }
// //Dock
// //  docks with a station
// function dock(target) {
//   if (hulk.canDock && target.canDock){
//     hulk.dockedWith = true;
//     earthStation.dockedWith = true;
//     console.log("Docking in 3...2....1...Docked!")
//   }
//   else if(hulk.canDock == false){
//     console.log("Our Airlock has been damaged and we cannot dock.")
//   }
//   else{
//     console.log("You can not dock here.")
//   }
// }
// //Land
// //  lands on a planet
// function land(target) {
//     if (target.hasAtmosphere == true && hulk.atmosphericCapable == false) {
//         hulk.canDock = false;
//         hulk.damage += 1;
//         if (hulk.damage == hulk.damageCapacity) {
//             console.log("HULL BREACH IMMINENT...BOOM!!!!!");
//             console.log("YOU LOSE");
//         } else {
//             console.log("We cannot enter the atmosphere and have experienced hull damage!");
//         }
//     }    
//     else {
//         console.log("We have landed");
//         }
// }
// // Unload
// //   Unloads Ore
// function unload(){
//     if (hulk.dockedWith == true && earthStation.dockedWith == true) {
//         hulk.goalToGo -= hulk.currentCubicLoad; 
//         console.log("We have unloaded " + hulk.currentCubicLoad + " cubic meters of ore.")  
//     }
//     else {
//         console.log("We need to dock before we can unload.")  
//     }
//     if (hulk.goalToGo < 1) {
//       console.log("You have fulfilled your contract.")
//       console.log("You win!!! Whoooooo!")
//     }  
// }





// Refactored Code
var hulk ={
  cubicCapacity: 5,
  currentCubicLoad:  0,
  atmosphericCapable: false,
  canDock: true,
  dockedWith:false,
  canUseMiningLaser: true,
  currentLocation: 0,
  rateOfTravel:1,
  damage: 0,
  damageCapacity: 2,
  goalToGo: 5,
}

var earthStation = {
  canDock: true,
  dockedWith:false,
  location: 0,
}

var mars = {
  hasAtmosphere: true,
  canDock: false,
  location: 10
}

var asteroid = {
  hasAtmosphere: false,
  hasMineral: true,
  location: 15,
}

var miningLaser = {
  canMine: true,
  rate: 1,
}

var minerals = {
  volume: 1,
  mineable: true,
}
//Range
//distance from Hulk to target
function range(target) {
  return (hulk.currentLocation - (-1 * target.location));
}

//Travel X
//  Travels a specified number of units   
function travel(destination) {
  var distance = range(destination);
  hulk.currentLocation = distance; 
  var counter = distance; 
  console.log("Here we go!");
  if (distance >= 1){
    while (counter >= 1){
        console.log("*");
        counter -= 1;
    }    
  }else{    
  console.log("We're here!");
  }
}

//Scan 
//  Gives distance and some properties of objects.
function scan(place) {
  console.log("Distance: " + range(place) +" Units.");
  place.hasAtmosphere ? console.log("It has an atmosphere.") : console.log("No atmosphere detected.");
  place.hasMineral ? console.log("It has Minerals.") : console.log("No Minerals detected.");
}

//Mine
//  Uses the mining laser
function mine(target) {
  if (hulk.canUseMiningLaser == true && miningLaser.canMine == true){
    if (hulk.currentCubicLoad < hulk.cubicCapacity && ((range(target) >= 1) <= 1) ){
      hulk.currentCubicLoad ++;
      console.log("One cubic meter of ore has been added.");
    }
    else if (range(target) >= 1){
      console.log("We are out of range.");
    }
    else{
      console.log("we are out of room.");
    }
  }  
  else{
    console.log("No mining laser is equipped")
  }
}
//Dock
//  docks with a station
function dock(target) {
  if (hulk.canDock && target.canDock){
    hulk.dockedWith = true;
    earthStation.dockedWith = true;
    console.log("Docking in 3...2....1...Docked!")
  }
  else if(hulk.canDock == false){
    console.log("Our Airlock has been damaged and we cannot dock.")
  }
  else{
    console.log("You can not dock here.")
  }
}
//Land
//  lands on a planet
function land(target) {
    if (target.hasAtmosphere == true && hulk.atmosphericCapable == false) {
        hulk.canDock = false;
        hulk.damage += 1;
        if (hulk.damage == hulk.damageCapacity) {
            console.log("HULL BREACH IMMINENT...BOOM!!!!!");
            console.log("YOU LOSE");
        } else {
            console.log("We cannot enter the atmosphere and have experienced hull damage!");
        }
    }    
    else {
        console.log("We have landed");
        }
}
// Unload
//   Unloads Ore
function unload(){
    if (hulk.dockedWith == true && earthStation.dockedWith == true) {
        hulk.goalToGo -= hulk.currentCubicLoad; 
        console.log("We have unloaded " + hulk.currentCubicLoad + " cubic meters of ore.")  
    }
    else {
        console.log("We need to dock before we can unload.")  
    }
    if (hulk.goalToGo < 1) {
      console.log("You have fulfilled your contract.")
      console.log("You win!!! Whoooooo!")
    }  
}

travel(mars)
console.log(hulk.currentLocation)
scan(asteroid)
land(mars)
mine(asteroid)
console.log(hulk)
land(mars)

// Reflection
//What was the most difficult part of this challenge?
//-The most difficult part for me was keeping the if and else statements straight 
// and opening and closing them appropriately. 
// 
//What did you learn about creating objects and functions that interact with one another?
//- I learned that it is not as hard as I originally thought and relatively easy 
// if one can keep the various properties straight.

//Did you learn about any new built-in methods you could use in your refactored 
// solution? If so, what were they and how do they work?
//- I did not encounter any new methods in my refactoring. 

//How can you access and manipulate properties of objects?
//- By calling the onject by name with the property name and manipulating it as 
// you see fit. Properties can be reassigned values or or if they are a data 
// structure they can be iterated over for instance.
