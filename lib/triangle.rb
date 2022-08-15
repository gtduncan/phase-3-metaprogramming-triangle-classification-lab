class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind
    validate_triangle
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end
  class TriangleError < StandardError
  end

  def greater_than_zero
    if side1 > 0 && side2 > 0 && side3 > 0
      true
    else
      false
    end
  end
  
  def triange_inequality
    if side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
      true
    else
      false
    end
  end

  def validate_triangle
    if(!greater_than_zero || !triange_inequality)
      raise TriangleError
    end
  end
    
end
