require 'boris-bikes'

describe DockingStation do
  ## The class 'DockingStation' should respond to the command to release a bike, using release_bike
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    ## (potential confusion) create a new variable 'bike' that is equal
    ## to the return value of 'release_bike' method on the new instance of the
    ## original class
    ## e.g. bike = DockingStation.new.release_bike
    bike = subject.release_bike
    ## we should expect that the variable 'bike' should return 'true' when
    ## we call the method 'be_working' on it
    expect(bike).to be_working
  end
end
