

require './person'


myArray = Array.new

myPerson = Person.new('larry','peters')
anotherPerson = Person.new("john","doe")

#add to array
myArray.push myPerson
myArray.push anotherPerson


#loop the array using an iterator
myArray.each do |d|
  puts d.to_s
end