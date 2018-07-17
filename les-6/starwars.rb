#!/usr/bin/ruby

=begin 

Предметная область:
    У нас есть объект класса Mothership,
    обладающий способностью
    вычислять координаты для
    сверхсветового прыжка (метод
    Mothership#compute)

    Есть второй класс Ship, объекты
    которого управляют истребителем и
    могут совершать сверхсветовой
    прыжок, но не в состоянии
    произвести расчет координат.

Задача:
    С помощью блока реализуйте метод
    Ship#jump который в момент вызова
    будет вызывать метод
    Mothership#compute и таким
    образом устанавливать координаты
    для прыжка 

    Предварительное определение классов
    располагается в исходном коде проекта
    jump

=end


class Mothership

    attr_reader :point, :y, :x

    def initialize(point, y, x)

        @_cl = {
            "Sun" => [35,34],
            "Mercury" => [433,523],
            "Venus" => [234,12],
            "Earth" => [0,0],
            "Mars" => [523,123],
            "Jupiter" => [123.5,43],
            "Saturn" => [34,234],
            "Uranus" => [3242,423],
            "Neptune" => [423,3423],
            "Pluto" => [234,543],
            "Black_Hole" => [2,534]
        } 

        @point  = point
        @ziel_y = y
        @ziel_x = x
        @result = []

    end 

    # makes some magic in here
    def self.compute
        acc = @_cl[@point]
        puts 'Coordinates received'
        puts '...'
        @ziel_y = acc[1] - @ziel_y 
        @ziel_x = acc[0] - @ziel_x
        puts "Coordinates of the way #{@ziel_x.abs} / #{@ziel_y.abs}"
        @result.push(@ziel_x)
        @result.push(@ziel_y)
        @result
    end 

end 


class Ship < Mothership

    def self.jump
        self.compute(@p,@y,@x)
    end 

end

millenium_falcon = Ship.new('Pluto', 35, 243)
millenium_falcon.jump

