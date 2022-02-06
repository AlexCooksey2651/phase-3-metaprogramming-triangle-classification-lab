class Triangle
  # write code here
  attr_accessor :len1, :len2, :len3
  
  def initialize(len1, len2, len3)
    @len1 = len1
    @len2 = len2
    @len3 = len3
  end

  def kind
    if self.len1 > 0 && self.len2 > 0 && self.len3 > 0
      if (self.len1 + self.len2 > self.len3) && (self.len1 + self.len3 > self.len2) && (self.len2 + self.len3 > self.len1)
        if self.len1 == self.len2 && self.len1 == self.len3
          :equilateral
        elsif self.len1 != len2 && self.len1 != self.len3 && self.len2 != self.len3
          :scalene
        elsif (self.len1 == len2 && self.len1 != self.len3 && self.len2 != self.len3) || (self.len1 != self.len2 && self.len1 == self.len3 && self.len2 != self.len3) || (self.len1 != self.len2 && self.len1 != self.len3 && self.len2 == self.len3)
          :isosceles
        end
      else
        raise TriangleError
      end
    else 
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    puts "Check that your triangle is valid!"
  end
end
