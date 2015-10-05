require_relative "trains"

class TrainsCargo < Trains
	def initialize (number)
		super
	self.type = 'cargo'
	end
end