require './lib/docking_station'
require './lib/bike'

describe 'docking_station' do
  before(:each) do
    @station = DockingStation.new(20)
    @bike = Bike.new

    end#

  context 'Empty Docking Station' do #context - the same thing as describe, just a convention, see link
    it {expect(@station).to respond_to(:release_bike)}
    it {expect(@station).to respond_to(:dock).with(1).argument}
    it {expect{@station.release_bike}.to raise_error("No more bikes you fool!")}

  end

  context 'Working bike docking station functions' do
    it 'gives bike' do
      @station.dock(@bike) #turned out these were "bleeding" into the other test, so repeating is the only way I found to make things work :P
      expect(@station.release_bike).to be_kind_of(Bike)
    end

    it 'showed docked bikes' do
      @station.dock(@bike)
      expect(@station.dock_arr).to eq([@bike])
    end


  it 'checks user set capacity' do
    expect(@station.capacity).to eq(20)
  end


end

context "Cant accept anymore bikes" do
  station = DockingStation.new(40)
  it "fails cos there are too many bikes}" do

    40.times {station.dock(Bike.new)}

    expect{station.dock(Bike.new)}.to raise_error("No more room for bikes. Already full with #{station.capacity} bikes")
  end
end

context "bike is broken?"
it "checks status of the bike" do
  expect(@bike.working).to eq(false)
end

end
