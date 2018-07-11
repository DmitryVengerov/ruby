# !/usr/bin/ruby

require_relative('game/main')

module Bones

  def self.create
      Main.new
  end

  def self.version
      '1.0.0'
  end

  def self.author
      'Hardbeat34'
  end

end

game = Bones.create
game.greatings

# first_number = ARGV[0].to_i
# second_number = ARGV[1].to_i
#
# puts first_number + second_number
#
# A = ARGV[0].to_i
# B = ARGV[1].to_i
#
# puts "#{A} + #{B} = #{A + B}"
