require_relative "wagons"

class WagonPass < Wagons
  def initialize (volume)
    super
  @type = 'pass'
end


	def add_passenger
		@volume_busy += 1 if @volume_busy < @volume
	end

  def remove_passenger
    @volume_busy -= 1 if @volume_busy > 0
  end

  def free_seats
    @volume - @volume_busy
  end

  def busy_seats
    @volume_busy
  end
end