puts "Введите число, до которого я буду считать факториал. Число должно быть больше нуля"
num = gets.chomp.to_i
fac = 1
range = (1..num)
range.each do |i|
	fac *= i
end

if
	num < 1
	puts "Неверное значение введенного числа"
else
	puts "Факториал равен #{fac}."
end
