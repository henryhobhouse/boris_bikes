class DockingStation

  attr_reader :bike

  def release_bike
    @bike
  end

  def dock_bike(x)
    @bike = x
  end

end

##

class Bike

  def working?
    true
  end

end
