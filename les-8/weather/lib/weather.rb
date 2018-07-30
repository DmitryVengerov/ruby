require_relative 'weather/data.rb'
require_relative 'weather/engine.rb'

module Weather
  def self.show city
    Engine.new(Data.import city).show_weather
  end

end

Weather.show 'Moskow'
