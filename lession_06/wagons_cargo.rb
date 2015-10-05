require_relative "wagons"

class WagonCargo < Wagons
  def initialize (volume)
  super
  @type = "cargo"
end


  def load_cargo (cargo)
    @volume_busy += cargo.to_f if @volume_busy + cargo <= @volume
  end

  def unload_cargo (cargo)
    @volume_busy -= cargo.to_f if @volume_busy > 0
  end

  def free_volume
    @volume - @volume_busy
  end

  def busy_volume
    @volume_busy
  end
end