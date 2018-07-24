#!/usr/bin/ruby

require "active_support/all"

=begin

    Метод, возвращающий константу с
    именем, что и значение строки

=end

p 'String'.constantize # right
p 'Class'.pluralize

=begin

    Метод, возвращающий
    множественное число для значения
    строки

=end

p "hello".str.remove('ll')

=begin

    Метод, возвращающий строку без
    подстрок, совпавших по шаблону,
    который передан в метод в качестве
    аргумента

=end

p 'Rise the sky'.remove('Rise')

=begin

    Метод, проверяющий, стостоит ли
    строка лишь из пробельных
    символов

=end

p '   '.blank?

=begin

    Метод, заменяющий символ '_' на '-'
    ActiveSupport::Configurable

=end

p 'puni_puni'.dasherize

=begin

    Метод для доступа к
    упорядоченному хэшу, хранящему
    конфигурацию (пользовательские
    настройки) для класса

=end

p "fail"
