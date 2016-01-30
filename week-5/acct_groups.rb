names = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

def group_creator(names, group_size)
 nam_array = names.split(", ")
 cohort = {}
 grp_counter = 1
 grp_reg = group_size
 grp_lrg = grp_reg + 1
 temp_array = []
 lrg_grp = (nam_array.length % grp_reg)
#random = rand(nam_array.length)

 if nam_array.length > 0 && lrg_grp > 0
  while lrg_grp > 0
   temp_array.push(nam_array.sample(grp_lrg))
   nam_array.delete(temp_array)
   cohort.store("Cohort #{grp_counter}", temp_array)
   grp_counter += 1
   lrg_grp -= 1
  end
#else 
 #while nam_array.length > 0
 # temp_array.push(nam_array.sample(grp_reg))
  #nam_array.delete(temp_array)
  
 #end
p temp_array  
p nam_array
p cohort
 # cohort["Group #{grp_counter}"]() * 3
#  grp_counter += 1
 end
end

group_creator(names, 4)
#p cohort