puts "Назови мне длины трех сторон треугольника и я скажу тебе какого он типа."
puts "Введи длину первой стороны"
a = gets.chomp.to_f
puts "Теперь второй"
b = gets.chomp.to_f
puts "И третьей"
c = gets.chomp.to_f

	g = a if a > b && a > c
	g = b if b > a && b > c
	g = c if c > a && c > b

if
	a == b && a = c && c = b
	puts "Он равносторонний!"
elsif
	a == b || a == c || b == c
	puts "Он равнобедренный!"
elsif
	g**2 == (a + b)**2 || g**2 == (a + c)**2 || g**2 == (b + c)**2
	puts "Твой треугольник прямоугольный!"
else
	puts "У такого треугольника нет специального названия"
end

	

