puts "Привет от Врубеля! Я знаю какой порядковый номер имеет каждый день недели (отсчет с Понедельника). Проверь меня! Введи номер дня (1-7):"
day = gets.chomp
case day
  when "1"
	puts "Понедельник"
  when "2"
	puts "Вторник"
  when "3"
	puts "Среда"
  when "4"
	puts "Четверг"
  when "5"
	puts "Пятница"
  when "6"
	puts "Суббота"
  when "7"
	puts "Воскресенье"
else
	puts "Введено неверное значение. Доступно только 1-7."
end
