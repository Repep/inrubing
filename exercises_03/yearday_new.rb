puts "введите год"
year = gets.chomp
puts "введите месяц"
month = gets.chomp
puts "введите чисто"
day - gets.chomp

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