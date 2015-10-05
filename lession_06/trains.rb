class Trains

  attr_accessor :number, :type, :wagon, :speed, :current_station

  def initialize (number)
    @number = number
    @type = type
    @wagon = []
    @speed = 0
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

  def add_wagon (wag)
    @wagon << wag if (@speed == 0 && wag.type == self.type)
    wag.number = self.wagon.size if (@speed == 0 && wag.type == self.type)
  end

  def minus_wagon (wag)
    @wagon.delete(wag) if @speed == 0
    wag.number = nil if @speed == 0
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