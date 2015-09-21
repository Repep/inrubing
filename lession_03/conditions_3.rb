#encoding: utf-8

puts "Введите имя"
name = gets.strip

if (name != '' && name.length >= 2) && (name == 'Василий' || name == 'Вася') 
	puts "Молодец, Вася!"
else
	puts "Жаль, что ты не Вася"
end