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
