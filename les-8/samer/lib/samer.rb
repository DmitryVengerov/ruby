require 'yaml'
require_relative 'samer/data_provider'
require_relative 'samer/engine'

module Samer
  def self.find_for name
    @engine ||= Engine.new(DataProvider.new.prepare)
    @engine.find_for name
  end

  def self.recommend _name
    temp = find_for _name
    arr = []
    temp.each {|key, value| arr.push(value) }
    arr = arr.sort()
    return temp.key(arr[arr.size() - 1])
  end
end


puts Samer.find_for 'johanna'
puts Samer.recommend 'john'
