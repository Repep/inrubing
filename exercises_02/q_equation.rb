puts "Врубель умный! Я научился вычислять корни квадратного уравнения."
puts "Введи параметр А"
a = gets.chomp.to_f
puts "Теперь В"
b = gets.chomp.to_f
puts "Ну и С"
c = gets.chomp.to_f

d = ((b**2) - (4 * a * c))

if
	d.to_i > 0
	puts "Решение имеет два корня: x1=#{(0 - b + Math.sqrt(d)) / (2 * a)} и x2=#{(0 - b - Math.sqrt(d)) / (2 * a)} "
elsif
	d.to_i == 0
	puts "В таком уравнении только один корень: x=#{(0 - b) / (2 * a)}"
else
	puts "Дискриминант равен #{d}, это меньше нуля. Корней нет."
end

