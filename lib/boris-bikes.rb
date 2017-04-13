class DockingStation

  attr_reader :bike

  def bike
    @bike
  end

  def bike=(str)
    @bike = str
  end

  def release_bike
    Bike.new
  end

  def dock_bike
    Bike.new
  end

end

##

class Bike

  def working?
    true
  end

end
