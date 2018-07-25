class Ship
  class NotEnoughFuelError < StandardError
  end

  def initialize fuel
    @fuel = fuel
  end

  def warp_jump
    warp!
  rescue NotEnoughFuelError => error
    puts "Не могу искривить пространство, нужно больше топлива!"
    puts error.message
  ensure
    # Ensure code
  end

  def warp!
    raise NotEnoughFuelError, "Парни, заправте корабль топливом!" if @fuel < 200
    puts "Curving spase!"
  end

end

begin
  Ship.new(100).warp_jump
rescue Ship::NotEnoughFuelError
  puts "Не могу искривить пространство, нужно больше топлива!"
ensure
  puts "Я исполнюсь в любом случае"
end
