class Station
	attr_reader :trains


	def initialize (name)
		@trains = []
	end

	def arrive(t)
		@trains << t
	end	


	def show
		puts trains
	end

	def departure(t)
		trains.delete(t)
	end

end


class Train
	attr_reader :number, :type, :wagon, :speed
	def initialize (number, type, wagon, speed = 0)
		@speed = speed
		@wagon = wagon
		@number = number
		@type = type
	
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

