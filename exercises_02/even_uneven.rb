puts "Привет! Давай посмотрим, умеет ли Врубель отличать четное число от нечетного. Введи любое число:"
x = gets.chomp.to_f
puts "Введите целое число" if x.to_i != x.to_f
if
	(x / 2) == (x / 2).to_i
	puts "Введенное чисто четное."
else
	puts "Введенное чисто нечетное."
end
