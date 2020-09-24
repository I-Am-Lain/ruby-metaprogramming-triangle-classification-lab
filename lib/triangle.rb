class Triangle
  
  attr_reader :a, :b, :c
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end


  def kind

    raise TriangleError if a + b < c || b + c < a || a + c < b # not a triangle!
    raise TriangleError if a + b == c || b + c == a || a + c == b # degenerate triangle!
  
    return :equilateral  if a == b && a == c
    return :isosceles    if a == b || b == c || a == c
    return :scalene      if a != b && b != c && a != c
  
  end


  class TriangleError < StandardError
  end

end
