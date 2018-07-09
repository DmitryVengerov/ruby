=begin
	Представьте, что у вас есть объёкт класса
	Hash:
		player = { name: 'johnny', color: :red }
		и переменная colors = [:blue, :white, :green,:red, :orange].
		Напишите код, который будет выбирать случайный цвет из массива colors и сравнивать его с цветом в хэше player.

		Если цвета совпадают — выводите сообщение «Джонни, ты прав!». Если цвета не совпадают, но количество
		символов из которых они состоят равно — выводите: «Джонни, букв столько же, но
		значение иное!».
		В остальных случаях — выводите любое другое сообщение.
		Постарайтесь сделать так, чтобы сообщения в выводе не включали явно заданное имя, а брали его из хэша с помощью интерполяции.
		Оберните код в метод, можно в несколько.
=end



def randomizeColor

	colors = [:blue, :white, :green, :red, :orange,]
	#return colors[rand(colors.length)]
	return colors.sample

end

def genResponse(color)

	player = { name: 'johnny', color: :red }
	if player[:color] == color
	 	p "Джонни, товар у меня"
	elsif color.length == player[:color] && color != player[:color]
		p 'Джонни, букв столько же, но значение иное!'
	else
		p 'Джонни, это точно была соль ?!'
	end

end

genResponse(randomizeColor)



=begin
		У вас есть массив имён. Пробегитесь по ним и выводите только те, длина которых меньше 10 символов и первая буква заглавная.
=end

class String
	def shorter_than? limit
		lenght < limit
	end

	def start_with_capital?
		self[0].upcase == self[0]
	end
end

name = ['Alla','Anjela','muhhamed','Dimysichka','Stas','Artem','Marina'].map do |value|

  if value.length < 10 && value != value.capitalize!
  	p value
  end

=begin
	if value.shorter_than?(10) && value.start_with_capital?
=end

end


=begin
		Посчитайте количество
		символов в каждом элементе
		массива:
=end

hash = ['Ruby', 'Python','JavaScript', 'Java', '.NET', 'HTML', 'Clojure'].inject({}) { |m, e| m.update(e => e.length) }
p hash

=begin
		Последовательность Фибоначчи задаётся в виде: F[0] = 0, F[1] = 1, F[n] = F[n-1] + F[n-2]
=end

def fib(n)
	return n < 2 ? n : fib(n-1)+fib(n-2)
end

fl = lambda { |n| n < 2 ? n : fib(n-1)+fib(n-2) }

#(1..15).each{ |value| p fib(value)}

p fl.call(16)


=begin
		Найдите количество одинаковых слов в массиве:
=end

ary = %w{ Triton Atlnatia Acropolis Pegasus Galactic Astral\ Queen Triton Galactica Cloud\ 9 Gemini Gemini Hitei\ Kan }
acc0 = []
acc1 = []

ary.each do |word|

	if acc0.index(word) == nil
		acc0.push(word)
	else
		acc1.push(word)
	end

end

p acc1
