#!/usr/local/bin/ruby

require 'benchmark'

##############################################
class File
  # конструктор
  def initialize
    # @path_full = ''
    # @file_name = ''
  end
  # Метод, превращающий путь к файлу в его абсолютный путь
  def methodOne name
    File.expand_path(name)
  end
  # Метод проверяющий, является ли данный файл каталогом
  def methodTwo name
    File.directory?(name)
  end
  # Метод проверяющий существование файла
  def methodThree name
    File.exist?(name)
  end
  # Метод возвращающий время модификации файла
  def methodFour name
    File.mtime(name)
  end

end

##############################################
class Hash
  # constructor
  def initialize
  end
  # Метод, принимающий блок и удаляющий пару, если условие внутри блока вычисляется в true
  def
    deleteTwoElements h
    h.delete_if {|key, value| key.to_s >= "b" }
  end
  # Метод, проверяющий пуст ли хэш
  def emptiiiz hash
    hash.empty?
  end

end

##############################################
class Symbol
  # constructor
  def initialize
  end
  # Метод, возвращающий массив всех определённых символов в памяти на данный момент
  def task1 sym
    sym.all_symbols
  end
  # Метод, проверяющий находится ли зданное имя символа между двумя другими заданными именамисимволов.
  # Между – имеется в виду проверка по кодам ASCII для символов из которых состоит объект класса Symbol
  def task2 a,b
    a.between? b
  end

end

##############################################

##############################################
class Time
  # constructor
  def initialize
  end
  # Метод, возвращающий текущее время
  def time_now
     Time.new
     Time.now
  end
  # Метод, проверяющий пятница ли сегодня
  def is_friday_today
    Time.friday?
  end

  # Метод, возвращающий строку с названием часового пояса
  def name_poays
    Time.zone
  end

end
##############################################

path = File.new
p path.methodOne('.')
p path.methodTwo('index.rb')
p path.methodThree('index.rb')
p path.methodFour('index.rb')

hash_test = {dima: 'super', alex: 'notbad'}
h = { "a" => 100, "b" => 200, "c" => 300 }

hash_class = Hash.new

p hash_class.deleteTwoElements(hash_test)
p hash_class.emptiiiz(hash_test)

p h.delete_if {|key, value| key >= "b" }
p h.emptiiiz(h)
#Time.zone

# Метод, возволяющий исполнять любой Ruby код, переданный в качестве строки
p eval "'hellop'+ 'rrr'"
p sleep([duration])
