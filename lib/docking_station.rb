class DockingStation
  attr_reader :bike, :dock_arr


  def initialize()
    @dock_arr = []
  end

  def release_bike
    fail "No more bikes you fool!" unless @dock_arr.length >= 1
    @dock_arr.pop
  end

  def dock(bike)

    if @dock_arr.length >= 20
      fail 'No more room for bikes. Have already got 20'
    else
      @dock_arr << bike
    end
  end
end
