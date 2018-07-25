# Представьте, что у вас есть класс Ship для
# управления звёздным катером. Данный
# класс содержит метод Ship#jump! для
# совершения гиперпространственного
# прыжка. Реализуйте возможность
# проверки следующих условий перед
# прыжком:
#  Координаты заданы
#  Защитное поле включено
#  Энергии достаточно для совершения прыжка
# после прыжка:
#  Текущее положение соответствует заданным координатам

class Ship

  class NotEnoughEnergyError < StandardError
  end

  class CoordError < StandardError
  end

  def initialize x, y
    @x = 0
    @y = 0
    @ziel_x = x
    @ziel_y = y
    @shield = false
    @energy = 10
  end

  def accomulateEnergy
    @energy += 50
  end

  def warp!

    puts getEnergy
    puts getCoordnets
    puts getZielCoordinats
    valid!
    if @energy < 100
      energyStatus
    else
      warp_jump
    end

  end

  def valid!
    raise CoordError, "Координаты совпадают с текущим местом" if @x == @ziel_x || @y == @ziel_y
  end

  def warp_jump
    @energy -= 100
    puts "Curving spase!"
    energyStatus
    setCoordnets
    puts getCoordnets
  end

  def energyStatus
    if @energy < 100
      puts "\nМало энергии"
      puts "Инициализирую процедуру накопления энергии\n..."
      accomulateEnergy
      energyStatus
    else
      setCoordnets
      puts "\n== Энергия накоплена =="
      puts getEnergy
      puts getCoordnets

    end
  end

  def getEnergy
    "Energy status     -> [#{@energy}]"
  end

  def getCoordnets
    "Coordinates       -> x: [#{@x}] y: [#{@y}]"
  end

  def getZielCoordinats
    "Ziel Coordinates  -> x: [#{@ziel_x}] y: [#{@ziel_y}]"
  end

  def setCoordnets
    @x = @ziel_x
    @y = @ziel_y
  end

end

ship = Ship.new(14,324)

puts ship.warp!
