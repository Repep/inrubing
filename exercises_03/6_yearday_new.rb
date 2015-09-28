puts "В этой программе Врубель подсчитает, какой порядковый номер в году у введенного дня."
puts "Введите год"
year = gets.chomp.to_i
puts "Введите месяц"
month = gets.chomp.to_i
puts "Введите число"
day = gets.chomp.to_i

x = year / 4
y = year / 100
z = year / 400

if
  x == x.to_i && y == y.to_i && z == z.to_i
  mv = 1
elsif
  x == x.to_i && y == y.to_1 && z != z.to_i
  mv = 0
elsif 
  x == x.to_i && y != y.to_1 && z != z.to_i
  mv = 1
else
  mv = 0
end

month_array = [31, 28 + mv, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
yearday = 0
i = 1
while i < month
yearday += month_array[i]
i += 1
end


yearday += day
yearday += 1 if mv == 1 && month > 2

puts "Это #{yearday} - й день в #{year} году"