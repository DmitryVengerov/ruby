# if else

# user = {
#   name: 'Superman',
#   rile: :role
# }

# if user[:role] == :superhero
#   result = user[:name] + ' please, help us!'
# else
#   result = 'Lest'


# # тернаная операция

# result = true ? 1 : 0
# puts result


# Fixnum
# Метод, возвращающий
# вещественный результат от
# деления

result = 10 % 3.5
puts result

result = 10.remainder 3.5
puts result

result = 5.fdiv(2)

# Метод проверяющий, является ли
# число нечётным

puts 1.odd? # => true
puts result.to_i.odd? # => index.rb:34:in `<main>': undefined method `odd?' for 3.0:Float (NoMethodError)


# Integer
# Метод, возвращающий Наибольший
# Общий Делитель 2-х чисел

p 6.gcd(2)


# Метод, позволяющий итерировать
# от одного числа до другого

p 1.step.take(4)
p 5.upto(10){|i| p i}

# Метод приведения целого числа к
# рациональному

r = Rational(5033165, 16777216)

r.rationalize
p r.rationalize(Rational('0.01'))


=begin
	Numeric:
		Метод, позволяющий итерировать
		от данного целого числа с
		указанием шага итерации и числа
		верхнего предела итерации
=end

p 10.step(by: -1).take(4)

=begin
		Метод, приводящий данное число к
		комплексному (мнимому)
=end

p 2.to_c

=begin
	Float:
		Метод, приводящий вещественное
		число к строке
=end

p 0.3.to_s

=begin
	Array:
		Метод, возвращающий последний
		элемент из массива (с его
		извлечением из массива)
=end

arr = ['drugs','money','sluts']

p arr.pop
p arr

=begin
		Метод, добавляющий элемент в
		конец массива
=end

arr.push('sluts')
p arr

=begin
	Hash:
		Метод, возвращающий массив
		ключей хэша
=end

grades = { "John Cina" => 10, "Capitan Jack Swarrow" => 6 }
p grades.keys

=begin
		Метод, возвращающий массив
		значений хэша
=end

grades.each_value{ |key| p key}


=begin
	Range:
		Метод, проверяющий, включено ли
		последнее значение в диапазон
=end

ary = [0, 4, 7, 10, 12]
p ary.include?(2)
p ary.exclude_end?
