#!/usr/local/bin/ruby
class Point
  def initialize x ,y
    @x = x
    @y = y
  end
  # Добавьте метод Point#similar_quarter? для проверки того, лежат ли обе точки в одной
  # четверти координатной плоскости.
  # Метод должен возвращать объект
  true или false
  def similar_quarter? point
    @x != 0 && @y != 0 ? true : false
  end
  # Метод проверяющий лежит ли точка в начале координат
  def begin
    @x == 0 && @y == 0 ? true : false
  end
  # Метод, устанавливающий точку в начало координат
  def convert_bool
    @x = 0
    @y = 0
    'Point in center'
  end
end
