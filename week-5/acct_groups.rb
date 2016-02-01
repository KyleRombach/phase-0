=begin
pseudo code
First determine size of group.
Grouping will either be five or three.
Once grouping determined assign them to groups.
Print out list of all the groups.

=end

cohort = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

def acct_groups(names)
  x = names.size
  if x%5 == 0
    group = names.each_slice(5).to_a
  else
    group = names.each_slice(3).to_a
  end
  acct_group = Hash.new
  group.each_with_index {|acct,names| acct_group[acct] = names}
  return acct_group
end

p acct_groups(cohort)

=begin
- What was the most interesting and most difficult part of this challenge?

It was pretty much up to you to figure out how you want to solve the solution. There was pretty much no guidance other then what you wanted the end result to be but we can make it as in depth or shallow as we want.

- Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yea each time it seems to be easier. It makes me really think about what methods I want to implement based on my ideas of what I want the code to do.

- Was your approach for automating this task a good solution? What could have made it even better?

It allowed me to get the grouping but it could've been better. It needs to have it so the sizing of each group can vary and that the group assignments are random and not based in order. I also need to make the key start at one for the groupings.

- What data structure did you decide to store the accountability groups in and why?

I used a hash because it allowed me to have the accountability groups and then I used an array for the values so the keys could have multiple names for the result.

- What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

While able to get this to work at the mininum there is still amore more I can learn on how to improve my methods.


=end