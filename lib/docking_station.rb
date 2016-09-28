class DockingStation
  attr_reader :bike

  def release_bike
    fail "No more bikes you fool!" unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end
