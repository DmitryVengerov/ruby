module Samer
  class User

    attr_reader :name, :genres

    def initialize name, genres
      @name = name
      @genres = genres
    end

  end
end