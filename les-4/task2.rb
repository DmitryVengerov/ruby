#!/usr/local/bin/ruby

# Чтобы получить возможность сравнивать
# объекты класса Point на основе их
# расстояния от начала координат, в классе
# Point необходимо определить метод
# #<=>. Он должен возвращать -1, если
# первая точка ближе к началу координат,
# чем вторая, 1 – если она дальше и 0 – если
# расстояние от начала координат до
# каждой из точек одинаково. Метод <=>
# также должен возвращать nil, если
# аргумент не является объектом класса
# Point. Затем просто подключите модуль
# Comparable, и вы получите методы
# сравнения. Это позволит вычислить такое
# выражение:
# Point.new(1,2) < Point.new(3,4) # => true

class Point
  include Comparable
  attr_accessor :x, :y
  # constructor
  def initialize x, y
    @x = x
    @y = y
  end

  def x=(arg)
    @x = arg
  end
  def <=>(anOther)
    if @x && @y <=> anOther.x && anOther.y ? true : false
  end

  def inspect
    puts "x: #{@x} y: #{@y} "
  end

end

cord1 = Point.new(1,2)
cord2 = Point.new(3,5)
cord1.inspect
cord2.inspect

cord1 < cord2
