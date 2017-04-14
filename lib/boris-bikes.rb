class DockingStation

  attr_reader :bike

  def release_bike
    if @bike == nil
      raise ArgumentError, "No Bikes!", caller
    end
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
