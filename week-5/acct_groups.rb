#Pseudocode
#take the list of names and desired group size and arguments
#determine names length
#determine number of overflow students that can't be cleanly grouped 
#set a Large Group counter equal to that
#for the number of large groups sample from names the desired number of students + 1 and store in a temporary array
#remove the names in the temp array from the names list
#store the temp array in a hash as the value with an appropriate name for key
#clear the temp array and reset / iterate any counters
#for the remainder of the names list sample from names the desired number of students + 1 and store in a temporary array
#remove the names in the temp array from the names list
#store the temp array in a hash as the value with an appropriate name for key
#clear the temp array and reset / iterate any counters
#return array

names = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

def group_creator(names, group_size)
  cohort = {}                    #for the final output
  grp_counter = 1                #for naming of the groups within cohort
  grp_reg = group_size           #Regular group size as requested
  grp_lrg = grp_reg + 1          #Group size to account for overflow
  temp_array = []                #Temporary container to be saved in cohort
  lrg_grps = (names.length % grp_reg)#determines number of overflow individuals 
  
  while names.length > 0 && lrg_grps > 0
    while grp_lrg > 0                 #randomly creates array of members for group and removes them from the master list    
      temp_array.push(names.sample)
      temp_array.each {|x| names.delete(x)}
      grp_lrg -= 1
    end
    if grp_lrg == 0                   #stores temporary group array in cohort hash and names it sequentially
      cohort.store("Group #{grp_counter}", temp_array)
      grp_counter += 1                #for naming of the groups within cohort
      lrg_grps -= 1
    end
  temp_array = []                     #to clear the array. Was unable to figure out other method for doing
  grp_lrg = (grp_reg + 1)             #resets group size
    
  end    
  while names.length > 0 && lrg_grps == 0
    while grp_reg > 0                 #randomly creates array of members for group and removes them from the master list
      temp_array.push(names.sample)
      temp_array.each {|x| names.delete(x)}
      grp_reg -= 1
    end
    if grp_reg == 0                   #stores temporary group array in cohort hash and names it sequentially
      cohort.store("Group #{grp_counter}", temp_array)
      grp_counter += 1                #for naming of the groups within cohort
    end  
  temp_array = []                     #to clear the array. Was unable to figure out other method for doing
  grp_reg = group_size                #resets group size
  end
p cohort
end

group_creator(names, 4)

#What was the most interesting and most difficult part of this challenge?
#The most intereting part was working around the noncleanly divided members and accounting for them in the groups. The most frustrating was figuring out how to get my 
# clear the temporary array so it wouldn't return one set of members as all of the groups. I need to find a better way to do that but ran out of time.

#Do you feel you are improving in your ability to write pseudocode and break the problem down?
#I do. I revisited and revised the psuedocode mutiple times as the problem evolved and I needed to redefine my approach to the problem

#Was your approach for automating this task a good solution? What could have made it even better?
#It works so I suppose it's good. I am sure that there are much more concise and elegant ways to do everything that I did but I am not there yet though
#I did learn a lot from this excercise.

#What data structure did you decide to store the accountability groups in and why?
#I used a hash because I wante to name the groups and it felt right.

#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#I learned about sample and became more familiar with delete