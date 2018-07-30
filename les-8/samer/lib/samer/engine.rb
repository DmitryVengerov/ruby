module Samer
  class Engine

    attr_reader :users

    def initialize users
      @users = users
    end

    def find_for name
      @name = name
      @similars = {}

      return "User @#{name} is not present in example users list. See it in lib/data/users.yaml" unless current_user

      @users.each do |user|
        next if user.name == current_user.name
        @similars[user.name] = distance(current_user, user)
      end
      @similars

    end

    private

    def distance current_user, user
      distances = []

      current_user.genres.keys.each do |genre|
        next unless user.genres[genre]
        distances.push (current_user.genres[genre] - user.genres[genre]) ** 2
      end

      1.fdiv 1 + Math.sqrt(distances.inject(0){ |sum, score| sum + score })

    end

    def current_user
      @current_user ||= @users.find{ |user| user.name == @name }
    end

    def similar
      @similars.max_by{ |_, score| score }
    end

  end
end
