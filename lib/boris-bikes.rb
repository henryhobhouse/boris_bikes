class DockingStation
  def initialize
    @bike = Bike.new
  end

  def release_bike
    Bike.new
  end
end

class Bike
  def working?
    true
  end
end
