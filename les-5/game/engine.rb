#!/usr/bin/ruby

module Bones
  module Engine

    EDGES = (1..6)

    def drop_cubes
      return Random.new.rand(EDGES) + Random.new.rand(EDGES)
    end

    def engine_version
      '1.0.0'
    end
  end
end
