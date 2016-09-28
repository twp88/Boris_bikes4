require './lib/docking_station'
require './lib/bike'

describe 'docking_station' do
  station = DockingStation.new
  bike = Bike.new

  it 'respond to release bike' do
    expect(station).to respond_to(:release_bike)
  end
  it 'gives bike' do
    expect(station.release_bike).to be_kind_of(Bike)
  end
  it 'docks a bike' do
    expect(station).to respond_to(:dock).with(1).argument
  end
  it 'showed docked bikes' do
    station.dock(bike)
    expect(station.bike).to be(bike)
  end
end
