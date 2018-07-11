require_relative 'engine'
require_relative 'validator'

module Elevator
  class Main

    include Validator

    def move floor
      @engine.floor = floor

      if valid? :floor_range, :floor_current, :weight
        @engine.move # Delegate pattern
      else
        puts error
      end
    end

    def release! weight
      @weight -= weight
    #   puts "[Release]: Current weight is #{@weight}"
    end

    def load! weight
      @weight += weight
    #   puts "[Load]: Current weight is #{@weight}"
    end

    private

    def initialize
      @weight = 0
      @engine = Engine.new # Composition
    end

  end
end
