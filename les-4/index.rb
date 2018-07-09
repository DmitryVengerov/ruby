class Point
  p self
  attr_accessor :x,:y
  def initialize x, y
    @x = x
    @y = y
  end

  def origin?

    @x.zero? && @y.zero?
  end

end

point_1 = Point.new 1, 100
point_1.origin?
