class  Car

	def initialize (speed = 0)
		@speed = speed
	end

	def speed
		@speed
	end

	def accelerate
		@speed += 5
		puts @speed
	end
end