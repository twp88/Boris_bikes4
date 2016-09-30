require 'bike.rb'

describe Bike do
  before(:each) do
  @bike = Bike.new
  end

  context "bike is broken?" do
    it "checks status of the bike" do
      expect(@bike.works).to eq(true)
    end
  end

  context "bike is broken?" do
  it "checks status of the bike has been changed" do
    @bike.working(false)
    expect(@bike.works).to eq(false)
    end
  end  
end
