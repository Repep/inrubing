require_relative "trains"

class TrainsPass < Trains
def initialize (number)
    super
  self.type = 'pass'
  end
end