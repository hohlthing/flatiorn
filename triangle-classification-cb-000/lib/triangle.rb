class Triangle
  attr_reader :a, :b, :c

  def initialize (a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !valid?
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || b == c || a ==c
      :isosceles
    elsif a != b && b != c && a !=c
      :scalene
    end
  end

  def valid?
    if a + b <= c || b + c <= a || a + c <= b || a <= 0 || b <= 0 || c <= 0
      false
    else
      true
    end
  end
end

class TriangleError < StandardError
end
