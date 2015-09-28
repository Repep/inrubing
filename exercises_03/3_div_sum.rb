puts "Ведите последнее число Вашего интервала"
num = gets.chomp.to_i
puts "Введите число, на которое должны без остатка делиться слогаемые"
div = gets.chomp.to_i
sum = 0
num_q = 0
for i in (1..num)
	if i % div == 0
		sum += i
		num_q += 1
	end
end
puts "Сумма всех чисел Вашего диапозона, кратных #{div} равна #{sum}"
puts "Среднее артфметическое всех этих четных равно #{sum.to_f/num_q}"