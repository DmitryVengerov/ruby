#!/usr/bin/ruby
# Расширьте класс Array, реализовав метод
# #my_each — собственный аналог метода
# Array#each

class Array
  attr_accessor :arr
  def initialize arr
    @arr = arr
  end

  def getArr
    p @arr
  end

  def my_each
    $i = 0
    for i in 0..@arr.size-1
      puts @arr[i]
    end
  end
end

a = [ "a", "b", "c", "d", "f" ]
a.each {|x| p x}
ary = Array.new(a)
ary.my_each
