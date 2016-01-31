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
