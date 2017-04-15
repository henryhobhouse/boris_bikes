require 'docking_station'
require 'bike'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it 'allows a new DockingStation instance to receive a bike' do
    is_expected.to respond_to :dock_bike
  end

  it 'docks a bike' do
    a = DockingStation.new
    b = Bike.new
    a.dock_bike(b)
    expect(a.bikes == [b]).to eq true
  end

  it 'tests whether or not a member of the public can can see that a bike has been docked' do
    a = DockingStation.new
    b = Bike.new
    a.dock_bike(b)
    expect(a.bikes).to eq [b]
  end

  it 'should raise an error if docking station is empty' do
    expect {subject.release_bike}.to raise_error "No Bikes!"
  end

  it 'should set capacity variable to 20 as default' do
    expect(subject.capacity).to eq 20
  end

  it 'should change capacity varaible to argument passed to the clase' do
    a = DockingStation.new 15
    expect(a.capacity).to eq 15
  end

  it 'should raise an error when docking station is full using capacity variable' do
  ds = DockingStation.new
  ds.capacity.times { ds.dock_bike(Bike.new) }
  expect {ds.dock_bike(Bike.new)}.to raise_error "Bikes Full!"
  end
end
