#!/usr/bin/ruby

require_relative 'validator'
require_relative 'engine'

module Bones
  class Main

    include Validator
    include Engine

    def initialize
      @score     = 1
      @user_rate = nil
      @comp_rate = nil
      @result    = nil
      @win_stat  = nil
    end


    def greatings
      puts "Welcome to the best game in the world"
      menu
    end


    def menu
      puts "Did you wanna play in my game? [y/n]"
      if gets.chomp == 'y'
        dialog
      else
        puts "Bye-bye sweet pie"
        puts "Engine version    #{engine_version}"
        puts "Validator version #{validator_version}"
        puts "Bones version     #{Bones.version}"
        puts "Createt by        #{Bones.author}"
      end
    end


    def dialog
      puts 'OK! How much you bet?'
      @user_rate = gets.chomp.to_i
      puts 'OK!'
      start
    end


    def start
      if valid? @user_rate
        puts "User put on #{@user_rate} "
        @comp_rate = drop_cubes
        @win_stat = comparison? @user_rate, @comp_rate
        p @win_stat
        next_step
      else
        puts 'You have error'
      end
    end


    def next_step
      p @user_rate
      if @result == 'success'
        @score =+ @user_rate
        puts "Your score #{@score}"
        p check_score? @score
        menu
      else
        @score =- @user_rate
        puts "Your score #{@score}"
        puts check_score? @score
        menu
      end
    end


  end
end
