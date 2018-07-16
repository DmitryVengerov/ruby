#!/usr/bin/ruby

require "active_support/all"

=begin

    Метод, возвращающий объект
    класса ActiveSupport::Duration,
    представляющий n часов, n минут, n
    секунд

=end

p 1.month.ago


=begin

    Метод, возвращающий экземпляр
    класса Time, со значением времени,
    спустя n секунд от текущего
    момента времени

=end

p (4.months + 5.weeks).from_now

=begin

    Метод, возвращающий экземпляр
    класса Time, со значением времени,
    n секунд тому назад от текущего
    момента

=end

 p 'gg' # доделать