require 'boris-bikes'



describe DockingStation do
  it do
    dockingstation = DockingStation.new
    expect(dockingstation).to respond_to :release_bike
  end
end
