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
    expect(@capacity).to be(20)
  end


end

=begin
  describe 'already got a bike test' do
  station = DockingStation.new
  bike = Bike.new
  station.dock(bike)
  bike2 = Bike.new
    it 'cant dock a bike with a bike'  do
      expect{station.dock(:bike2)}.to raise_error("already got a bike")
    end
  end
=end

describe 'Cant accept anymore bikes than 20' do
  station = DockingStation.new(40)
  42.times {station.dock(Bike.new)}
  it 'fails cos there are more than 20' do

    expect{station.dock(Bike.new)}.to raise_error('No more room for bikes. Have already got 20')
  end
end
end
