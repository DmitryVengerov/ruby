class Ship
  def jump &block
    @coordinates = block.call.compute if block_given?
    puts "Jumping to <<#{@coordinates}>>!" unless @coordinates.nil?
  end
end

class Mothership
  START = %w{
    Proxima\ Centauri
    Sirius
    GJ\ 1061
    SCR\ 1845-6357\ B
  }

  def compute
    START.sample
  end
end


cloud9     = Mothership.new
whitestart = Ship.new

whitestart.jump{ cloud9 }
