require 'boris-bikes'

describe Bike do
  it do bike = Bike.new
    expect(bike).to respond_to :working?
  end
end
