class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_reader :capacity

  def initialize(x = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = x
  end

  def release_bike
    @bikes.pop if !empty?
  end

  def dock_bike(bike)
    @bikes << bike if !full?
  end

  def full?
    raise ArgumentError, "Bikes Full!", caller if @bikes.count >= @capacity
  end

  def empty?
    raise ArgumentError, "No Bikes!", caller if @bikes.count == 0
  end

  private :full?, :empty?

end
