puts "Ведите последнее число Вашего интервала"
num = gets.chomp.to_i
sum = 0
evens = 0
for i in (1..num)
	if i % 2 == 0
		sum += i
		evens += 1
	end
end
puts "Сумма всех четных чисел Вашего диапозона равна #{sum}"
puts "Среднее артфметическое всех этих четных равно #{sum.to_f/evens}"