puts "Введите число, до которого я буду считать диапозон. Я выведу на экран сумму всех чисел в соответсвующей степени до введенного числа."
num = gets.chomp.to_i
sum = 0
range = (1..num)
range.each do |i|
	sum += i**i
end
puts "Сумма всех этих вычислений равна #{sum}."