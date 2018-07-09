#!/usr/local/bin/ruby
require 'base64'
require 'benchmark'
require 'find'
require 'digest'
require 'timeout'
include Benchmark

# Base64:
#   Методы модуля для кодирования/декодирования строки
#   в base64
# Benchmark:
#   Метод модуля, принимающий блок и
#   вычисляющий время его выполнения
# Find:
#   Метод модуля для рекурсивного
#   обхода дерева каталогов
#   относительно имени заданного
#   каталога (переданного в качестве
#   аргумента)
# Digest::MD5:
#   Метод класса, вычисляющий md5
#   хэш от строки
# Timeout:
#   Метод модуля, выкидывающий
#   исключение, если код исполняемый
#   в блоке вычисляется более N секунд

###12##########################################
str = 'VGhpcyBpcyBsaW5lIG9uZQpUaGlzIG' +
      'lzIGxpbmUgdHdvClRoaXMgaXMgbGlu' +
      'ZSB0aHJlZQpBbmQgc28gb24uLi4K'
p Base64.decode64(str)
p Base64.encode64('This is line one\nThis is line two\nThis is line three\nAnd so on...\n')

Benchmark.bm do |x|
  x.report("sort!") { Base64.decode64(str) }
end
##############################################

###3##########################################
# total_size = 0
# Find.find(ENV["HOME"]) do |path|
#   if FileTest.directory?(path)
#     if File.basename(path)[0] == ?.
#       Find.prune       # Don't look any further into this directory.
#     else
#       next
#     end
#   else
#     total_size += FileTest.size(path)
#   end
# end
##############################################

###4##########################################
p Digest::MD5.hexdigest str
##############################################

###5##########################################
N = 1
status = Timeout::timeout(N) {
  
  # Something that should be interrupted if it takes more than 5 seconds...
}
##############################################
