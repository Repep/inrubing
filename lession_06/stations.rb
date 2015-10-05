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