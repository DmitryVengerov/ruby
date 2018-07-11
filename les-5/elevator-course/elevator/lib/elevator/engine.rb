module Elevator
  class Engine

    attr_reader   :current_floor
    attr_accessor :floor

    def move
      @floor > @current_floor ? up : down
      set_current_floor!
    end


    private

    def initialize
      @current_floor = 1
    end

    def up
      puts "Moving up..."
      @current_floor.upto(@floor) do |i|
        puts "#{i} floor"
      end
    end

    def down
      puts "Moving down..."
      @current_floor.downto(@floor) do |i|
        puts "#{i} floor"
      end
    end

    def set_current_floor!
      @current_floor = @floor
      # p "[Engine]: ", @current_floor
    end

  end
end

# engine = Elevator::Engine.new
#
# engine.floor = 5
# engine.move
# engine.floor = 9
# engine.move
