require './lib/docking_station'
require './lib/bike'

describe 'docking_station' do
  before(:each) do
    @station = DockingStation.new(20)
    @bike = double(:bike)

    end#

  context 'Empty Docking Station' do
    it {expect(@station).to respond_to(:release_bike)}
    it {expect(@station).to respond_to(:dock).with(1).argument}
    it {expect{@station.release_bike}.to raise_error("No more bikes you fool!")}

  end

  context 'Working bike docking station functions' do
    it 'gives bike' do
      @station.dock(@bike) #TESTING MORE THAN ONE CLASS
      expect(@station.release_bike).to be_kind_of(double(:bike)) #TESTING MORE THAN ONE CLASS
    end

    it 'showed docked bikes' do
      @station.dock(@bike) #TESTING MORE THAN ONE CLASS
      expect(@station.dock_arr).to eq([@bike]) #TESTING MORE THAN ONE CLASS
    end


  it 'checks user set capacity' do
    expect(@station.capacity).to eq(20)
  end


end

context "Cant accept anymore bikes" do
  station = DockingStation.new(40)
  it "fails cos there are too many bikes}" do

    40.times {station.dock(double(:bike))} #TESTING MORE THAN ONE CLASS

    expect{station.dock(double(:bike))}.to raise_error("No more room for bikes. Already full with #{station.capacity} bikes") #TESTING MORE THAN ONE CLASS
  end
end


context "Release bike or not" do
  it "realeases the bike if it works, but not if it doesn't " do
    @bike.working(false)
    @station.dock(@bike) #TESTING MORE THAN ONE CLASS
    expect{@station.release_bike}.to raise_error("Your bike doesn't work.")
  end
end

end
