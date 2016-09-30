class Bike

attr_reader :works, :working

  def working(status=true)
    @works = status
  end
end
