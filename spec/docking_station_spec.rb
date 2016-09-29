require './lib/docking_station'
require './lib/bike'

describe 'docking_station' do
  let(:station) {DockingStation.new} #optional, but is apparently better practice for instantiation

  context 'Empty Docking Station' do #context - the same thing as describe, just a convention, see link
    it 'respond to release bike' do
      expect(station).to respond_to(:release_bike)
    end

    it 'docks a bike' do
      expect(station).to respond_to(:dock).with(1).argument
    end


    it "doesn't release new bikes when no bikes" do
      expect{station.release_bike}.to raise_error("No more bikes you fool!")
    end
  end

  context 'Working bike docking station functions' do
    let(:bike) {Bike.new}

    it 'gives bike' do
      station.dock(bike) #turned out these were "bleeding" into the other test, so repeating is the only way I found to make things work :P

      expect(station.release_bike).to be_kind_of(Bike)

    end

    it 'showed docked bikes' do
      station.dock(bike)
      expect(station.bike).to be(bike)
end

  describe 'already got a bike test' do
  station = DockingStation.new
  bike = Bike.new
  station.dock(bike)
  bike2 = Bike.new
    it 'cant dock a bike with a bike'  do

      expect{station.dock(:bike2)}.to raise_error("already got a bike")
    end
  end
end

end
