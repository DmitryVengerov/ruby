require 'yaml'
require_relative 'samer/data_provider'
require_relative 'samer/engine'

module Samer

  def self.find_for name
    @engine ||= Engine.new(DataProvider.new.prepare)
    @engine.find_for name
  end

end

#TODO Учитывать нулевые оценки
# p Samer.find_for 'jake' # => ['same_user', coefficient]