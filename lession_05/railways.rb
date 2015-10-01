class Station
  attr_reader :trains, :trains_pass, :trains_cargo


  def initialize (name)
    @trains = []
    @trains_pass = []
    @trains_cargo = []
  end

  # def arrive (train) # в качестве атрибута можно использовать только название поезда.
  #   train = train.instance_variables.each_with_object({}) { |var, train| train[var.to_s.delete("@")] = train.instance_variable_get(var) }
  #   @trains << train['number']
  #   @trains_pass << train['number'] if train['type'] == 'pass'
  #   @trains_cargo << train['number'] if train['type'] == 'cargo'
  #   puts "Поезд с номером #{train["number"]} прибыл на станцию."
  # end 

  def show_trains
    puts trains
  end

  def departure(t)
    @trains.delete(t)
  end

  def show_pass
    puts "Количество пассажирских поездов на станции равно #{trains_pass.count}"
    puts "Вот их список:"
    puts trains_pass
  end

  def show_cargo
    puts "Количество грузовых поездов на станции равно #{trains_cargo.count}"
    puts "Вот их список:"
    puts trains_cargo
  end

end


class Train
  attr_reader :number, :type, :wagon, :speed
  
  def initialize (number, type, wagon, speed = 0) 
    @number = number
    @type = type
    @wagon = wagon
    @speed = speed
  end

  def accelerate
    @speed += 10 if speed < 110
  end

  def show_speed
    puts @speed
  end

  def brake
    @speed -= 10 if speed > 0
  end

  def add_wagon
    @wagon += 1 if speed == 0
  end

  def minus_wagon
    @wagon -= 1 if speed == 0 && wagon >=0
  end


  def show_wagon
    puts @wagon
  end
end

