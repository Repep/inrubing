class Stations
  
  attr_reader :name
  attr_accessor :trains, :trains_cargo, :trains_pass
  
  def initialize (name)
    @name = name
    @trains = []
    @trains_cargo = []
    @trains_pass = []
  end

  def show_trains
    puts "Список всех поездов на станции:"
    @trains.map {|train| train.show_number}
  end

  def show_pass
    puts "На станции сейчас #{trains_pass.count} пассажирских поездов."
    puts "Вот их список:"
    puts @trains_pass
  end

  def show_cargo
    puts "На станции сейчас #{trains_cargo.count} грузовых поездов."
    puts "Вот их список:"
    puts @trains_cargo
  end

  def arrive (train)
    @train = train
    @trains << train
    if @train.type == 'cargo'
      @trains_cargo << @train.number
      else @trains_pass << @train.number
    end

    puts "Поезд #{@train.number} прибыл на станцию #{@name}."
  end

  def departupe (train)
    @trains.delete (train)
    @trains_cargo.delete (train)
    @trains_pass.delete (train)
    puts "Поезд #{@train.number} отправился со станции #{@name}."
  end
end

class Trains

  attr_accessor :number, :type, :wagon, :speed, :current_station

  def initialize (number, type, wagon, speed = 0)
    @number = number
    @type = type
    @wagon = wagon
    @speed = speed
    @route = []
    @current_station = current_station

  end

  def accelerate
    @speed += 10 if @speed < 110
    puts "Теперь скорость ровна #{@speed}"
  end

  def brake
    @speed -= 10 if @speed > 0
    puts "Теперь скорость ровна #{@speed}"
  end

  def add_wagon
    @wagon += 1 if @speed == 0
    puts "Вагонов в поезде теперь #{@wagon}"
  end

  def minus_wagon
    @wagon -= 1 if @speed == 0 && @wagon > 0
    puts "Вагонов в поезде теперь #{@wagon}"
  end

  def show_speed
    puts @speed
  end

  def show_wagon
    puts @wagon
  end

  def recieve_route (r)
    @route = r
  end

  def moveto(station)
    @current_station = station if @route.stations.include?(station) == true
    puts "Такой станции нет в маршруте" if @route.stations.include?(station) != true
  end

  def current
    puts @current_station
  end

  def next
    current_position = @route.stations.index(self.current_station)
    puts "Следующая станция #{@route.stations[current_position + 1]}"
  end

  def previous
    current_position = @route.stations.index(self.current_station)
    puts "Предыдущая станция была #{@route.stations[current_position - 1]}"
  end





end

class Routes
  attr_accessor :stations, :middle_stations

  def initialize (first, last)
    @first = first
    @last = last
    @middle_stations = []
    @stations = [@first, @middle_stations, @last].flatten
  end

  def add (station)
    @middle_stations << station
    @stations = [@first, @middle_stations, @last].flatten
  end

  def remove (station)
    @middle_stations.delete(station)
    @stations = [@first, @middle_stations, @last].flatten
  end

  def show
    puts @stations
  end

end