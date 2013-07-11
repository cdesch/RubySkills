#Multiples of 3 and 5
#ProblemOne
#Author: cj -- cjdesch.com
# This is my VERY FIRST attempt at writing Ruby so I probably won't have anything
# beautiful until after I get the basics down (loops, arrays, functions and stuff).
# I'll comeback and rewrite them to take better advantages of the language, but
# since I'm trying to do each problem in 15 minute scrum sessions to learn a ruby
# I will just shoot for solving the problem at first.


#Descrition
#    If we list all the natural numbers below 10 that are multiples
#    of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
#    Find the sum of all the multiples of 3 or 5 below 1000.

#Find the multiple #Doesnt really need to be a function but hey, we are learning here
def multiple(a,b)
  return a*b
end

#Return the list of multiples for a number and it's max value
def getMultipleList(x,max)
  result = x
  i = 1
  list = Array.new
  #Find each multiple of the number and add it to the array
  while result < max do
    result = multiple(x,i)
    i += 1
    #Avoid the last number dangling above the max value
    if result < max
      list.push(result)
    end

  end
  return list
end

#Combine the lists and remove the duplicates
def reconcileDuplicates(a,b)

  combined = a + b
  return combined.uniq
end

#Return the sum of the list
def sumListItems(list)
  sum = 0
  list.each{ |x| sum += x }
  return sum
end


#gets both Lists
list = getMultipleList(3,1000)
list2 = getMultipleList(5,1000)

#Remove the duplicates
combined = reconcileDuplicates(list,list2)

puts sumListItems(combined)




