require 'bike.rb'

describe Bike do
  before(:each) do
  @bike = Bike.new
  end

  context "bike is broken?" do
    it "checks status of the bike" do
      expect(@bike.working).to eq(false)
    end
  end
end
