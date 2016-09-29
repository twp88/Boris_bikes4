class DockingStation
  attr_reader :bike

  def release_bike
    fail "No more bikes you fool!" unless @bike
    @bike
  end

  def dock(bike)
    if @bike 
      fail 'already got a bike'
    else
      @bike = bike
  end
  end
end
