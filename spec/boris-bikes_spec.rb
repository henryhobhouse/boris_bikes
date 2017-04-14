require 'boris-bikes'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike.working?).to(eq(true))
  end

  it 'allows a new DockingStation instance to receive a bike' do
    is_expected.to respond_to :dock_bike
  end

  it 'docks a bike' do
    a = DockingStation.new
    b = Bike.new
    a.dock_bike(b)
    expect(a.bike == b).to eq true
  end

  it 'tests whether or not a member of the public can can see that a bike has been docked' do
    a = DockingStation.new
    b = Bike.new
    a.dock_bike(b)
    expect(a.bike).to eq b
  end

end
