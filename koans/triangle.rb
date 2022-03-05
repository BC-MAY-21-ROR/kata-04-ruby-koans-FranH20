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
def triangle(side_a, side_b, side_c)
  sides_array = [side_a, side_b, side_c]
  raise_errors(sides_array)
  case triangle_counts(sides_array)
  when 1
    :scalene
  when 2
    :isosceles
  when 3
    :equilateral
  end
end

def raise_errors(sides_array)
  raise TriangleError if sides_array.min <= 0 

  x, y, z = sides_array.sort 
  raise TriangleError if x + y <= z
end
def triangle_counts(sides_array, answer = 0)
  sides_array.each do |side|
    count_side = sides_array.count(side)
    answer = count_side if count_side > answer
  end
  answer
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end
