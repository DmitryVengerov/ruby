# Using OOP for modelling housing elevator
class Elevator

  MAX_WEIGHT  = 250
  FLOOR_RANGE = 1..25

  def move floor
    return puts("The floor should be an Integer number between #{FLOOR_RANGE.first} and #{FLOOR_RANGE.last}") unless floor.instance_of?(Fixnum) && FLOOR_RANGE.cover?(floor)
    return puts("Current weight (#{@weight} kg) is more than allowed (#{MAX_WEIGHT}) kg. You will stay at the current floor, sorry.") unless allowed_weight?
    return puts("You are already on the #{floor} floor. Choose another floor or get out!") if current_floor? floor

    if floor > @current_floor
      up floor
    else
      down floor
    end
    set_current_floor! floor

    puts "Stop. You are on the #{@current_floor} floor"
  end

  def load! weight
    @weight += weight
  # #   puts "[Load]: Current weight is #{@weight}"
  end

  def release! weight
    @weight -= weight
  # #   puts "[Release]: Current weight is #{@weight}"
  end

  def to_s
    "Elevator with load #{@weight} kg on the #{@current_floor} floor."
  end


  private

  def initialize
    @current_floor = 1
    @weight        = 0
  end

  def allowed_weight?
    @weight <= MAX_WEIGHT
  end

  def current_floor? floor
    @current_floor == floor
  end

  def up floor
    puts "Moving up..."
    @current_floor.upto(floor) do |i|
  # # #     # sleep 1.2
      puts "#{i} floor"
    end
  end

  def down floor
    puts "Moving down..."
    @current_floor.downto(floor) do |i|
  # #     # sleep 1.2
      puts "#{i} floor"
    end
  end

  def set_current_floor! floor
    @current_floor = floor
  end

end


elevator = Elevator.new

elevator.initialize

# elevator.move 1
# elevator.move -1


# elevator.load! 40
# elevator.load! 140
# elevator.load! 100
# elevator.release! 100
# elevator.move 12
# elevator.move 2
# elevator.move 3