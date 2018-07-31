
module Engine
  @@name = 'Andromeda'

  def self.get_name
    @@name
  end
end


class Ship
  include Engine
  #@@name = 'Andromeda'

  def self.get_name
    @@name
  end

  def get_name
    @@name
  end
end

class BattleShip < Ship
  def change_name!
    @@name = ""
  end
end

BattleShip.new.change_name!

p Ship.get_name
p Ship.new.get_name
p BattleShip.get_name
p BattleShip.new.get_name
p Engine.get_name
