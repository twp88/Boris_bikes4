class DockingStation
  attr_reader :bike, :dock_arr, :capacity
  DEFAULT_CAPACITY = 20


  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @dock_arr = []

  end

  def release_bike
    fail "No more bikes you fool!" unless empty
    # @dock_arr.each {|bike| if @works == true}
    # "Your bike doesn't work, choose another one"
    @dock_arr.pop
  end

  def dock(bike)
    fail "No more room for bikes. Already full with #{@capacity} bikes" if full
    @dock_arr << bike
  end
=begin
  def broken(user_broken)
    @works = user_broken if user_broken != @works
  end
=end
private
#attr_reader :bike, :dock_arr, :capacity
  def full
    @dock_arr.length >= @capacity
  end

  def empty
    @dock_arr.length >= 1
  end
end
