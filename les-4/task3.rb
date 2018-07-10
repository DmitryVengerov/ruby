#!/usr/bin/ruby
# Класс Rectangle должен
#   реализовывать 2 метода:
#   Rectangle#area и Rectangle#perimetr
#   — для вычисления площади и
#   периметра соответственно
#
# Rectangle::new принимает 2
#   аргумента, каждый из которых —
#   экземпляр класса Point. Таким
#   образом, прямоугольник задаётся
#   двумя вершинами (левая верхняя и
#   правая нижняя)

class Rectangle
  attr_accessor :x1,:x2,:x3,:x4
  def initialize x1, x2, x3, x4
    @x1 = x1
    @x2 = x2
    @x3 = x3
    @x4 = x4
    @l1 = (x2 - x1).abs
    @l2 = (x2 - x4).abs
    @l3 = (x3 - x1).abs
    @l4 = (x3 - x4).abs
  end

  def inspect
    puts "x1: #{@x1} \nx2: #{@x2} \nx3: #{@x3} \nx4: #{@x4}"
  end

  def area
    puts "l1: #{@l1} \nl2: #{@l2} \nl3: #{@l3} \nl4: #{@x4}"
  end

  def perimetr
    puts "p = #{@l1 + @l2 + @l3 + @l4}"
  end
end

class Array

end

cord1 = Rectangle.new(1,2,3,5)
cord1.inspect
cord1.area
cord1.perimetr
