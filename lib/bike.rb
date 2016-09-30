class Bike

attr_reader :works, :working
  def initialize
    @works = true
  end

  def working(status=true)
    @works = status
  end
end
