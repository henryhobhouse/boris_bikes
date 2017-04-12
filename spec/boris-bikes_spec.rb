require 'boris-bikes'

describe DockingStation do
  ## Testing the existance of release_bike
  ## describe ".release_bike" do
  ##  it { respond_to :release_bike }
  ## end

  ## Writing a test for 2 things
  describe "both getting the bike and asking if it works" do
    test = Bike.new
    it { expect test.working? }
  end
end

## describe Bike do
  ## Testing whether or not a bike is working
  ## describe ".working?" do
    ## it { respond_to .working? }
  ## end
## end
