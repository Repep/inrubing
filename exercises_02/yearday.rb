puts "Я могу подсчитать, какой порядковый номер у любого дня в году. Не веришь? Введи год:"
year = gets.chomp.to_i
puts "Теперь номер месяца"
month = gets.chomp
puts "Ну и число"
day = gets.chomp.to_i

x = year / 4
y = year / 100
z = year / 400

if
	x == x.to_i && y == y.to_i && z == z.to_i
	mv = 29
elsif
	x == x.to_i && y == y.to_1 && z != z.to_i
	mv = 28
elsif 
	x == x.to_i && y != y.to_1 && z != z.to_i
	mv = 29
else
	mv = 28
end

m1 = 31
m2 = mv
m3 = 31
m4 = 30
m5 = 31
m6 = 30
m7 = 31
m8 = 31
m9 = 30
m10 = 31
m11 = 30


case month
when "1"
	puts "Ответ: #{day}"
when "2"
	puts "Ответ: #{m1 + day}"
when "3"
	puts "Ответ: #{m1 + m2 + day}"
when "4"
	puts "Ответ: #{m1 + m2 + m3 + day}"
when "5"
	puts "Ответ: #{m1 + m2 + m3 + m4 + day}"
when "6"
	puts "Ответ: #{m1 + m2 + m3 + m4 + m5 + day}"
when "7"
	puts "Ответ: #{m1 + m2 + m3 + m4 + m5 + m6 + day}"
when "8"
	puts "Ответ: #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + day}"
when "9"
	puts "Ответ: #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + day}"
when "10"
	puts "Ответ: #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + day}"
when "11"
	puts "Ответ: #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + day}"
when "12"
	puts "Ответ: #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + m11 + day}"
end
