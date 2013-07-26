# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  
  #check to make sure the triangle is not 0 or negative.
  if a|b|c <= 0
      raise TriangleError, "Cannot have a 0 or negative side"
  end
   
  #check the side lengths are not exceeding an extreme amount
  #Only if all three of these are true, you have a triangle.
  unless a + b > c && a + c > b && b + c > a
      raise TriangleError, "Cannot have a side with an extreme length"
  end
  
  if a == b
    if a == c
      return :equilateral 
    else
         return :isosceles
   end
 elsif b == c || a == c
   return :isosceles
 else
   return :scalene
 end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
