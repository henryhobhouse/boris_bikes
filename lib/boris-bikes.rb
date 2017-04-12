class DockingStation
  def release_bike
    Bike.new
  end
end

class Bike
  def working?
  end
  def be_working
    true
  end
end
