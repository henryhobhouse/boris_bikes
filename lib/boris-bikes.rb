class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.count == 0
      raise ArgumentError, "No Bikes!", caller
    end
    @bikes.pop
  end

  def dock_bike(x)
    if @bikes.count == 20
      raise ArgumentError, "Bikes Full!", caller
    end
    @bikes << x
  end

end

##

class Bike

  def working?
    true
  end

end
