require_relative('elevator/main')
# require '/home/psylone/Dropbox/@doIT/@proglive/ruby-rails/lessons/4@ruby-blocks-exceptions/4@ruby-blocks-exceptions[code]/elevator/lib/elevator/main.rb'
# require File.expand_path('../elevator/main', __FILE__)

module Elevator

  def self.create
    Main.new
  end

  def self.version
    '1.0.0'
  end

end

# elevator = Elevator::Main.new
elevator = Elevator.create
# p elevator
# puts Elevator.version

elevator.load! 40
elevator.load! 140
elevator.load! 100 # зашел
elevator.release! 100 # вышел
elevator.move 7
elevator.move 13
elevator.move 13
elevator.move -100
