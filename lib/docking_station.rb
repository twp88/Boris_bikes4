class DockingStation
  attr_reader :bike
  #def initialize
  @bike
  #end
  def release_bike
    Bike.new
    #Should be one of the existing bikes, not a random new one
  end
  def dock(bike)
    @bike = bike
  end
end
