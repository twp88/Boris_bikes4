class DockingStation
  attr_reader :bike, :dock_arr


  def initialize()
    @dock_arr = []
  end

  def release_bike
    fail "No more bikes you fool!" unless empty
    @dock_arr.pop
  end

  def dock(bike)
    fail 'No more room for bikes. Have already got 20' if full
    @dock_arr << bike
  end

private
  def full
    @dock_arr.length >= 20
  end

  def empty
    @dock_arr.length >= 1
  end
end
