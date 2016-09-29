class DockingStation
  attr_reader :bike, :dock_arr, :capacity
  #DEFAULT_CAPACITY= 20


  def initialize(capacity)
    @capacity = capacity
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
attr_reader :dock_arr, :capacity
  def full
    @dock_arr.length >= @capacity
  end

  def empty
    @dock_arr.length >= 1
  end
end
