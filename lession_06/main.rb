require_relative 'trains'
require_relative 'trains_pass' 
require_relative 'trains_cargo'
require_relative 'wagons'
require_relative 'wagons_pass'
require_relative 'wagons_cargo'
require_relative 'stations'
require_relative 'routes'


puts "Добро пожаловать в систему управления железными дорогами!"
puts "Система пока работает в тестовом режиме - не судите строго."
puts ''
puts "Для начала нам надо создать необходимую инфраструктуру, которой мы будем управлять."
puts "Все данные желательно вводить английскими буквами или цифрами."
puts 'Давайте начнем с создания станций. Вводите станции поочередно. Когда закончите введите "stop".'
loop do
	puts "Введите название станции"
	station_name = gets.chomp
	break if station_name == "stop"
	station_name = Stations.new('station_name')
end

puts 'Теперь давайте создадим маршруты.'
puts 'Вам надо указать начальную и конечную станцию каждого маршрута маршрута'
puts 'Для того, чтобы закончить создавать маршруты опять введите "stop" вместо названия.'
loop do
	puts "Введите название маршрута"
	route_name = gets.chomp
	break if route_name == "stop"
	puts "Введите начальную станцию маршрута"
	route_first = gets.chomp
	puts "Введите конечную станцию маршрута"
	route_last = gets.chomp
	end

puts 'Пришло время создать поезда, которые будут передвигаться по нашим маршрутам.'
puts 'Поезда бывают пассажирские и грузовые.'
puts "Чтобы закончитьс поездами введите stop при выборе типа поезда."
loop do
puts 'Какой поезд вы хотите создать? (cargo - грузовой, pass - пассажирский).'
train_type = gets.chomp
break if train_type == 'stop'
	if
		train_type == "cargo"
		puts "Введите номер этого грузового поезда"
		train_num = gets.chomp
		train_num = TrainsCargo.new(train_num)
	elsif
		train_type == "pass"
		puts "Введите номер этого пассажирского поезда"
		train_num = gets.chomp
		train_num = TrainsPass.new(train_num)
	else
		puts "Тип поезда указан неверно."
	end	
end

puts "Поезда должны состоять из вагонов."
puts "Давайте их создадим. Они тоже бывают пассажирские и грузовые."
puts "Чтобы закончить с вагонами введите stop при выборе типа вагона."
loop do
	puts 'Какой вагон вы хотите создать? (cargo - грузовой, pass - пассажирский).'
	wagon_type = gets.chomp
	break if wagon_type == 'stop'
	if
			wagon_type == "cargo"
			puts "Какой объем у этого грузового вагона (в кубических метрах)?"
			wagon_volume = gets.chomp
			wagon_volume = WagonCargo.new(wagon_volume)
		elsif
			wagon_type == "pass"
			puts "Сколько мест в этом пассажирском вагоне?"
			wagon_volume = gets.chomp
			wagon_volume = WagonPass.new(wagon_volume)
		else
			puts "Тип вагона указан неверно."
	end	
end

puts 'Теперь можно добавить какой-то из вагонов в состав поезда. Когда закончите введите stop вместо номера поезда.'
loop do
	puts 'К какому поезду будем добавлять (введите номер)?'
	train_num = gets.chomp
	break if train_num == 'stop'
	puts 'Какой вагон добавить в состав? Имейте в виду, что типы вагона и поезда должны совпадать.'
	puts 'Введите вместительность вагона.'
	wagon = gets.chomp
	train_num.add_wagon(wagon)
end

puts 'Если Ва хотите отцепить вагон от поезда, то самое время это сделать.'
loop do
	puts 'От какого поезда будем отцеплять вагон (введите номер)?'
	train_num = gets.chomp
	break if train_num == 'stop'
	puts 'Какой вагон будем отцеплять?'
	puts 'Введите вместительность вагона.'
	wagon = gets.chomp
	train_num.minus_wagon(wagon)
end

puts 'Когда поезда укомплектованы мы можем поместить какой-то поезд на станции.'
puts 'Когда разместите все поезда, введите stop вместо названия станции.'
loop do
	puts 'На какую станцию будем помещать?'
	station = gets.chomp
	break if station == 'stop'
	puts 'Какой поезд?'
	train = gets.chomp
	station.arrive(train)
end
