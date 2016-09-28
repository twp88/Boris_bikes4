require 'bike.rb'

describe Bike do
  it 'responds to working?' do
    bike1 = Bike.new
    expect(bike1).to respond_to(:working?)

  end
end
