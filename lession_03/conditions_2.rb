#encoding: utf-8

puts "Введите имя"
name = gets.chomp
if name != '' && name.length >= 2
	puts "Привет, #{name}"
else
	puts "Введенные данные не верны"
end