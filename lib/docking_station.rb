class DockingStation

  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def test_constant
    DEFAULT_CAPACITY
  end

  def initialize
    @bikes = []
  end

  def release_bike
    @bikes.pop if !empty?
  end

  def dock_bike(bike)
    @bikes << bike if !full?
  end

  def full?
    raise ArgumentError, "Bikes Full!", caller if @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    raise ArgumentError, "No Bikes!", caller if @bikes.count == 0
  end

  private :full?, :empty?

end
