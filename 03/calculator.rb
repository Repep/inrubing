puts "Я могу работать как калькулятор. Введи мне первое число"
a = gets.chomp.to_f
puts "теперь второе"
b = gets.chomp.to_f
puts "Какое действие ты хочешь провести с этими числами? (Варианты: +, -, *, /)"
x = gets.chomp
if x == "+"
	puts "#{a} #{x} #{b} = #{a + b}"
elsif x == "-"
	puts "#{a} #{x} #{b} = #{a - b}"
elsif x == "*"
	puts "#{a} #{x} #{b} = #{a * b}"
elsif x == "/"
	puts "#{a} #{x} #{b} = #{a / b}"
else
	puts "Данный вид операции не известен"
end

