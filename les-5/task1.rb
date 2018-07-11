#!/usr/bin/ruby

require 'active_support/all'
require 'cgi'

# Hash:
#   Метод, превращающий хэш в объект
#   класса
#   ActiveSupport::HashWithIndifferentAcc
#   ess. Такой объект ведёт себя как
#   хэш, с той разницей, что к его
#   элементам можно обращаться как
#   по строкам, так и по символам:
#   hash = HashWithIndifferentAccess.new
#   hash[:one] = 1
#   hash['one'] # => 1
#
#   Метод, возвращающий хэш без тех
#   ключей, которые были переданы как
#   символы в аргументы этого метода
#
#   Метод, возвращающий строку (query
#   string) из данного хэша:
#   hash = {one: 1, two: 2, three: 3}
#   # => "one=1&three=3&two=2"
#
#   Метод, превращающий все ключи
#   хэша в строковые объекты
#

#---HASH----------------------------

def query_string(query_hash)
  query_array = []
  query_hash.each{|key, val| val ? query_array.push([key, val].join('=')) : nil}
  query_string = query_array != [] ? query_array.join('&') : ''
end

hash = HashWithIndifferentAccess.new

hash[:one] = 1
hash['one'] # => 1
hash[:two] = 2
hash['two'] # => 2
hash[:three] = 3
hash['three'] # => 3

hash = {one: 1, two: 2, three: 3}
# p hash.stringify_keys
hash = { a: true, b: false, c: nil}
# p hash.except(:a,:c) # => { a: true, b: false}
# p query_string({one: 1, two: 2, three: 3})
# p hash.stringify_keys

#---ARRAY---------------------------

#   Метод, возвращающий пустой хэш,
#   если последний элемент массива не
#   является хэшем и последний
#   элемент массива в обратном случае

def task1_ary(arr)
  if arr.last.class.to_s == 'Hash'
    arr.last
  else
    Hash.new
  end
end

# Метод, принимающий один
# аргумент и возвращающий массив
# из него одного, если аргумент не
# является массивом. В обратном
# случае — возвращается аргумент
# без изменений

def task2_ary(arg)
  ary = Array.new
  if arg.class.to_s != "Array"
    return ary.push(arg)
  end
  return arg
end

#   Метод, возвращающий последние
#   несколько элементов массива,
#   начиная с индекса, переданного в
#   качестве аргумента

def task3_ary(array,index)
  if index < array.size-1
    for i in index..array.size-1
      puts array[i]
    end
  end
end

h = { "a" => 100, "b" => 200 }
ary = [1,4,2,4,2,5,3,5,3,h]

task3_ary(ary,4)
